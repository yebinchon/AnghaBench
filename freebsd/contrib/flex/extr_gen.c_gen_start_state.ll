; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_gen_start_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_gen_start_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fullspd = common dso_local global i64 0, align 8
@bol_needed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"yy_current_state = yy_start_state_list[YY_G(yy_start) + YY_AT_BOL()];\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"yy_current_state = yy_start_state_list[YY_G(yy_start)];\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"yy_current_state = YY_G(yy_start);\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"yy_current_state += YY_AT_BOL();\00", align 1
@reject = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"m4_ifdef( [[M4_YY_USES_REJECT]],\0A[[\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"YY_G(yy_state_ptr) = YY_G(yy_state_buf);\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"*YY_G(yy_state_ptr)++ = yy_current_state;\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"]])\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_start_state() #0 {
  %1 = load i64, i64* @fullspd, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load i64, i64* @bol_needed, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = call i32 @indent_puts(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %10

8:                                                ; preds = %3
  %9 = call i32 @indent_puts(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %6
  br label %26

11:                                               ; preds = %0
  %12 = call i32 @indent_puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i64, i64* @bol_needed, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @indent_puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i64, i64* @reject, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = call i32 @outn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i32 @indent_puts(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %23 = call i32 @indent_puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %24 = call i32 @outn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %17
  br label %26

26:                                               ; preds = %25, %10
  ret void
}

declare dso_local i32 @indent_puts(i8*) #1

declare dso_local i32 @outn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
