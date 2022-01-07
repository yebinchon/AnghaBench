; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_gen_bu_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_gen_bu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reject = common dso_local global i64 0, align 8
@num_backing_up = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"case 0: /* must back up */\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"/* undo the effects of YY_DO_BEFORE_ACTION */\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"*yy_cp = YY_G(yy_hold_char);\00", align 1
@fullspd = common dso_local global i64 0, align 8
@fulltbl = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"yy_cp = YY_G(yy_last_accepting_cpos) + 1;\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"yy_cp = YY_G(yy_last_accepting_cpos);\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"yy_current_state = YY_G(yy_last_accepting_state);\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"goto yy_find_action;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_bu_action() #0 {
  %1 = load i64, i64* @reject, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @num_backing_up, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %0
  br label %26

7:                                                ; preds = %3
  %8 = call i32 @set_indent(i32 3)
  %9 = call i32 @indent_puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @indent_puts(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @indent_puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i64, i64* @fullspd, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = load i64, i64* @fulltbl, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %7
  %18 = call i32 @indent_puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %21

19:                                               ; preds = %14
  %20 = call i32 @indent_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %17
  %22 = call i32 @indent_puts(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %23 = call i32 @indent_puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %24 = call i32 @outc(i8 signext 10)
  %25 = call i32 @set_indent(i32 0)
  br label %26

26:                                               ; preds = %21, %6
  ret void
}

declare dso_local i32 @set_indent(i32) #1

declare dso_local i32 @indent_puts(i8*) #1

declare dso_local i32 @outc(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
