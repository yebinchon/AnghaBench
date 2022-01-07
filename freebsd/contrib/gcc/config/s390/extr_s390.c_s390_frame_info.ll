; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_frame_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_frame_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@cfun_frame_layout = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TARGET_64BIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"total size of local variables exceeds architecture limit\00", align 1
@TARGET_PACKED_STACK = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@TARGET_BACKCHAIN = common dso_local global i64 0, align 8
@STACK_POINTER_OFFSET = common dso_local global i32 0, align 4
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@STACK_BOUNDARY = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@cfun_gprs_save_area_size = common dso_local global i32 0, align 4
@current_function_is_leaf = common dso_local global i64 0, align 8
@TARGET_TPF_PROFILING = common dso_local global i32 0, align 4
@cfun_save_high_fprs_p = common dso_local global i32 0, align 4
@current_function_calls_alloca = common dso_local global i32 0, align 4
@current_function_stdarg = common dso_local global i32 0, align 4
@current_function_outgoing_args_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s390_frame_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_frame_info() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @get_frame_size()
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %3 = load i64, i64* @TARGET_64BIT, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %7 = icmp sgt i32 %6, 2147418112
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call i32 @fatal_error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %5, %0
  %11 = load i32, i32* @TARGET_PACKED_STACK, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 1), align 4
  %14 = load i32, i32* @UNITS_PER_WORD, align 4
  %15 = mul nsw i32 16, %14
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  %17 = add nsw i32 %16, 16
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 3), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 5), align 4
  %19 = sub nsw i32 0, %18
  %20 = mul nsw i32 %19, 8
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 4), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 7), align 4
  %22 = load i32, i32* @UNITS_PER_WORD, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 6), align 4
  br label %91

24:                                               ; preds = %10
  %25 = load i64, i64* @TARGET_BACKCHAIN, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  %28 = load i32, i32* @STACK_POINTER_OFFSET, align 4
  %29 = load i32, i32* @UNITS_PER_WORD, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 1), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 1), align 4
  %32 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 7), align 4
  %34 = sub nsw i32 %32, %33
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @UNITS_PER_WORD, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sub nsw i32 %31, %37
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 6), align 4
  %39 = load i64, i64* @TARGET_64BIT, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %27
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 6), align 4
  %43 = call i32 @cfun_fpr_bit_p(i32 2)
  %44 = call i32 @cfun_fpr_bit_p(i32 3)
  %45 = add nsw i32 %43, %44
  %46 = mul nsw i32 8, %45
  %47 = sub nsw i32 %42, %46
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 3), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 3), align 4
  %49 = call i32 @cfun_fpr_bit_p(i32 0)
  %50 = call i32 @cfun_fpr_bit_p(i32 1)
  %51 = add nsw i32 %49, %50
  %52 = mul nsw i32 8, %51
  %53 = sub nsw i32 %48, %52
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  br label %73

54:                                               ; preds = %27
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 6), align 4
  %56 = load i32, i32* @STACK_BOUNDARY, align 4
  %57 = load i32, i32* @BITS_PER_UNIT, align 4
  %58 = sdiv i32 %56, %57
  %59 = sub nsw i32 %58, 1
  %60 = xor i32 %59, -1
  %61 = and i32 %55, %60
  %62 = call i32 @cfun_fpr_bit_p(i32 0)
  %63 = call i32 @cfun_fpr_bit_p(i32 1)
  %64 = add nsw i32 %62, %63
  %65 = mul nsw i32 8, %64
  %66 = sub nsw i32 %61, %65
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  %68 = call i32 @cfun_fpr_bit_p(i32 2)
  %69 = call i32 @cfun_fpr_bit_p(i32 3)
  %70 = add nsw i32 %68, %69
  %71 = mul nsw i32 8, %70
  %72 = sub nsw i32 %67, %71
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 3), align 4
  br label %73

73:                                               ; preds = %54, %41
  br label %90

74:                                               ; preds = %24
  %75 = load i32, i32* @STACK_POINTER_OFFSET, align 4
  %76 = call i32 @cfun_fpr_bit_p(i32 2)
  %77 = call i32 @cfun_fpr_bit_p(i32 3)
  %78 = add nsw i32 %76, %77
  %79 = mul nsw i32 8, %78
  %80 = sub nsw i32 %75, %79
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 3), align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 3), align 4
  %82 = call i32 @cfun_fpr_bit_p(i32 0)
  %83 = call i32 @cfun_fpr_bit_p(i32 1)
  %84 = add nsw i32 %82, %83
  %85 = mul nsw i32 8, %84
  %86 = sub nsw i32 %81, %85
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  %88 = load i32, i32* @cfun_gprs_save_area_size, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 6), align 4
  br label %90

90:                                               ; preds = %74, %73
  br label %91

91:                                               ; preds = %90, %13
  %92 = load i64, i64* @current_function_is_leaf, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load i32, i32* @TARGET_TPF_PROFILING, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i32, i32* @cfun_save_high_fprs_p, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @current_function_calls_alloca, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @current_function_stdarg, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  br label %181

110:                                              ; preds = %106, %103, %100, %97, %94, %91
  %111 = load i32, i32* @TARGET_PACKED_STACK, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* @STACK_POINTER_OFFSET, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* @current_function_outgoing_args_size, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 5), align 4
  %119 = mul nsw i32 %118, 8
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %117, %120
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  br label %181

126:                                              ; preds = %110
  %127 = load i64, i64* @TARGET_BACKCHAIN, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* @UNITS_PER_WORD, align 4
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  br label %133

133:                                              ; preds = %129, %126
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 3), align 4
  %136 = call i32 @MIN(i32 %134, i32 %135)
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 6), align 4
  %138 = call i32 @MIN(i32 %136, i32 %137)
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 5), align 4
  %140 = mul nsw i32 %139, 8
  %141 = sub nsw i32 %138, %140
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 4), align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 5), align 4
  %143 = mul nsw i32 %142, 8
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  store i32 0, i32* %1, align 4
  br label %146

146:                                              ; preds = %157, %133
  %147 = load i32, i32* %1, align 4
  %148 = icmp slt i32 %147, 8
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  %150 = load i32, i32* %1, align 4
  %151 = call i32 @cfun_fpr_bit_p(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %155 = add nsw i32 %154, 8
  store i32 %155, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  br label %156

156:                                              ; preds = %153, %149
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %1, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %1, align 4
  br label %146

160:                                              ; preds = %146
  %161 = load i32, i32* @cfun_gprs_save_area_size, align 4
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %165 = load i32, i32* @STACK_BOUNDARY, align 4
  %166 = load i32, i32* @BITS_PER_UNIT, align 4
  %167 = sdiv i32 %165, %166
  %168 = add nsw i32 %164, %167
  %169 = sub nsw i32 %168, 1
  %170 = load i32, i32* @STACK_BOUNDARY, align 4
  %171 = load i32, i32* @BITS_PER_UNIT, align 4
  %172 = sdiv i32 %170, %171
  %173 = sub nsw i32 %172, 1
  %174 = xor i32 %173, -1
  %175 = and i32 %169, %174
  store i32 %175, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %176 = load i64, i64* @current_function_outgoing_args_size, align 8
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %176
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  br label %181

181:                                              ; preds = %109, %160, %113
  ret void
}

declare dso_local i32 @get_frame_size(...) #1

declare dso_local i32 @fatal_error(i8*) #1

declare dso_local i32 @cfun_fpr_bit_p(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
