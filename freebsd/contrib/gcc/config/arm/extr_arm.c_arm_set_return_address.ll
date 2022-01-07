; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_set_return_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_set_return_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@LR_REGNUM = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i64 0, align 8
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_set_return_address(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = call i64 (...) @arm_compute_save_reg_mask()
  store i64 %9, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load i32, i32* @LR_REGNUM, align 4
  %12 = shl i32 1, %11
  %13 = sext i32 %12 to i64
  %14 = and i64 %10, %13
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @Pmode, align 4
  %18 = load i32, i32* @LR_REGNUM, align 4
  %19 = call i32 @gen_rtx_REG(i32 %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @emit_move_insn(i32 %19, i32 %20)
  br label %63

22:                                               ; preds = %2
  %23 = load i64, i64* @frame_pointer_needed, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @hard_frame_pointer_rtx, align 4
  %27 = call i32 @plus_constant(i32 %26, i32 -4)
  store i32 %27, i32* %7, align 4
  br label %57

28:                                               ; preds = %22
  %29 = call %struct.TYPE_3__* (...) @arm_get_frame_offsets()
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %5, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 4
  %37 = sub nsw i32 %32, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp sge i32 %38, 4096
  br i1 %39, label %40, label %51

40:                                               ; preds = %28
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @stack_pointer_rtx, align 4
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, -4096
  %45 = call i32 @GEN_INT(i32 %44)
  %46 = call i32 @gen_addsi3(i32 %41, i32 %42, i32 %45)
  %47 = call i32 @emit_insn(i32 %46)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 4095
  store i32 %50, i32* %6, align 4
  br label %53

51:                                               ; preds = %28
  %52 = load i32, i32* @stack_pointer_rtx, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %40
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @plus_constant(i32 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %25
  %58 = load i32, i32* @Pmode, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @gen_frame_mem(i32 %58, i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @emit_move_insn(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %16
  ret void
}

declare dso_local i64 @arm_compute_save_reg_mask(...) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local %struct.TYPE_3__* @arm_get_frame_offsets(...) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_addsi3(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_frame_mem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
