; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"sindex\00", align 1
@base = common dso_local global i32* null, align 8
@nstates = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"rindex\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"gindex\00", align 1
@PER_STATE = common dso_local global i32 0, align 4
@nvectors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_base() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @base, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @start_int_table(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %5)
  store i32 10, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %7

7:                                                ; preds = %26, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @nstates, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp sge i32 %12, 10
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (...) @output_newline()
  store i32 1, i32* %2, align 4
  br label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = load i32*, i32** @base, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @output_int(i32 %24)
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %7

29:                                               ; preds = %7
  %30 = call i32 (...) @end_table()
  %31 = load i32*, i32** @base, align 8
  %32 = load i32, i32* @nstates, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @start_int_table(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 10, i32* %2, align 4
  %37 = load i32, i32* @nstates, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %59, %29
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @nstates, align 4
  %42 = mul nsw i32 2, %41
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load i32, i32* %2, align 4
  %46 = icmp sge i32 %45, 10
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (...) @output_newline()
  store i32 1, i32* %2, align 4
  br label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %47
  %53 = load i32*, i32** @base, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @output_int(i32 %57)
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %39

62:                                               ; preds = %39
  %63 = call i32 (...) @end_table()
  %64 = load i32*, i32** @base, align 8
  %65 = load i32, i32* @PER_STATE, align 4
  %66 = load i32, i32* @nstates, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @start_int_table(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  store i32 10, i32* %2, align 4
  %72 = load i32, i32* @PER_STATE, align 4
  %73 = load i32, i32* @nstates, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %1, align 4
  br label %76

76:                                               ; preds = %96, %62
  %77 = load i32, i32* %1, align 4
  %78 = load i32, i32* @nvectors, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %76
  %82 = load i32, i32* %2, align 4
  %83 = icmp sge i32 %82, 10
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 (...) @output_newline()
  store i32 1, i32* %2, align 4
  br label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %2, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %84
  %90 = load i32*, i32** @base, align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @output_int(i32 %94)
  br label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %1, align 4
  br label %76

99:                                               ; preds = %76
  %100 = call i32 (...) @end_table()
  %101 = load i32*, i32** @base, align 8
  %102 = call i32 @FREE(i32* %101)
  ret void
}

declare dso_local i32 @start_int_table(i8*, i32) #1

declare dso_local i32 @output_newline(...) #1

declare dso_local i32 @output_int(i32) #1

declare dso_local i32 @end_table(...) #1

declare dso_local i32 @FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
