; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_function_arg_slotno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_function_arg_slotno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparc_args = type { i32 }

@SPARC_INCOMING_INT_ARG_FIRST = common dso_local global i32 0, align 4
@SPARC_OUTGOING_INT_ARG_FIRST = common dso_local global i32 0, align 4
@TARGET_ARCH32 = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@PARM_BOUNDARY = common dso_local global i32 0, align 4
@TARGET_ARCH64 = common dso_local global i64 0, align 8
@VECTOR_TYPE = common dso_local global i64 0, align 8
@REAL_TYPE = common dso_local global i64 0, align 8
@TARGET_FPU = common dso_local global i32 0, align 4
@SPARC_FP_ARG_MAX = common dso_local global i32 0, align 4
@SPARC_FP_ARG_FIRST = common dso_local global i32 0, align 4
@SPARC_INT_ARG_MAX = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@RECORD_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sparc_args*, i32, i64, i32, i32, i32*, i32*)* @function_arg_slotno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @function_arg_slotno(%struct.sparc_args* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sparc_args*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.sparc_args* %0, %struct.sparc_args** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @SPARC_INCOMING_INT_ARG_FIRST, align 4
  br label %29

27:                                               ; preds = %7
  %28 = load i32, i32* @SPARC_OUTGOING_INT_ARG_FIRST, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %16, align 4
  %31 = load %struct.sparc_args*, %struct.sparc_args** %9, align 8
  %32 = getelementptr inbounds %struct.sparc_args, %struct.sparc_args* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %17, align 4
  %34 = load i32*, i32** %15, align 8
  store i32 0, i32* %34, align 4
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @TREE_ADDRESSABLE(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %8, align 4
  br label %228

42:                                               ; preds = %37, %29
  %43 = load i64, i64* @TARGET_ARCH32, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @BLKmode, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i64, i64* %11, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @TYPE_ALIGN(i64 %53)
  %55 = load i32, i32* @PARM_BOUNDARY, align 4
  %56 = srem i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 -1, i32* %8, align 4
  br label %228

59:                                               ; preds = %52, %49, %45, %42
  %60 = load i64, i64* @TARGET_ARCH64, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load i64, i64* %11, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @TYPE_ALIGN(i64 %66)
  br label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @GET_MODE_ALIGNMENT(i32 %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i32 [ %67, %65 ], [ %70, %68 ]
  %73 = icmp sge i32 %72, 128
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* %17, align 4
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  %81 = load i32*, i32** %15, align 8
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %74, %71, %59
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @GET_MODE_CLASS(i32 %83)
  store i32 %84, i32* %18, align 4
  %85 = load i64, i64* %11, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %111

87:                                               ; preds = %82
  %88 = load i64, i64* %11, align 8
  %89 = call i64 @TREE_CODE(i64 %88)
  %90 = load i64, i64* @VECTOR_TYPE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %87
  %93 = load i64, i64* %11, align 8
  %94 = call i64 @TREE_TYPE(i64 %93)
  %95 = call i64 @TREE_CODE(i64 %94)
  %96 = load i64, i64* @REAL_TYPE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @BLKmode, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @gcc_assert(i32 %102)
  br label %110

104:                                              ; preds = %92
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @BLKmode, align 4
  %107 = icmp ne i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @gcc_assert(i32 %108)
  store i32 130, i32* %18, align 4
  br label %110

110:                                              ; preds = %104, %98
  br label %111

111:                                              ; preds = %110, %87, %82
  %112 = load i32, i32* %18, align 4
  switch i32 %112, label %222 [
    i32 130, label %113
    i32 132, label %113
    i32 129, label %140
    i32 131, label %140
    i32 128, label %149
  ]

113:                                              ; preds = %111, %111
  %114 = load i64, i64* @TARGET_ARCH64, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %113
  %117 = load i32, i32* @TARGET_FPU, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %116
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %119
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* @SPARC_FP_ARG_MAX, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 -1, i32* %8, align 4
  br label %228

127:                                              ; preds = %122
  %128 = load i32, i32* @SPARC_FP_ARG_FIRST, align 4
  %129 = load i32, i32* %17, align 4
  %130 = mul nsw i32 %129, 2
  %131 = add nsw i32 %128, %130
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @GET_MODE_SIZE(i32 %132)
  %134 = icmp sle i32 %133, 4
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  br label %138

138:                                              ; preds = %135, %127
  br label %224

139:                                              ; preds = %119, %116, %113
  br label %140

140:                                              ; preds = %111, %111, %139
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* @SPARC_INT_ARG_MAX, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 -1, i32* %8, align 4
  br label %228

145:                                              ; preds = %140
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %19, align 4
  br label %224

149:                                              ; preds = %111
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @VOIDmode, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 -1, i32* %8, align 4
  br label %228

154:                                              ; preds = %149
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @BLKmode, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @gcc_assert(i32 %158)
  %160 = load i64, i64* @TARGET_ARCH32, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %175, label %162

162:                                              ; preds = %154
  %163 = load i64, i64* %11, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %162
  %166 = load i64, i64* %11, align 8
  %167 = call i64 @TREE_CODE(i64 %166)
  %168 = load i64, i64* @VECTOR_TYPE, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %165
  %171 = load i64, i64* %11, align 8
  %172 = call i64 @TREE_CODE(i64 %171)
  %173 = load i64, i64* @RECORD_TYPE, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %170, %162, %154
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* @SPARC_INT_ARG_MAX, align 4
  %178 = icmp sge i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  store i32 -1, i32* %8, align 4
  br label %228

180:                                              ; preds = %175
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %17, align 4
  %183 = add nsw i32 %181, %182
  store i32 %183, i32* %19, align 4
  br label %221

184:                                              ; preds = %170, %165
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %185 = load i64, i64* %11, align 8
  %186 = call i64 @TREE_CODE(i64 %185)
  %187 = load i64, i64* @VECTOR_TYPE, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  store i32 1, i32* %21, align 4
  br label %193

190:                                              ; preds = %184
  %191 = load i64, i64* %11, align 8
  %192 = call i32 @scan_record_type(i64 %191, i32* %20, i32* %21, i32* %22)
  br label %193

193:                                              ; preds = %190, %189
  %194 = load i32, i32* %22, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %196, %193
  store i32 0, i32* %21, align 4
  store i32 1, i32* %20, align 4
  br label %200

200:                                              ; preds = %199, %196
  %201 = load i32, i32* %21, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* @SPARC_FP_ARG_MAX, align 4
  %206 = icmp sge i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  store i32 -1, i32* %8, align 4
  br label %228

208:                                              ; preds = %203, %200
  %209 = load i32, i32* %21, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %219, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %20, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load i32, i32* %17, align 4
  %216 = load i32, i32* @SPARC_INT_ARG_MAX, align 4
  %217 = icmp sge i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  store i32 -1, i32* %8, align 4
  br label %228

219:                                              ; preds = %214, %211, %208
  %220 = load i32, i32* %17, align 4
  store i32 %220, i32* %8, align 4
  br label %228

221:                                              ; preds = %180
  br label %224

222:                                              ; preds = %111
  %223 = call i32 (...) @gcc_unreachable()
  br label %224

224:                                              ; preds = %222, %221, %145, %138
  %225 = load i32, i32* %19, align 4
  %226 = load i32*, i32** %14, align 8
  store i32 %225, i32* %226, align 4
  %227 = load i32, i32* %17, align 4
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %224, %219, %218, %207, %179, %153, %144, %126, %58, %41
  %229 = load i32, i32* %8, align 4
  ret i32 %229
}

declare dso_local i64 @TREE_ADDRESSABLE(i64) #1

declare dso_local i32 @TYPE_ALIGN(i64) #1

declare dso_local i32 @GET_MODE_ALIGNMENT(i32) #1

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @scan_record_type(i64, i32*, i32*, i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
