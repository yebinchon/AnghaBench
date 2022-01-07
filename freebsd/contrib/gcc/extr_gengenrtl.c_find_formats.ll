; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengenrtl.c_find_formats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengenrtl.c_find_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@NUM_RTX_CODE = common dso_local global i32 0, align 4
@defs = common dso_local global %struct.TYPE_2__* null, align 8
@formats = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @find_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_formats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %52, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @NUM_RTX_CODE, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %55

7:                                                ; preds = %3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @defs, align 8
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @special_format(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  br label %52

17:                                               ; preds = %7
  %18 = load i8**, i8*** @formats, align 8
  store i8** %18, i8*** %2, align 8
  br label %19

19:                                               ; preds = %36, %17
  %20 = load i8**, i8*** %2, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i8**, i8*** %2, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @defs, align 8
  %27 = load i32, i32* %1, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcmp(i8* %25, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %39

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i8**, i8*** %2, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %38, i8*** %2, align 8
  br label %19

39:                                               ; preds = %34, %19
  %40 = load i8**, i8*** %2, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @defs, align 8
  %45 = load i32, i32* %1, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8**, i8*** %2, align 8
  store i8* %49, i8** %50, align 8
  br label %51

51:                                               ; preds = %43, %39
  br label %52

52:                                               ; preds = %51, %16
  %53 = load i32, i32* %1, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %3

55:                                               ; preds = %3
  ret void
}

declare dso_local i64 @special_format(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
