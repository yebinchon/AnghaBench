; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_builtin-test.c___cmd_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_builtin-test.c___cmd_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 }

@tests = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"%2d: %-*s:\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\0A--- start ---\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"---- end ----\0A%s:\00", align 1
@stderr = common dso_local global i32 0, align 4
@PERF_COLOR_RED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" FAILED!\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" Ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @__cmd_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmd_test(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %31, %2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (...)*, i32 (...)** %15, align 8
  %17 = icmp ne i32 (...)* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %10
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strlen(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %18
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %10

34:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %85, %51, %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (...)*, i32 (...)** %40, align 8
  %42 = icmp ne i32 (...)* %41, null
  br i1 %42, label %43, label %86

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  store i32 %44, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i8**, i8*** %4, align 8
  %49 = call i32 @perf_test__matches(i32 %46, i32 %47, i8** %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  br label %35

52:                                               ; preds = %43
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %60)
  %62 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (...)*, i32 (...)** %67, align 8
  %69 = call i32 (...) %68()
  store i32 %69, i32* %9, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %52
  %80 = load i32, i32* @stderr, align 4
  %81 = load i32, i32* @PERF_COLOR_RED, align 4
  %82 = call i32 @color_fprintf(i32 %80, i32 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %85

83:                                               ; preds = %52
  %84 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %79
  br label %35

86:                                               ; preds = %35
  ret i32 0
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @perf_test__matches(i32, i32, i8**) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @color_fprintf(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
