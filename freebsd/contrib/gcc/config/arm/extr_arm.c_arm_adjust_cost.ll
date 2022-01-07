; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_adjust_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_adjust_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64*, i32** }

@arm_tune_xscale = common dso_local global i64 0, align 8
@TYPE_ALU_SHIFT = common dso_local global i32 0, align 4
@TYPE_ALU_SHIFT_REG = common dso_local global i32 0, align 4
@recog_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@OP_IN = common dso_local global i64 0, align 8
@REG_DEP_ANTI = common dso_local global i64 0, align 8
@REG_DEP_OUTPUT = common dso_local global i64 0, align 8
@CALL_INSN = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i32 0, align 4
@frame_pointer_rtx = common dso_local global i32 0, align 4
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @arm_adjust_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_adjust_cost(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i64, i64* @arm_tune_xscale, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %86

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @REG_NOTE_KIND(i32* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %86

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @recog_memoized(i32* %24)
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %86

27:                                               ; preds = %23
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @recog_memoized(i32* %28)
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %86

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @get_attr_shift(i32* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @get_attr_type(i32* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %85

38:                                               ; preds = %31
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @TYPE_ALU_SHIFT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @TYPE_ALU_SHIFT_REG, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %85

46:                                               ; preds = %42, %38
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @extract_insn(i32* %47)
  %49 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 2), align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %14, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @extract_insn(i32* %54)
  %56 = call i32 (...) @preprocess_constraints()
  store i32 0, i32* %15, align 4
  br label %57

57:                                               ; preds = %81, %46
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 1), align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @OP_IN, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %81

70:                                               ; preds = %61
  %71 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 2), align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = call i64 @reg_overlap_mentioned_p(i32* %75, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  store i32 2, i32* %5, align 4
  br label %158

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %69
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %57

84:                                               ; preds = %57
  br label %85

85:                                               ; preds = %84, %42, %31
  br label %86

86:                                               ; preds = %85, %27, %23, %19, %4
  %87 = load i32*, i32** %7, align 8
  %88 = call i64 @REG_NOTE_KIND(i32* %87)
  %89 = load i64, i64* @REG_DEP_ANTI, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i32*, i32** %7, align 8
  %93 = call i64 @REG_NOTE_KIND(i32* %92)
  %94 = load i64, i64* @REG_DEP_OUTPUT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %86
  store i32 0, i32* %5, align 4
  br label %158

97:                                               ; preds = %91
  %98 = load i32*, i32** %7, align 8
  %99 = call i64 @REG_NOTE_KIND(i32* %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i32*, i32** %6, align 8
  %103 = call i64 @GET_CODE(i32* %102)
  %104 = load i64, i64* @CALL_INSN, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 1, i32* %5, align 4
  br label %158

107:                                              ; preds = %101, %97
  %108 = load i32*, i32** %6, align 8
  %109 = call i32* @single_set(i32* %108)
  store i32* %109, i32** %10, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %156

111:                                              ; preds = %107
  %112 = load i32*, i32** %10, align 8
  %113 = call i32* @SET_SRC(i32* %112)
  %114 = call i64 @GET_CODE(i32* %113)
  %115 = load i64, i64* @MEM, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %156

117:                                              ; preds = %111
  %118 = load i32*, i32** %8, align 8
  %119 = call i32* @single_set(i32* %118)
  store i32* %119, i32** %11, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %156

121:                                              ; preds = %117
  %122 = load i32*, i32** %11, align 8
  %123 = call i32* @SET_DEST(i32* %122)
  %124 = call i64 @GET_CODE(i32* %123)
  %125 = load i64, i64* @MEM, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %156

127:                                              ; preds = %121
  %128 = load i32*, i32** %10, align 8
  %129 = call i32* @SET_SRC(i32* %128)
  %130 = call i32* @XEXP(i32* %129, i32 0)
  store i32* %130, i32** %16, align 8
  %131 = load i32*, i32** %16, align 8
  %132 = call i64 @GET_CODE(i32* %131)
  %133 = load i64, i64* @SYMBOL_REF, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load i32*, i32** %16, align 8
  %137 = call i64 @CONSTANT_POOL_ADDRESS_P(i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %135, %127
  %140 = load i32, i32* @stack_pointer_rtx, align 4
  %141 = load i32*, i32** %16, align 8
  %142 = call i64 @reg_mentioned_p(i32 %140, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* @frame_pointer_rtx, align 4
  %146 = load i32*, i32** %16, align 8
  %147 = call i64 @reg_mentioned_p(i32 %145, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* @hard_frame_pointer_rtx, align 4
  %151 = load i32*, i32** %16, align 8
  %152 = call i64 @reg_mentioned_p(i32 %150, i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149, %144, %139, %135
  store i32 1, i32* %5, align 4
  br label %158

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155, %121, %117, %111, %107
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %156, %154, %106, %96, %79
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i64 @REG_NOTE_KIND(i32*) #1

declare dso_local i64 @recog_memoized(i32*) #1

declare dso_local i32 @get_attr_shift(i32*) #1

declare dso_local i32 @get_attr_type(i32*) #1

declare dso_local i32 @extract_insn(i32*) #1

declare dso_local i32 @preprocess_constraints(...) #1

declare dso_local i64 @reg_overlap_mentioned_p(i32*, i32*) #1

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32* @single_set(i32*) #1

declare dso_local i32* @SET_SRC(i32*) #1

declare dso_local i32* @SET_DEST(i32*) #1

declare dso_local i32* @XEXP(i32*, i32) #1

declare dso_local i64 @CONSTANT_POOL_ADDRESS_P(i32*) #1

declare dso_local i64 @reg_mentioned_p(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
