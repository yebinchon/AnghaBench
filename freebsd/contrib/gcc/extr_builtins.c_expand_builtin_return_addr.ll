; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_return_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_return_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUILT_IN_RETURN_ADDRESS = common dso_local global i32 0, align 4
@frame_pointer_rtx = common dso_local global i32 0, align 4
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@current_function_accesses_prior_frames = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@BUILT_IN_FRAME_ADDRESS = common dso_local global i32 0, align 4
@INITIAL_FRAME_ADDRESS_RTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @expand_builtin_return_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_return_addr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BUILT_IN_RETURN_ADDRESS, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @frame_pointer_rtx, align 4
  store i32 %15, i32* %7, align 4
  br label %18

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @hard_frame_pointer_rtx, align 4
  store i32 %17, i32* %7, align 4
  store i32 1, i32* @current_function_accesses_prior_frames, align 4
  br label %18

18:                                               ; preds = %16, %14
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* @Pmode, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @memory_address(i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @Pmode, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @gen_frame_mem(i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @copy_to_reg(i32 %30)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @BUILT_IN_FRAME_ADDRESS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %52

41:                                               ; preds = %35
  %42 = load i32, i32* @Pmode, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @Pmode, align 4
  %45 = call i32 @GET_MODE_SIZE(i32 %44)
  %46 = call i32 @plus_constant(i32 %43, i32 %45)
  %47 = call i32 @memory_address(i32 %42, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @Pmode, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @gen_frame_mem(i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %41, %39
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @memory_address(i32, i32) #1

declare dso_local i32 @gen_frame_mem(i32, i32) #1

declare dso_local i32 @copy_to_reg(i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
