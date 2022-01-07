; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_init_alias_once.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_init_alias_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@static_reg_base_value = common dso_local global i32* null, align 8
@stack_pointer_rtx = common dso_local global i32 0, align 4
@STACK_POINTER_REGNUM = common dso_local global i64 0, align 8
@arg_pointer_rtx = common dso_local global i32 0, align 4
@ARG_POINTER_REGNUM = common dso_local global i64 0, align 8
@frame_pointer_rtx = common dso_local global i32 0, align 4
@FRAME_POINTER_REGNUM = common dso_local global i64 0, align 8
@HARD_FRAME_POINTER_REGNUM = common dso_local global i64 0, align 8
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_alias_once() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %27, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @OUTGOING_REGNO(i32 %7)
  %9 = call i64 @FUNCTION_ARG_REGNO_P(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @Pmode, align 4
  %14 = call i64 @HARD_REGNO_MODE_OK(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i32, i32* @VOIDmode, align 4
  %18 = load i32, i32* @Pmode, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @gen_rtx_REG(i32 %18, i32 %19)
  %21 = call i32 @gen_rtx_ADDRESS(i32 %17, i32 %20)
  %22 = load i32*, i32** @static_reg_base_value, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %21, i32* %25, align 4
  br label %26

26:                                               ; preds = %16, %11, %6
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %2

30:                                               ; preds = %2
  %31 = load i32, i32* @Pmode, align 4
  %32 = load i32, i32* @stack_pointer_rtx, align 4
  %33 = call i32 @gen_rtx_ADDRESS(i32 %31, i32 %32)
  %34 = load i32*, i32** @static_reg_base_value, align 8
  %35 = load i64, i64* @STACK_POINTER_REGNUM, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @Pmode, align 4
  %38 = load i32, i32* @arg_pointer_rtx, align 4
  %39 = call i32 @gen_rtx_ADDRESS(i32 %37, i32 %38)
  %40 = load i32*, i32** @static_reg_base_value, align 8
  %41 = load i64, i64* @ARG_POINTER_REGNUM, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @Pmode, align 4
  %44 = load i32, i32* @frame_pointer_rtx, align 4
  %45 = call i32 @gen_rtx_ADDRESS(i32 %43, i32 %44)
  %46 = load i32*, i32** @static_reg_base_value, align 8
  %47 = load i64, i64* @FRAME_POINTER_REGNUM, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %45, i32* %48, align 4
  ret void
}

declare dso_local i64 @FUNCTION_ARG_REGNO_P(i32) #1

declare dso_local i32 @OUTGOING_REGNO(i32) #1

declare dso_local i64 @HARD_REGNO_MODE_OK(i32, i32) #1

declare dso_local i32 @gen_rtx_ADDRESS(i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
