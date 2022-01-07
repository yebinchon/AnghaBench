; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_function_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_function_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparc_args = type { i64, i64 }

@SPARC_INCOMING_INT_ARG_FIRST = common dso_local global i32 0, align 4
@SPARC_OUTGOING_INT_ARG_FIRST = common dso_local global i32 0, align 4
@VECTOR_TYPE = common dso_local global i64 0, align 8
@TARGET_ARCH32 = common dso_local global i64 0, align 8
@TARGET_ARCH64 = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@SPARC_FP_ARG_FIRST = common dso_local global i32 0, align 4
@MODE_FLOAT = common dso_local global i32 0, align 4
@RECORD_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@MODE_COMPLEX_FLOAT = common dso_local global i32 0, align 4
@SPARC_INT_ARG_MAX = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @function_arg(%struct.sparc_args* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sparc_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.sparc_args* %0, %struct.sparc_args** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @SPARC_INCOMING_INT_ARG_FIRST, align 4
  br label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @SPARC_OUTGOING_INT_ARG_FIRST, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @GET_MODE_CLASS(i32 %33)
  store i32 %34, i32* %16, align 4
  %35 = load %struct.sparc_args*, %struct.sparc_args** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @function_arg_slotno(%struct.sparc_args* %35, i32 %36, i64 %37, i32 %38, i32 %39, i32* %14, i32* %15)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %237

44:                                               ; preds = %31
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %88

47:                                               ; preds = %44
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @TREE_CODE(i64 %48)
  %50 = load i64, i64* @VECTOR_TYPE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %47
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @int_size_in_bytes(i64 %53)
  store i32 %54, i32* %17, align 4
  %55 = load i64, i64* @TARGET_ARCH32, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %17, align 4
  %59 = icmp sle i32 %58, 8
  br i1 %59, label %68, label %60

60:                                               ; preds = %57, %52
  %61 = load i64, i64* @TARGET_ARCH64, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %17, align 4
  %65 = icmp sle i32 %64, 16
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i1 [ false, %60 ], [ %65, %63 ]
  br label %68

68:                                               ; preds = %66, %57
  %69 = phi i1 [ true, %57 ], [ %67, %66 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @gcc_assert(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @BLKmode, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load i32, i32* %17, align 4
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @TREE_TYPE(i64 %77)
  %79 = call i32 @TYPE_MODE(i32 %78)
  %80 = load i32, i32* @SPARC_FP_ARG_FIRST, align 4
  %81 = load i32, i32* %13, align 4
  %82 = mul nsw i32 2, %81
  %83 = add nsw i32 %80, %82
  %84 = call i32 @function_arg_vector_value(i32 %76, i32 %79, i32 %83)
  store i32 %84, i32* %6, align 4
  br label %237

85:                                               ; preds = %68
  %86 = load i32, i32* @MODE_FLOAT, align 4
  store i32 %86, i32* %16, align 4
  br label %87

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %87, %47, %44
  %89 = load i64, i64* @TARGET_ARCH32, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @gen_rtx_REG(i32 %92, i32 %93)
  store i32 %94, i32* %6, align 4
  br label %237

95:                                               ; preds = %88
  %96 = load i64, i64* %9, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %95
  %99 = load i64, i64* %9, align 8
  %100 = call i64 @TREE_CODE(i64 %99)
  %101 = load i64, i64* @RECORD_TYPE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %98
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @int_size_in_bytes(i64 %104)
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = icmp sle i32 %106, 16
  %108 = zext i1 %107 to i32
  %109 = call i32 @gcc_assert(i32 %108)
  %110 = load i64, i64* %9, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @function_arg_record_value(i64 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %6, align 4
  br label %237

116:                                              ; preds = %98, %95
  %117 = load i64, i64* %9, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load i64, i64* %9, align 8
  %121 = call i64 @TREE_CODE(i64 %120)
  %122 = load i64, i64* @UNION_TYPE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @int_size_in_bytes(i64 %125)
  store i32 %126, i32* %19, align 4
  %127 = load i32, i32* %19, align 4
  %128 = icmp sle i32 %127, 16
  %129 = zext i1 %128 to i32
  %130 = call i32 @gcc_assert(i32 %129)
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @function_arg_union_value(i32 %131, i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %6, align 4
  br label %237

136:                                              ; preds = %119, %116
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* @MODE_FLOAT, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* @MODE_COMPLEX_FLOAT, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %211

144:                                              ; preds = %140, %136
  %145 = load i32, i32* %14, align 4
  %146 = call i64 @SPARC_FP_REG_P(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %211

148:                                              ; preds = %144
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @gen_rtx_REG(i32 %149, i32 %150)
  store i32 %151, i32* %20, align 4
  %152 = load %struct.sparc_args*, %struct.sparc_args** %7, align 8
  %153 = getelementptr inbounds %struct.sparc_args, %struct.sparc_args* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %148
  %157 = load %struct.sparc_args*, %struct.sparc_args** %7, align 8
  %158 = getelementptr inbounds %struct.sparc_args, %struct.sparc_args* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156, %148
  %162 = load i32, i32* %20, align 4
  store i32 %162, i32* %6, align 4
  br label %237

163:                                              ; preds = %156
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* @SPARC_FP_ARG_FIRST, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load i32, i32* @SPARC_INT_ARG_MAX, align 4
  %168 = mul nsw i32 %167, 2
  %169 = icmp slt i32 %166, %168
  br i1 %169, label %170, label %197

170:                                              ; preds = %163
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, i32* %20, align 4
  store i32 %174, i32* %6, align 4
  br label %237

175:                                              ; preds = %170
  %176 = load i32, i32* @SPARC_OUTGOING_INT_ARG_FIRST, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @SPARC_FP_ARG_FIRST, align 4
  %179 = sub nsw i32 %177, %178
  %180 = sdiv i32 %179, 2
  %181 = add nsw i32 %176, %180
  store i32 %181, i32* %23, align 4
  %182 = load i32, i32* @VOIDmode, align 4
  %183 = load i32, i32* %20, align 4
  %184 = load i32, i32* @const0_rtx, align 4
  %185 = call i32 @gen_rtx_EXPR_LIST(i32 %182, i32 %183, i32 %184)
  store i32 %185, i32* %21, align 4
  %186 = load i32, i32* @VOIDmode, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %23, align 4
  %189 = call i32 @gen_rtx_REG(i32 %187, i32 %188)
  %190 = load i32, i32* @const0_rtx, align 4
  %191 = call i32 @gen_rtx_EXPR_LIST(i32 %186, i32 %189, i32 %190)
  store i32 %191, i32* %22, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %21, align 4
  %194 = load i32, i32* %22, align 4
  %195 = call i32 @gen_rtvec(i32 2, i32 %193, i32 %194)
  %196 = call i32 @gen_rtx_PARALLEL(i32 %192, i32 %195)
  store i32 %196, i32* %6, align 4
  br label %237

197:                                              ; preds = %163
  %198 = load i32, i32* @VOIDmode, align 4
  %199 = load i32, i32* @NULL_RTX, align 4
  %200 = load i32, i32* @const0_rtx, align 4
  %201 = call i32 @gen_rtx_EXPR_LIST(i32 %198, i32 %199, i32 %200)
  store i32 %201, i32* %21, align 4
  %202 = load i32, i32* @VOIDmode, align 4
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* @const0_rtx, align 4
  %205 = call i32 @gen_rtx_EXPR_LIST(i32 %202, i32 %203, i32 %204)
  store i32 %205, i32* %22, align 4
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %21, align 4
  %208 = load i32, i32* %22, align 4
  %209 = call i32 @gen_rtvec(i32 2, i32 %207, i32 %208)
  %210 = call i32 @gen_rtx_PARALLEL(i32 %206, i32 %209)
  store i32 %210, i32* %6, align 4
  br label %237

211:                                              ; preds = %144, %140
  %212 = load i64, i64* %9, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %230

214:                                              ; preds = %211
  %215 = load i64, i64* %9, align 8
  %216 = call i64 @AGGREGATE_TYPE_P(i64 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %214
  %219 = load i64, i64* %9, align 8
  %220 = call i32 @int_size_in_bytes(i64 %219)
  store i32 %220, i32* %24, align 4
  %221 = load i32, i32* %24, align 4
  %222 = icmp sle i32 %221, 16
  %223 = zext i1 %222 to i32
  %224 = call i32 @gcc_assert(i32 %223)
  %225 = load i32, i32* %24, align 4
  %226 = load i32, i32* @BITS_PER_UNIT, align 4
  %227 = mul nsw i32 %225, %226
  %228 = load i32, i32* @MODE_INT, align 4
  %229 = call i32 @mode_for_size(i32 %227, i32 %228, i32 0)
  store i32 %229, i32* %8, align 4
  br label %230

230:                                              ; preds = %218, %214, %211
  br label %231

231:                                              ; preds = %230
  br label %232

232:                                              ; preds = %231
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* %14, align 4
  %236 = call i32 @gen_rtx_REG(i32 %234, i32 %235)
  store i32 %236, i32* %6, align 4
  br label %237

237:                                              ; preds = %233, %197, %175, %173, %161, %124, %103, %91, %75, %43
  %238 = load i32, i32* %6, align 4
  ret i32 %238
}

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @function_arg_slotno(%struct.sparc_args*, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @int_size_in_bytes(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @function_arg_vector_value(i32, i32, i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @function_arg_record_value(i64, i32, i32, i32, i32) #1

declare dso_local i32 @function_arg_union_value(i32, i32, i32, i32) #1

declare dso_local i64 @SPARC_FP_REG_P(i32) #1

declare dso_local i32 @gen_rtx_EXPR_LIST(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i64) #1

declare dso_local i32 @mode_for_size(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
