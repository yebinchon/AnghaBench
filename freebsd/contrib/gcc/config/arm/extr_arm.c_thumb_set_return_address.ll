; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_set_return_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_set_return_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@VOIDmode = common dso_local global i32 0, align 4
@LR_REGNUM = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i64 0, align 8
@THUMB_HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@SP_REGNUM = common dso_local global i32 0, align 4
@TARGET_BACKTRACE = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thumb_set_return_address(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @VOIDmode, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @gen_rtx_USE(i32 %10, i32 %11)
  %13 = call i32 @emit_insn(i32 %12)
  %14 = call i64 (...) @thumb_compute_save_reg_mask()
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i32, i32* @LR_REGNUM, align 4
  %17 = shl i32 1, %16
  %18 = sext i32 %17 to i64
  %19 = and i64 %15, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %86

21:                                               ; preds = %2
  %22 = call %struct.TYPE_3__* (...) @arm_get_frame_offsets()
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %5, align 8
  %23 = load i64, i64* @frame_pointer_needed, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @THUMB_HARD_FRAME_POINTER_REGNUM, align 4
  store i32 %33, i32* %7, align 4
  br label %43

34:                                               ; preds = %21
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @SP_REGNUM, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %34, %25
  %44 = load i64, i64* @TARGET_BACKTRACE, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 16
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @SImode, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @gen_rtx_REG(i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @SP_REGNUM, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = icmp sge i32 %59, 128
  br i1 %60, label %64, label %61

61:                                               ; preds = %58, %49
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %62, 1024
  br i1 %63, label %64, label %76

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @GEN_INT(i32 %66)
  %68 = call i32 @gen_movsi(i32 %65, i32 %67)
  %69 = call i32 @emit_insn(i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @stack_pointer_rtx, align 4
  %73 = call i32 @gen_addsi3(i32 %70, i32 %71, i32 %72)
  %74 = call i32 @emit_insn(i32 %73)
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %8, align 4
  br label %80

76:                                               ; preds = %61
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @plus_constant(i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %64
  %81 = load i32, i32* @Pmode, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @gen_frame_mem(i32 %81, i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @emit_move_insn(i32 %83, i32 %84)
  br label %92

86:                                               ; preds = %2
  %87 = load i32, i32* @Pmode, align 4
  %88 = load i32, i32* @LR_REGNUM, align 4
  %89 = call i32 @gen_rtx_REG(i32 %87, i32 %88)
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @emit_move_insn(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %86, %80
  ret void
}

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_USE(i32, i32) #1

declare dso_local i64 @thumb_compute_save_reg_mask(...) #1

declare dso_local %struct.TYPE_3__* @arm_get_frame_offsets(...) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @gen_movsi(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_addsi3(i32, i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_frame_mem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
