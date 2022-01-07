; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_undel_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_undel_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@dlt_line = common dso_local global %struct.TYPE_5__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@curr_line = common dso_local global %struct.TYPE_4__* null, align 8
@position = common dso_local global i32 0, align 4
@point = common dso_local global i8* null, align 8
@d_line = common dso_local global i8* null, align 8
@scr_vert = common dso_local global i32 0, align 4
@scr_horz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @undel_line() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dlt_line, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %56

9:                                                ; preds = %0
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @insert_line(i32 %10)
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i32 @left(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dlt_line, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curr_line, align 8
  %18 = load i32, i32* @position, align 4
  %19 = call i8* @resiz_line(i32 %16, %struct.TYPE_4__* %17, i32 %18)
  store i8* %19, i8** @point, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dlt_line, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curr_line, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i8*, i8** @point, align 8
  store i8* %28, i8** %1, align 8
  %29 = load i8*, i8** @d_line, align 8
  store i8* %29, i8** %2, align 8
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %36, %9
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dlt_line, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  %39 = load i8*, i8** %2, align 8
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %1, align 8
  store i8 %40, i8* %41, align 1
  %42 = load i8*, i8** %1, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %1, align 8
  %44 = load i8*, i8** %2, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %2, align 8
  br label %30

46:                                               ; preds = %30
  %47 = load i8*, i8** %1, align 8
  store i8 0, i8* %47, align 1
  %48 = load i32, i32* @scr_vert, align 4
  %49 = load i32, i32* @scr_horz, align 4
  %50 = load i8*, i8** @point, align 8
  %51 = load i32, i32* @position, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curr_line, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @draw_line(i32 %48, i32 %49, i8* %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %46, %8
  ret void
}

declare dso_local i32 @insert_line(i32) #1

declare dso_local i32 @left(i32) #1

declare dso_local i8* @resiz_line(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @draw_line(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
