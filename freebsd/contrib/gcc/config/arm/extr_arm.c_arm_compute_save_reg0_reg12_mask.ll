; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_compute_save_reg0_reg12_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_compute_save_reg0_reg12_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_FT_FIQ = common dso_local global i64 0, align 8
@regs_ever_live = common dso_local global i64* null, align 8
@current_function_is_leaf = common dso_local global i32 0, align 4
@call_used_regs = common dso_local global i64* null, align 8
@flag_pic = common dso_local global i64 0, align 8
@TARGET_SINGLE_PIC_BASE = common dso_local global i32 0, align 4
@arm_pic_register = common dso_local global i32 0, align 4
@INVALID_REGNUM = common dso_local global i32 0, align 4
@current_function_uses_pic_offset_table = common dso_local global i64 0, align 8
@PIC_OFFSET_TABLE_REGNUM = common dso_local global i32 0, align 4
@TARGET_APCS_FRAME = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i32 0, align 4
@HARD_FRAME_POINTER_REGNUM = common dso_local global i64 0, align 8
@current_function_calls_eh_return = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @arm_compute_save_reg0_reg12_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arm_compute_save_reg0_reg12_mask() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i64 (...) @arm_current_func_type()
  store i64 %6, i64* %1, align 8
  store i64 0, i64* %2, align 8
  %7 = load i64, i64* %1, align 8
  %8 = call i64 @IS_INTERRUPT(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %69

10:                                               ; preds = %0
  %11 = load i64, i64* %1, align 8
  %12 = call i64 @ARM_FUNC_TYPE(i64 %11)
  %13 = load i64, i64* @ARM_FT_FIQ, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 7, i32* %4, align 4
  br label %17

16:                                               ; preds = %10
  store i32 12, i32* %4, align 4
  br label %17

17:                                               ; preds = %16, %15
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %46, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = load i64*, i64** @regs_ever_live, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @current_function_is_leaf, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = load i64*, i64** @call_used_regs, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32, %22
  %40 = load i32, i32* %3, align 4
  %41 = shl i32 1, %40
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %2, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %39, %32, %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %18

49:                                               ; preds = %18
  %50 = load i64, i64* @flag_pic, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i32, i32* @TARGET_SINGLE_PIC_BASE, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @arm_pic_register, align 4
  %57 = load i32, i32* @INVALID_REGNUM, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i64, i64* @current_function_uses_pic_offset_table, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* @PIC_OFFSET_TABLE_REGNUM, align 4
  %64 = shl i32 1, %63
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %2, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %2, align 8
  br label %68

68:                                               ; preds = %62, %59, %55, %52, %49
  br label %149

69:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %94, %69
  %71 = load i32, i32* %3, align 4
  %72 = icmp ule i32 %71, 10
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = load i64*, i64** @regs_ever_live, align 8
  %75 = load i32, i32* %3, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %73
  %81 = load i64*, i64** @call_used_regs, align 8
  %82 = load i32, i32* %3, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %3, align 4
  %89 = shl i32 1, %88
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %2, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %2, align 8
  br label %93

93:                                               ; preds = %87, %80, %73
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %3, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %70

97:                                               ; preds = %70
  %98 = load i32, i32* @TARGET_APCS_FRAME, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %122, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @frame_pointer_needed, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %122, label %103

103:                                              ; preds = %100
  %104 = load i64*, i64** @regs_ever_live, align 8
  %105 = load i64, i64* @HARD_FRAME_POINTER_REGNUM, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %103
  %110 = load i64*, i64** @call_used_regs, align 8
  %111 = load i64, i64* @HARD_FRAME_POINTER_REGNUM, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %109
  %116 = load i64, i64* @HARD_FRAME_POINTER_REGNUM, align 8
  %117 = trunc i64 %116 to i32
  %118 = shl i32 1, %117
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %2, align 8
  %121 = or i64 %120, %119
  store i64 %121, i64* %2, align 8
  br label %122

122:                                              ; preds = %115, %109, %103, %100, %97
  %123 = load i64, i64* @flag_pic, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %122
  %126 = load i32, i32* @TARGET_SINGLE_PIC_BASE, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %148, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* @arm_pic_register, align 4
  %130 = load i32, i32* @INVALID_REGNUM, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %128
  %133 = load i64*, i64** @regs_ever_live, align 8
  %134 = load i32, i32* @PIC_OFFSET_TABLE_REGNUM, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %132
  %140 = load i64, i64* @current_function_uses_pic_offset_table, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139, %132
  %143 = load i32, i32* @PIC_OFFSET_TABLE_REGNUM, align 4
  %144 = shl i32 1, %143
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %2, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %2, align 8
  br label %148

148:                                              ; preds = %142, %139, %128, %125, %122
  br label %149

149:                                              ; preds = %148, %68
  %150 = load i64, i64* @current_function_calls_eh_return, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %149
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %166, %152
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @EH_RETURN_DATA_REGNO(i32 %154)
  store i32 %155, i32* %3, align 4
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @INVALID_REGNUM, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %169

160:                                              ; preds = %153
  %161 = load i32, i32* %3, align 4
  %162 = shl i32 1, %161
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %2, align 8
  %165 = or i64 %164, %163
  store i64 %165, i64* %2, align 8
  br label %166

166:                                              ; preds = %160
  %167 = load i32, i32* %5, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %153

169:                                              ; preds = %159
  br label %170

170:                                              ; preds = %169, %149
  %171 = load i64, i64* %2, align 8
  ret i64 %171
}

declare dso_local i64 @arm_current_func_type(...) #1

declare dso_local i64 @IS_INTERRUPT(i64) #1

declare dso_local i64 @ARM_FUNC_TYPE(i64) #1

declare dso_local i32 @EH_RETURN_DATA_REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
