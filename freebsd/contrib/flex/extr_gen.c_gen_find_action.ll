; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_gen_find_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_gen_find_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fullspd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"yy_act = yy_current_state[-1].yy_nxt;\00", align 1
@fulltbl = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"yy_act = yy_accept[yy_current_state];\00", align 1
@reject = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"yy_current_state = *--YY_G(yy_state_ptr);\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"YY_G(yy_lp) = yy_accept[yy_current_state];\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"goto find_rule; /* avoid `defined but not used' warning */\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"find_rule: /* we branch to this label when backing up */\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"for ( ; ; ) /* until we find what rule we matched */\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"if ( YY_G(yy_lp) && YY_G(yy_lp) < yy_accept[yy_current_state + 1] )\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"yy_act = yy_acclist[YY_G(yy_lp)];\00", align 1
@variable_trailing_context_rules = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"if ( yy_act & YY_TRAILING_HEAD_MASK ||\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"     YY_G(yy_looking_for_trail_begin) )\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"if ( yy_act == YY_G(yy_looking_for_trail_begin) )\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"YY_G(yy_looking_for_trail_begin) = 0;\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"yy_act &= ~YY_TRAILING_HEAD_MASK;\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"break;\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"else if ( yy_act & YY_TRAILING_MASK )\00", align 1
@.str.18 = private unnamed_addr constant [63 x i8] c"YY_G(yy_looking_for_trail_begin) = yy_act & ~YY_TRAILING_MASK;\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"YY_G(yy_looking_for_trail_begin) |= YY_TRAILING_HEAD_MASK;\00", align 1
@real_reject = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [29 x i8] c"YY_G(yy_full_match) = yy_cp;\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"YY_G(yy_full_state) = YY_G(yy_state_ptr);\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"YY_G(yy_full_lp) = YY_G(yy_lp);\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"++YY_G(yy_lp);\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"goto find_rule;\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"--yy_cp;\00", align 1
@interactive = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [19 x i8] c"if ( yy_act == 0 )\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"{ /* have to back up */\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"yy_cp = YY_G(yy_last_accepting_cpos);\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"yy_current_state = YY_G(yy_last_accepting_state);\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_find_action() #0 {
  %1 = load i64, i64* @fullspd, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @indent_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %101

5:                                                ; preds = %0
  %6 = load i64, i64* @fulltbl, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call i32 @indent_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %100

10:                                               ; preds = %5
  %11 = load i64, i64* @reject, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %82

13:                                               ; preds = %10
  %14 = call i32 @indent_puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @indent_puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @outn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @outn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %18 = call i32 @indent_puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %19 = call i32 (...) @indent_up()
  %20 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %21 = call i32 @indent_puts(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0))
  %22 = call i32 (...) @indent_up()
  %23 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %24 = call i32 @indent_puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %25 = load i64, i64* @variable_trailing_context_rules, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %13
  %28 = call i32 @indent_puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %29 = call i32 @indent_puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %30 = call i32 (...) @indent_up()
  %31 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %32 = call i32 @indent_puts(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  %33 = call i32 (...) @indent_up()
  %34 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %35 = call i32 @indent_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %36 = call i32 @indent_puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %37 = call i32 @indent_puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %38 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %39 = call i32 (...) @indent_down()
  %40 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %41 = call i32 (...) @indent_down()
  %42 = call i32 @indent_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0))
  %43 = call i32 (...) @indent_up()
  %44 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %45 = call i32 @indent_puts(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.18, i64 0, i64 0))
  %46 = call i32 @indent_puts(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i64 0, i64 0))
  %47 = load i64, i64* @real_reject, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = call i32 @indent_puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %51 = call i32 @indent_puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0))
  %52 = call i32 @indent_puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %27
  %54 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %55 = call i32 (...) @indent_down()
  %56 = call i32 @indent_puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %57 = call i32 (...) @indent_up()
  %58 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %59 = call i32 @indent_puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %60 = call i32 @indent_puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0))
  %61 = call i32 @indent_puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  %62 = call i32 @indent_puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %63 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %64 = call i32 (...) @indent_down()
  %65 = call i32 @indent_puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %66 = call i32 @indent_puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  br label %74

67:                                               ; preds = %13
  %68 = call i32 (...) @indent_up()
  %69 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %70 = call i32 @indent_puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %71 = call i32 @indent_puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %72 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %73 = call i32 (...) @indent_down()
  br label %74

74:                                               ; preds = %67, %53
  %75 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %76 = call i32 (...) @indent_down()
  %77 = call i32 @indent_puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0))
  %78 = call i32 @indent_puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %79 = call i32 @indent_puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %81 = call i32 (...) @indent_down()
  br label %99

82:                                               ; preds = %10
  %83 = call i32 @indent_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i64, i64* @interactive, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load i64, i64* @reject, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %86
  %90 = call i32 @indent_puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  %91 = call i32 (...) @indent_up()
  %92 = call i32 @indent_puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0))
  %93 = call i32 @indent_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0))
  %94 = call i32 @indent_puts(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i64 0, i64 0))
  %95 = call i32 @indent_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %96 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %97 = call i32 (...) @indent_down()
  br label %98

98:                                               ; preds = %89, %86, %82
  br label %99

99:                                               ; preds = %98, %74
  br label %100

100:                                              ; preds = %99, %8
  br label %101

101:                                              ; preds = %100, %3
  ret void
}

declare dso_local i32 @indent_puts(i8*) #1

declare dso_local i32 @outn(i8*) #1

declare dso_local i32 @indent_up(...) #1

declare dso_local i32 @indent_down(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
