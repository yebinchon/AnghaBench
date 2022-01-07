; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_function_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_function_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPARC_OUTGOING_INT_ARG_FIRST = common dso_local global i32 0, align 4
@SPARC_INCOMING_INT_ARG_FIRST = common dso_local global i32 0, align 4
@VECTOR_TYPE = common dso_local global i64 0, align 8
@TARGET_ARCH32 = common dso_local global i64 0, align 8
@TARGET_ARCH64 = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@SPARC_FP_ARG_FIRST = common dso_local global i32 0, align 4
@MODE_FLOAT = common dso_local global i32 0, align 4
@RECORD_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@MODE_COMPLEX_FLOAT = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@word_mode = common dso_local global i32 0, align 4
@TARGET_FPU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @function_value(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @SPARC_OUTGOING_INT_ARG_FIRST, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @SPARC_INCOMING_INT_ARG_FIRST, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @GET_MODE_CLASS(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = load i64, i64* @VECTOR_TYPE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %27
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @int_size_in_bytes(i64 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i64, i64* @TARGET_ARCH32, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  %39 = icmp sle i32 %38, 8
  br i1 %39, label %48, label %40

40:                                               ; preds = %37, %32
  %41 = load i64, i64* @TARGET_ARCH64, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = icmp sle i32 %44, 32
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ false, %40 ], [ %45, %43 ]
  br label %48

48:                                               ; preds = %46, %37
  %49 = phi i1 [ true, %37 ], [ %47, %46 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @gcc_assert(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @BLKmode, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @TREE_TYPE(i64 %57)
  %59 = call i32 @TYPE_MODE(i32 %58)
  %60 = load i32, i32* @SPARC_FP_ARG_FIRST, align 4
  %61 = call i32 @function_arg_vector_value(i32 %56, i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %174

62:                                               ; preds = %48
  %63 = load i32, i32* @MODE_FLOAT, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %27, %21
  %66 = load i64, i64* @TARGET_ARCH64, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %155

68:                                               ; preds = %65
  %69 = load i64, i64* %5, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %155

71:                                               ; preds = %68
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @TREE_CODE(i64 %72)
  %74 = load i64, i64* @RECORD_TYPE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @int_size_in_bytes(i64 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp sle i32 %79, 32
  %81 = zext i1 %80 to i32
  %82 = call i32 @gcc_assert(i32 %81)
  %83 = load i64, i64* %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @function_arg_record_value(i64 %83, i32 %84, i32 0, i32 1, i32 %85)
  store i32 %86, i32* %4, align 4
  br label %174

87:                                               ; preds = %71
  %88 = load i64, i64* %5, align 8
  %89 = call i64 @TREE_CODE(i64 %88)
  %90 = load i64, i64* @UNION_TYPE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @int_size_in_bytes(i64 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp sle i32 %95, 32
  %97 = zext i1 %96 to i32
  %98 = call i32 @gcc_assert(i32 %97)
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @function_arg_union_value(i32 %99, i32 %100, i32 0, i32 %101)
  store i32 %102, i32* %4, align 4
  br label %174

103:                                              ; preds = %87
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @MODE_FLOAT, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @MODE_COMPLEX_FLOAT, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107, %103
  br label %152

112:                                              ; preds = %107
  %113 = load i64, i64* %5, align 8
  %114 = call i64 @AGGREGATE_TYPE_P(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %112
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @int_size_in_bytes(i64 %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp sle i32 %119, 32
  %121 = zext i1 %120 to i32
  %122 = call i32 @gcc_assert(i32 %121)
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @BITS_PER_UNIT, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* @MODE_INT, align 4
  %127 = call i32 @mode_for_size(i32 %125, i32 %126, i32 0)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @BLKmode, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %116
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @function_arg_union_value(i32 %132, i32 %133, i32 0, i32 %134)
  store i32 %135, i32* %4, align 4
  br label %174

136:                                              ; preds = %116
  %137 = load i32, i32* @MODE_INT, align 4
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %136
  br label %151

139:                                              ; preds = %112
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @MODE_INT, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i32, i32* %6, align 4
  %145 = call i64 @GET_MODE_SIZE(i32 %144)
  %146 = load i64, i64* @UNITS_PER_WORD, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* @word_mode, align 4
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %148, %143, %139
  br label %151

151:                                              ; preds = %150, %138
  br label %152

152:                                              ; preds = %151, %111
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154, %68, %65
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @MODE_FLOAT, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @MODE_COMPLEX_FLOAT, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %159, %155
  %164 = load i64, i64* @TARGET_FPU, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = load i32, i32* @SPARC_FP_ARG_FIRST, align 4
  store i32 %167, i32* %10, align 4
  br label %170

168:                                              ; preds = %163, %159
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %168, %166
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @gen_rtx_REG(i32 %171, i32 %172)
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %170, %131, %92, %76, %55
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @int_size_in_bytes(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @function_arg_vector_value(i32, i32, i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @function_arg_record_value(i64, i32, i32, i32, i32) #1

declare dso_local i32 @function_arg_union_value(i32, i32, i32, i32) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i64) #1

declare dso_local i32 @mode_for_size(i32, i32, i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
