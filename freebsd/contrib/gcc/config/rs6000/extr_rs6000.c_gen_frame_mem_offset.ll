; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_gen_frame_mem_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_gen_frame_mem_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_SPE_ABI = common dso_local global i64 0, align 8
@TARGET_E500_DOUBLE = common dso_local global i64 0, align 8
@DFmode = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@FIXED_SCRATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @gen_frame_mem_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_frame_mem_offset(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @GEN_INT(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* @TARGET_SPE_ABI, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @SPE_VECTOR_MODE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13, %3
  %18 = load i64, i64* @TARGET_E500_DOUBLE, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @DFmode, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20, %13
  %25 = load i32, i32* @Pmode, align 4
  %26 = load i32, i32* @FIXED_SCRATCH, align 4
  %27 = call i32 @gen_rtx_REG(i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @emit_move_insn(i32 %28, i32 %29)
  br label %33

31:                                               ; preds = %20, %17
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @Pmode, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @gen_rtx_PLUS(i32 %35, i32 %36, i32 %37)
  %39 = call i32 @gen_frame_mem(i32 %34, i32 %38)
  ret i32 %39
}

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i64 @SPE_VECTOR_MODE(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_frame_mem(i32, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
