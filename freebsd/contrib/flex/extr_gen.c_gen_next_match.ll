; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_gen_next_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_gen_next_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@useecs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"yy_ec[YY_SC_TO_UI(*yy_cp)] \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"YY_SC_TO_UI(*yy_cp)\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"yy_ec[YY_SC_TO_UI(*++yy_cp)] \00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"YY_SC_TO_UI(*++yy_cp)\00", align 1
@fulltbl = common dso_local global i64 0, align 8
@gentables = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [66 x i8] c"while ( (yy_current_state = yy_nxt[yy_current_state][ %s ]) > 0 )\00", align 1
@.str.5 = private unnamed_addr constant [80 x i8] c"while ( (yy_current_state = yy_nxt[yy_current_state*YY_NXT_LOLEN +  %s ]) > 0 )\00", align 1
@num_backing_up = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"++yy_cp;\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"yy_current_state = -yy_current_state;\00", align 1
@fullspd = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [46 x i8] c"yyconst struct yy_trans_info *yy_trans_info;\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"YY_CHAR yy_c;\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"for ( yy_c = %s;\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"      (yy_trans_info = &yy_current_state[(unsigned int) yy_c])->\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"yy_verify == yy_c;\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"      yy_c = %s )\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"yy_current_state += yy_trans_info->yy_nxt;\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@interactive = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [44 x i8] c"while ( yy_base[yy_current_state] != %d );\0A\00", align 1
@jambase = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [35 x i8] c"while ( yy_current_state != %d );\0A\00", align 1
@jamstate = common dso_local global i32 0, align 4
@reject = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [38 x i8] c"yy_cp = YY_G(yy_last_accepting_cpos);\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"yy_current_state = YY_G(yy_last_accepting_state);\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_next_match() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i64, i64* @useecs, align 8
  %4 = icmp ne i64 %3, 0
  %5 = zext i1 %4 to i64
  %6 = select i1 %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)
  store i8* %6, i8** %1, align 8
  %7 = load i64, i64* @useecs, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0)
  store i8* %10, i8** %2, align 8
  %11 = load i64, i64* @fulltbl, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %0
  %14 = load i64, i64* @gentables, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 @indent_put2s(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  br label %22

19:                                               ; preds = %13
  %20 = load i8*, i8** %1, align 8
  %21 = call i32 @indent_put2s(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = call i32 (...) @indent_up()
  %24 = load i64, i64* @num_backing_up, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %28 = call i32 (...) @gen_backing_up()
  %29 = call i32 @outc(i8 signext 10)
  br label %30

30:                                               ; preds = %26, %22
  %31 = call i32 @indent_puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %32 = load i64, i64* @num_backing_up, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = call i32 (...) @indent_down()
  %38 = call i32 @outc(i8 signext 10)
  %39 = call i32 @indent_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %97

40:                                               ; preds = %0
  %41 = load i64, i64* @fullspd, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  %44 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %45 = call i32 @indent_puts(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  %46 = call i32 @indent_puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %47 = load i8*, i8** %1, align 8
  %48 = call i32 @indent_put2s(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %47)
  %49 = call i32 @indent_puts(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0))
  %50 = call i32 @indent_puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 @indent_put2s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* %51)
  %53 = call i32 (...) @indent_up()
  %54 = load i64, i64* @num_backing_up, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %43
  %59 = call i32 @indent_puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  %60 = load i64, i64* @num_backing_up, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = call i32 @outc(i8 signext 10)
  %64 = call i32 (...) @gen_backing_up()
  %65 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %58
  %67 = call i32 (...) @indent_down()
  %68 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %96

69:                                               ; preds = %40
  %70 = call i32 @indent_puts(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %71 = call i32 (...) @indent_up()
  %72 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %73 = call i32 @gen_next_state(i32 0)
  %74 = call i32 @indent_puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %75 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %76 = call i32 (...) @indent_down()
  %77 = call i32 (...) @do_indent()
  %78 = load i64, i64* @interactive, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load i32, i32* @jambase, align 4
  %82 = call i32 @out_dec(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 %81)
  br label %86

83:                                               ; preds = %69
  %84 = load i32, i32* @jamstate, align 4
  %85 = call i32 @out_dec(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* @reject, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* @interactive, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = call i32 @indent_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0))
  %94 = call i32 @indent_puts(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %89, %86
  br label %96

96:                                               ; preds = %95, %66
  br label %97

97:                                               ; preds = %96, %36
  ret void
}

declare dso_local i32 @indent_put2s(i8*, i8*) #1

declare dso_local i32 @indent_up(...) #1

declare dso_local i32 @indent_puts(i8*) #1

declare dso_local i32 @gen_backing_up(...) #1

declare dso_local i32 @outc(i8 signext) #1

declare dso_local i32 @indent_down(...) #1

declare dso_local i32 @gen_next_state(i32) #1

declare dso_local i32 @do_indent(...) #1

declare dso_local i32 @out_dec(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
