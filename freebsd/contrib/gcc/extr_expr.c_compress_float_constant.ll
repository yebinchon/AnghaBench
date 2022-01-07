; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_compress_float_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_compress_float_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@SET = common dso_local global i32 0, align 4
@CODE_FOR_nothing = common dso_local global i32 0, align 4
@insn_data = common dso_local global %struct.TYPE_4__* null, align 8
@float_extend_from_mem = common dso_local global i64** null, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@REG_EQUAL = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @compress_float_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_float_constant(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @GET_MODE(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @GET_MODE(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @LEGITIMATE_CONSTANT_P(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SET, align 4
  %28 = call i32 @rtx_cost(i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  br label %35

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @force_const_mem(i32 %30, i32 %31)
  %33 = load i32, i32* @SET, align 4
  %34 = call i32 @rtx_cost(i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @GET_MODE_CLASS(i32 %36)
  %38 = call i32 @GET_CLASS_NARROWEST_MODE(i32 %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %138, %35
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %141

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @can_extend_p(i32 %44, i32 %45, i32 0)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @CODE_FOR_nothing, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %138

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @exact_real_truncate(i32 %52, i32* %9)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %138

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @CONST_DOUBLE_FROM_REAL_VALUE(i32 %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i64 @LEGITIMATE_CONSTANT_P(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %56
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32 (i32, i32)*, i32 (i32, i32)** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 %72(i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %63
  br label %138

78:                                               ; preds = %63
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @gen_rtx_FLOAT_EXTEND(i32 %79, i32 %80)
  %82 = load i32, i32* @SET, align 4
  %83 = call i32 @rtx_cost(i32 %81, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %138

88:                                               ; preds = %78
  br label %118

89:                                               ; preds = %56
  %90 = load i64**, i64*** @float_extend_from_mem, align 8
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64*, i64** %90, i64 %92
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %89
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @force_const_mem(i32 %101, i32 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @gen_rtx_FLOAT_EXTEND(i32 %104, i32 %105)
  %107 = load i32, i32* @SET, align 4
  %108 = call i32 @rtx_cost(i32 %106, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %138

113:                                              ; preds = %100
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @validize_mem(i32 %114)
  store i32 %115, i32* %13, align 4
  br label %117

116:                                              ; preds = %89
  br label %138

117:                                              ; preds = %113
  br label %118

118:                                              ; preds = %117, %88
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @force_reg(i32 %119, i32 %120)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @UNKNOWN, align 4
  %126 = call i32 @emit_unop_insn(i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = call i32 (...) @get_last_insn()
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %4, align 4
  %129 = call i64 @REG_P(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %118
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @REG_EQUAL, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @set_unique_reg_note(i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %131, %118
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %3, align 4
  br label %143

138:                                              ; preds = %116, %112, %87, %77, %55, %50
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @GET_MODE_WIDER_MODE(i32 %139)
  store i32 %140, i32* %8, align 4
  br label %39

141:                                              ; preds = %39
  %142 = load i32, i32* @NULL_RTX, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %136
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32, i32) #1

declare dso_local i64 @LEGITIMATE_CONSTANT_P(i32) #1

declare dso_local i32 @rtx_cost(i32, i32) #1

declare dso_local i32 @force_const_mem(i32, i32) #1

declare dso_local i32 @GET_CLASS_NARROWEST_MODE(i32) #1

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @can_extend_p(i32, i32, i32) #1

declare dso_local i32 @exact_real_truncate(i32, i32*) #1

declare dso_local i32 @CONST_DOUBLE_FROM_REAL_VALUE(i32, i32) #1

declare dso_local i32 @gen_rtx_FLOAT_EXTEND(i32, i32) #1

declare dso_local i32 @validize_mem(i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @emit_unop_insn(i32, i32, i32, i32) #1

declare dso_local i32 @get_last_insn(...) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @set_unique_reg_note(i32, i32, i32) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
