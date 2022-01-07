; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_compute_save_reg_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_compute_save_reg_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@regs_ever_live = common dso_local global i64* null, align 8
@call_used_regs = common dso_local global i32* null, align 8
@flag_pic = common dso_local global i64 0, align 8
@TARGET_SINGLE_PIC_BASE = common dso_local global i32 0, align 4
@arm_pic_register = common dso_local global i64 0, align 8
@INVALID_REGNUM = common dso_local global i64 0, align 8
@current_function_uses_pic_offset_table = common dso_local global i64 0, align 8
@PIC_OFFSET_TABLE_REGNUM = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i32 0, align 4
@CALLER_INTERWORKING_SLOT_SIZE = common dso_local global i64 0, align 8
@ARM_HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@LR_REGNUM = common dso_local global i32 0, align 4
@TARGET_BACKTRACE = common dso_local global i64 0, align 8
@LAST_LO_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @thumb_compute_save_reg_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @thumb_compute_save_reg_mask() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %27, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp ult i32 %4, 12
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = load i64*, i64** @regs_ever_live, align 8
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %6
  %14 = load i32*, i32** @call_used_regs, align 8
  %15 = load i32, i32* %2, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %2, align 4
  %22 = shl i32 1, %21
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %1, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %1, align 8
  br label %26

26:                                               ; preds = %20, %13, %6
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %2, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %3

30:                                               ; preds = %3
  %31 = load i64, i64* @flag_pic, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i32, i32* @TARGET_SINGLE_PIC_BASE, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @arm_pic_register, align 8
  %38 = load i64, i64* @INVALID_REGNUM, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i64, i64* @current_function_uses_pic_offset_table, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* @PIC_OFFSET_TABLE_REGNUM, align 4
  %45 = shl i32 1, %44
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %1, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %1, align 8
  br label %49

49:                                               ; preds = %43, %40, %36, %33, %30
  %50 = load i32, i32* @frame_pointer_needed, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* @CALLER_INTERWORKING_SLOT_SIZE, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* @ARM_HARD_FRAME_POINTER_REGNUM, align 4
  %57 = shl i32 1, %56
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %1, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %1, align 8
  br label %61

61:                                               ; preds = %55, %52, %49
  %62 = load i64, i64* %1, align 8
  %63 = and i64 %62, 255
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = call i64 (...) @thumb_force_lr_save()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65, %61
  %69 = load i32, i32* @LR_REGNUM, align 4
  %70 = shl i32 1, %69
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %1, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %1, align 8
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i64, i64* %1, align 8
  %76 = and i64 %75, 255
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %74
  %79 = load i64, i64* %1, align 8
  %80 = and i64 %79, 3840
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* @TARGET_BACKTRACE, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %82, %78
  %86 = load i32, i32* @LAST_LO_REGNUM, align 4
  %87 = shl i32 1, %86
  %88 = call i32 @thumb_find_work_register(i32 %87)
  store i32 %88, i32* %2, align 4
  %89 = load i32*, i32** @call_used_regs, align 8
  %90 = load i32, i32* %2, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %2, align 4
  %97 = shl i32 1, %96
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %1, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %1, align 8
  br label %101

101:                                              ; preds = %95, %85
  br label %102

102:                                              ; preds = %101, %82, %74
  %103 = load i64, i64* %1, align 8
  ret i64 %103
}

declare dso_local i64 @thumb_force_lr_save(...) #1

declare dso_local i32 @thumb_find_work_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
