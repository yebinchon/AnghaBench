; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_del_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_del_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }

@d_line = common dso_local global i8* null, align 8
@curr_line = common dso_local global %struct.TYPE_4__* null, align 8
@point = common dso_local global i8* null, align 8
@position = common dso_local global i32 0, align 4
@dlt_line = common dso_local global %struct.TYPE_3__* null, align 8
@text_win = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@text_changes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @del_line() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i8*, i8** @d_line, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i8*, i8** @d_line, align 8
  %8 = call i32 @free(i8* %7)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curr_line, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @malloc(i32 %12)
  store i8* %13, i8** @d_line, align 8
  %14 = load i8*, i8** @d_line, align 8
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** @point, align 8
  store i8* %15, i8** %2, align 8
  %16 = load i32, i32* @position, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %23, %9
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curr_line, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load i8*, i8** %2, align 8
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %1, align 8
  store i8 %25, i8* %26, align 1
  %27 = load i8*, i8** %1, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %1, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %17

33:                                               ; preds = %17
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 1, %34
  %36 = load i32, i32* @position, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dlt_line, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %1, align 8
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** @point, align 8
  store i8 0, i8* %41, align 1
  %42 = load i32, i32* @position, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curr_line, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @text_win, align 4
  %46 = call i32 @wclrtoeol(i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curr_line, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %33
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i32 @right(i32 %52)
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @delete(i32 %54)
  br label %56

56:                                               ; preds = %51, %33
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* @text_changes, align 4
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @wclrtoeol(i32) #1

declare dso_local i32 @right(i32) #1

declare dso_local i32 @delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
