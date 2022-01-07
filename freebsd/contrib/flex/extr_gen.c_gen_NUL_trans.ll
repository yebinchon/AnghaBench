; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_gen_NUL_trans.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_gen_NUL_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_backing_up = common dso_local global i64 0, align 8
@reject = common dso_local global i64 0, align 8
@nultrans = common dso_local global i64 0, align 8
@fullspd = common dso_local global i64 0, align 8
@fulltbl = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"char *yy_cp = YY_G(yy_c_buf_p);\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"yy_current_state = yy_NUL_trans[yy_current_state];\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"yy_is_jam = (yy_current_state == 0);\00", align 1
@gentables = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"yy_current_state = yy_nxt[yy_current_state][%d];\0A\00", align 1
@NUL_ec = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"yy_current_state = yy_nxt[yy_current_state*YY_NXT_LOLEN + %d];\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"yy_is_jam = (yy_current_state <= 0);\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"int yy_c = %d;\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"yyconst struct yy_trans_info *yy_trans_info;\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"yy_trans_info = &yy_current_state[(unsigned int) yy_c];\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"yy_current_state += yy_trans_info->yy_nxt;\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"yy_is_jam = (yy_trans_info->yy_verify != yy_c);\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"yy_is_jam = (yy_current_state == %d);\0A\00", align 1
@jamstate = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"if ( ! yy_is_jam )\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"*YY_G(yy_state_ptr)++ = yy_current_state;\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_NUL_trans() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i8], align 16
  %3 = load i64, i64* @num_backing_up, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i64, i64* @reject, align 8
  %7 = icmp ne i64 %6, 0
  %8 = xor i1 %7, true
  br label %9

9:                                                ; preds = %5, %0
  %10 = phi i1 [ false, %0 ], [ %8, %5 ]
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load i64, i64* @nultrans, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i64, i64* @fullspd, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @fulltbl, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %17, %14
  %24 = call i32 @indent_puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20, %9
  %26 = call i32 @outc(i8 signext 10)
  %27 = load i64, i64* @nultrans, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = call i32 @indent_puts(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @indent_puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %77

32:                                               ; preds = %25
  %33 = load i64, i64* @fulltbl, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = call i32 (...) @do_indent()
  %37 = load i64, i64* @gentables, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @NUL_ec, align 4
  %41 = call i32 @out_dec(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @NUL_ec, align 4
  %44 = call i32 @out_dec(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = call i32 @indent_puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %76

47:                                               ; preds = %32
  %48 = load i64, i64* @fullspd, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = call i32 (...) @do_indent()
  %52 = load i32, i32* @NUL_ec, align 4
  %53 = call i32 @out_dec(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  %54 = call i32 @indent_puts(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %55 = call i32 @indent_puts(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  %56 = call i32 @indent_puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %57 = call i32 @indent_puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  br label %75

58:                                               ; preds = %47
  %59 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %60 = load i32, i32* @NUL_ec, align 4
  %61 = call i32 @snprintf(i8* %59, i32 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %63 = call i32 @gen_next_compressed_state(i8* %62)
  %64 = call i32 (...) @do_indent()
  %65 = load i32, i32* @jamstate, align 4
  %66 = call i32 @out_dec(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %65)
  %67 = load i64, i64* @reject, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %58
  %70 = call i32 @indent_puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %71 = call i32 (...) @indent_up()
  %72 = call i32 @indent_puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  %73 = call i32 (...) @indent_down()
  br label %74

74:                                               ; preds = %69, %58
  br label %75

75:                                               ; preds = %74, %50
  br label %76

76:                                               ; preds = %75, %45
  br label %77

77:                                               ; preds = %76, %29
  %78 = load i32, i32* %1, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load i64, i64* @fullspd, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* @fulltbl, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83, %80
  %87 = call i32 @outc(i8 signext 10)
  %88 = call i32 @indent_puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %89 = call i32 (...) @indent_up()
  %90 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %91 = call i32 (...) @gen_backing_up()
  %92 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %93 = call i32 (...) @indent_down()
  br label %94

94:                                               ; preds = %86, %83, %77
  ret void
}

declare dso_local i32 @indent_puts(i8*) #1

declare dso_local i32 @outc(i8 signext) #1

declare dso_local i32 @do_indent(...) #1

declare dso_local i32 @out_dec(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @gen_next_compressed_state(i8*) #1

declare dso_local i32 @indent_up(...) #1

declare dso_local i32 @indent_down(...) #1

declare dso_local i32 @gen_backing_up(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
