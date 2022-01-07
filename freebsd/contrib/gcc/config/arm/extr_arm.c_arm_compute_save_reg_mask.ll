; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_compute_save_reg_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_compute_save_reg_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@frame_pointer_needed = common dso_local global i64 0, align 8
@ARM_HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@IP_REGNUM = common dso_local global i32 0, align 4
@LR_REGNUM = common dso_local global i32 0, align 4
@PC_REGNUM = common dso_local global i32 0, align 4
@regs_ever_live = common dso_local global i64* null, align 8
@optimize_size = common dso_local global i64 0, align 8
@ARM_FT_NORMAL = common dso_local global i64 0, align 8
@current_function_calls_eh_return = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@TARGET_REALLY_IWMMXT = common dso_local global i64 0, align 8
@current_function_pretend_args_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @arm_compute_save_reg_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arm_compute_save_reg_mask() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %5 = call i64 (...) @arm_current_func_type()
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @IS_NAKED(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %121

10:                                               ; preds = %0
  %11 = load i64, i64* @frame_pointer_needed, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load i32, i32* @ARM_HARD_FRAME_POINTER_REGNUM, align 4
  %15 = shl i32 1, %14
  %16 = load i32, i32* @IP_REGNUM, align 4
  %17 = shl i32 1, %16
  %18 = or i32 %15, %17
  %19 = load i32, i32* @LR_REGNUM, align 4
  %20 = shl i32 1, %19
  %21 = or i32 %18, %20
  %22 = load i32, i32* @PC_REGNUM, align 4
  %23 = shl i32 1, %22
  %24 = or i32 %21, %23
  %25 = load i32, i32* %2, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %13, %10
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @IS_VOLATILE(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  %33 = zext i32 %32 to i64
  store i64 %33, i64* %1, align 8
  br label %121

34:                                               ; preds = %27
  %35 = call i32 (...) @arm_compute_save_reg0_reg12_mask()
  %36 = load i32, i32* %2, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %2, align 4
  %38 = load i64*, i64** @regs_ever_live, align 8
  %39 = load i32, i32* @LR_REGNUM, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i64, i64* @optimize_size, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i64, i64* %3, align 8
  %52 = call i64 @ARM_FUNC_TYPE(i64 %51)
  %53 = load i64, i64* @ARM_FT_NORMAL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32, i32* @current_function_calls_eh_return, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55, %34
  %59 = load i32, i32* @LR_REGNUM, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* %2, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %55, %50, %47, %44
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* @LR_REGNUM, align 4
  %72 = shl i32 1, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %2, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %70, %63
  %77 = load i64, i64* @TARGET_REALLY_IWMMXT, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %118

79:                                               ; preds = %76
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @bit_count(i32 %80)
  %82 = load i32, i32* @current_function_pretend_args_size, align 4
  %83 = call i32 @ARM_NUM_INTS(i32 %82)
  %84 = add nsw i32 %81, %83
  %85 = srem i32 %84, 2
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %79
  store i32 4, i32* %4, align 4
  br label %88

88:                                               ; preds = %99, %87
  %89 = load i32, i32* %4, align 4
  %90 = icmp ule i32 %89, 12
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* %4, align 4
  %94 = shl i32 1, %93
  %95 = and i32 %92, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %102

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %4, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %88

102:                                              ; preds = %97, %88
  %103 = load i32, i32* %4, align 4
  %104 = icmp ule i32 %103, 12
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = shl i32 1, %106
  %108 = load i32, i32* %2, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %2, align 4
  br label %117

110:                                              ; preds = %102
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load i32, i32* %2, align 4
  %116 = or i32 %115, 8
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %110, %105
  br label %118

118:                                              ; preds = %117, %79, %76
  %119 = load i32, i32* %2, align 4
  %120 = zext i32 %119 to i64
  store i64 %120, i64* %1, align 8
  br label %121

121:                                              ; preds = %118, %31, %9
  %122 = load i64, i64* %1, align 8
  ret i64 %122
}

declare dso_local i64 @arm_current_func_type(...) #1

declare dso_local i64 @IS_NAKED(i64) #1

declare dso_local i64 @IS_VOLATILE(i64) #1

declare dso_local i32 @arm_compute_save_reg0_reg12_mask(...) #1

declare dso_local i64 @ARM_FUNC_TYPE(i64) #1

declare dso_local i32 @bit_count(i32) #1

declare dso_local i32 @ARM_NUM_INTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
