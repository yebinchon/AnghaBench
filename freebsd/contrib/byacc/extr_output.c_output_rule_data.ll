; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_rule_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_rule_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lhs\00", align 1
@symbol_value = common dso_local global i32* null, align 8
@start_symbol = common dso_local global i64 0, align 8
@nrules = common dso_local global i32 0, align 4
@rlhs = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@rrhs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_rule_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_rule_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @output_file, align 4
  %4 = call i32 @output_YYINT_typedef(i32 %3)
  %5 = load i32*, i32** @symbol_value, align 8
  %6 = load i64, i64* @start_symbol, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @start_int_table(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 10, i32* %2, align 4
  store i32 3, i32* %1, align 4
  br label %10

10:                                               ; preds = %32, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @nrules, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = icmp sge i32 %15, 10
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @output_newline()
  store i32 1, i32* %2, align 4
  br label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = load i32*, i32** @symbol_value, align 8
  %24 = load i64*, i64** @rlhs, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @output_int(i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %10

35:                                               ; preds = %10
  %36 = call i32 (...) @end_table()
  %37 = call i32 @start_int_table(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 2)
  store i32 10, i32* %2, align 4
  store i32 3, i32* %1, align 4
  br label %38

38:                                               ; preds = %65, %35
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @nrules, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = icmp sge i32 %43, 10
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (...) @output_newline()
  store i32 1, i32* %2, align 4
  br label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %45
  %51 = load i32*, i32** @rrhs, align 8
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** @rrhs, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %56, %61
  %63 = sub nsw i32 %62, 1
  %64 = call i32 @output_int(i32 %63)
  br label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  br label %38

68:                                               ; preds = %38
  %69 = call i32 (...) @end_table()
  ret void
}

declare dso_local i32 @output_YYINT_typedef(i32) #1

declare dso_local i32 @start_int_table(i8*, i32) #1

declare dso_local i32 @output_newline(...) #1

declare dso_local i32 @output_int(i32) #1

declare dso_local i32 @end_table(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
