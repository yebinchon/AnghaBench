; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_note_invalid_constants.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_note_invalid_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64*, i64*, i32*, i32* }
%struct.TYPE_3__ = type { i64 }

@recog_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OP_IN = common dso_local global i64 0, align 8
@recog_op_alt = common dso_local global %struct.TYPE_3__** null, align 8
@which_alternative = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @note_invalid_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @note_invalid_constants(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @extract_insn(i64 %12)
  %14 = call i32 @constrain_operands(i32 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @fatal_insn_not_found(i64 %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @recog_data, i32 0, i32 0), align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %130

23:                                               ; preds = %19
  %24 = call i32 (...) @preprocess_constraints()
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %125, %23
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @recog_data, i32 0, i32 1), align 8
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %128

29:                                               ; preds = %25
  %30 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @recog_data, i32 0, i32 2), align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OP_IN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %125

38:                                               ; preds = %29
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @recog_op_alt, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i64, i64* @which_alternative, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %124

49:                                               ; preds = %38
  %50 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @recog_data, i32 0, i32 3), align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @CONSTANT_P(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @recog_data, i32 0, i32 5), align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @recog_data, i32 0, i32 4), align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @push_minipool_fix(i64 %62, i32 %63, i32 %68, i32 %73, i64 %74)
  br label %76

76:                                               ; preds = %61, %58
  store i32 1, i32* %8, align 4
  br label %123

77:                                               ; preds = %49
  %78 = load i64, i64* %10, align 8
  %79 = call i64 @GET_CODE(i64 %78)
  %80 = load i64, i64* @MEM, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %122

82:                                               ; preds = %77
  %83 = load i64, i64* %10, align 8
  %84 = call i64 @XEXP(i64 %83, i32 0)
  %85 = call i64 @GET_CODE(i64 %84)
  %86 = load i64, i64* @SYMBOL_REF, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %122

88:                                               ; preds = %82
  %89 = load i64, i64* %10, align 8
  %90 = call i64 @XEXP(i64 %89, i32 0)
  %91 = call i64 @CONSTANT_POOL_ADDRESS_P(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %93
  %97 = load i64, i64* %10, align 8
  %98 = call i64 @avoid_constant_pool_reference(i64 %97)
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i64, i64* %10, align 8
  %104 = call i64 @XEXP(i64 %103, i32 0)
  %105 = call i64 @get_pool_constant(i64 %104)
  store i64 %105, i64* %11, align 8
  br label %106

106:                                              ; preds = %102, %96
  %107 = load i64, i64* %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @recog_data, i32 0, i32 5), align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @recog_data, i32 0, i32 4), align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @push_minipool_fix(i64 %107, i32 %108, i32 %113, i32 %118, i64 %119)
  br label %121

121:                                              ; preds = %106, %93
  store i32 1, i32* %8, align 4
  br label %122

122:                                              ; preds = %121, %88, %82, %77
  br label %123

123:                                              ; preds = %122, %76
  br label %124

124:                                              ; preds = %123, %38
  br label %125

125:                                              ; preds = %124, %37
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %25

128:                                              ; preds = %25
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %22
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @extract_insn(i64) #1

declare dso_local i32 @constrain_operands(i32) #1

declare dso_local i32 @fatal_insn_not_found(i64) #1

declare dso_local i32 @preprocess_constraints(...) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i32 @push_minipool_fix(i64, i32, i32, i32, i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @CONSTANT_POOL_ADDRESS_P(i64) #1

declare dso_local i64 @avoid_constant_pool_reference(i64) #1

declare dso_local i64 @get_pool_constant(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
