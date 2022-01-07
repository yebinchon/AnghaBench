; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_get_frame_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_get_frame_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.arm_stack_offsets }
%struct.arm_stack_offsets = type { i32, i32, i32, i32, i32, i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@reload_completed = common dso_local global i64 0, align 8
@current_function_pretend_args_size = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i64 0, align 8
@TARGET_ARM = common dso_local global i64 0, align 8
@TARGET_REALLY_IWMMXT = common dso_local global i64 0, align 8
@FIRST_IWMMXT_REGNUM = common dso_local global i32 0, align 4
@LAST_IWMMXT_REGNUM = common dso_local global i32 0, align 4
@regs_ever_live = common dso_local global i64* null, align 8
@call_used_regs = common dso_local global i32* null, align 8
@FIRST_FPA_REGNUM = common dso_local global i32 0, align 4
@LAST_FPA_REGNUM = common dso_local global i32 0, align 4
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@TARGET_VFP = common dso_local global i64 0, align 8
@TARGET_BACKTRACE = common dso_local global i64 0, align 8
@CALLER_INTERWORKING_SLOT_SIZE = common dso_local global i32 0, align 4
@ARM_DOUBLEWORD_ALIGN = common dso_local global i64 0, align 8
@current_function_outgoing_args_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arm_stack_offsets* ()* @arm_get_frame_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arm_stack_offsets* @arm_get_frame_offsets() #0 {
  %1 = alloca %struct.arm_stack_offsets*, align 8
  %2 = alloca %struct.arm_stack_offsets*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.arm_stack_offsets* %11, %struct.arm_stack_offsets** %2, align 8
  %12 = load i64, i64* @reload_completed, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  store %struct.arm_stack_offsets* %15, %struct.arm_stack_offsets** %1, align 8
  br label %212

16:                                               ; preds = %0
  %17 = call i32 (...) @get_frame_size()
  %18 = call i64 @ROUND_UP_WORD(i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = call i32 (...) @leaf_function_p()
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @current_function_pretend_args_size, align 4
  %21 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %22 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %24 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @frame_pointer_needed, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 4, i32 0
  %30 = add nsw i32 %25, %29
  %31 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %32 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* @TARGET_ARM, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %115

35:                                               ; preds = %16
  %36 = call i32 (...) @arm_compute_save_reg_mask()
  %37 = call i32 @bit_count(i32 %36)
  %38 = mul nsw i32 %37, 4
  store i32 %38, i32* %5, align 4
  %39 = load i64, i64* @TARGET_REALLY_IWMMXT, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load i32, i32* @FIRST_IWMMXT_REGNUM, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %65, %41
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @LAST_IWMMXT_REGNUM, align 4
  %46 = icmp ule i32 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load i64*, i64** @regs_ever_live, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load i32*, i32** @call_used_regs, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 8
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %54, %47
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %43

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68, %35
  %70 = call i64 (...) @arm_current_func_type()
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @IS_VOLATILE(i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %114, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @FIRST_FPA_REGNUM, align 4
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %98, %74
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @LAST_FPA_REGNUM, align 4
  %79 = icmp ule i32 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load i64*, i64** @regs_ever_live, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %80
  %88 = load i32*, i32** @call_used_regs, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 12
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %94, %87, %80
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %76

101:                                              ; preds = %76
  %102 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i64, i64* @TARGET_VFP, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = call i64 (...) @arm_get_vfp_saved_size()
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %107, %104, %101
  br label %114

114:                                              ; preds = %113, %69
  br label %125

115:                                              ; preds = %16
  %116 = call i32 (...) @thumb_compute_save_reg_mask()
  %117 = call i32 @bit_count(i32 %116)
  %118 = mul nsw i32 %117, 4
  store i32 %118, i32* %5, align 4
  %119 = load i64, i64* @TARGET_BACKTRACE, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 16
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %121, %115
  br label %125

125:                                              ; preds = %124, %114
  %126 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %127 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %128, %129
  %131 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %132 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %134 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @CALLER_INTERWORKING_SLOT_SIZE, align 4
  %137 = add nsw i32 %135, %136
  %138 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %139 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %125
  %143 = load i64, i64* %6, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %142
  %146 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %147 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %150 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %152 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %155 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 4
  %156 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  store %struct.arm_stack_offsets* %156, %struct.arm_stack_offsets** %1, align 8
  br label %212

157:                                              ; preds = %142, %125
  %158 = load i64, i64* @ARM_DOUBLEWORD_ALIGN, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %157
  %161 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %162 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 7
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %168 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 4
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %166, %160, %157
  %172 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %173 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* %6, align 8
  %177 = add nsw i64 %175, %176
  %178 = trunc i64 %177 to i32
  %179 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %180 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %182 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @current_function_outgoing_args_size, align 4
  %185 = add nsw i32 %183, %184
  %186 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %187 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 4
  %188 = load i64, i64* @ARM_DOUBLEWORD_ALIGN, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %210

190:                                              ; preds = %171
  %191 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %192 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 7
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %190
  %197 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %198 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 4
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %196, %190
  %202 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  %203 = getelementptr inbounds %struct.arm_stack_offsets, %struct.arm_stack_offsets* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, 7
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = call i32 @gcc_assert(i32 %208)
  br label %210

210:                                              ; preds = %201, %171
  %211 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %2, align 8
  store %struct.arm_stack_offsets* %211, %struct.arm_stack_offsets** %1, align 8
  br label %212

212:                                              ; preds = %210, %145, %14
  %213 = load %struct.arm_stack_offsets*, %struct.arm_stack_offsets** %1, align 8
  ret %struct.arm_stack_offsets* %213
}

declare dso_local i64 @ROUND_UP_WORD(i32) #1

declare dso_local i32 @get_frame_size(...) #1

declare dso_local i32 @leaf_function_p(...) #1

declare dso_local i32 @bit_count(i32) #1

declare dso_local i32 @arm_compute_save_reg_mask(...) #1

declare dso_local i64 @arm_current_func_type(...) #1

declare dso_local i32 @IS_VOLATILE(i64) #1

declare dso_local i64 @arm_get_vfp_saved_size(...) #1

declare dso_local i32 @thumb_compute_save_reg_mask(...) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
