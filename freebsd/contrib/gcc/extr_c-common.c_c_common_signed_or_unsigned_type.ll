; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_common_signed_or_unsigned_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_common_signed_or_unsigned_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@signed_char_type_node = common dso_local global i32 0, align 4
@unsigned_char_type_node = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@unsigned_type_node = common dso_local global i32 0, align 4
@short_integer_type_node = common dso_local global i32 0, align 4
@short_unsigned_type_node = common dso_local global i32 0, align 4
@long_integer_type_node = common dso_local global i32 0, align 4
@long_unsigned_type_node = common dso_local global i32 0, align 4
@long_long_integer_type_node = common dso_local global i32 0, align 4
@long_long_unsigned_type_node = common dso_local global i32 0, align 4
@widest_integer_literal_type_node = common dso_local global i32 0, align 4
@widest_unsigned_literal_type_node = common dso_local global i32 0, align 4
@intDI_type_node = common dso_local global i32 0, align 4
@unsigned_intDI_type_node = common dso_local global i32 0, align 4
@intSI_type_node = common dso_local global i32 0, align 4
@unsigned_intSI_type_node = common dso_local global i32 0, align 4
@intHI_type_node = common dso_local global i32 0, align 4
@unsigned_intHI_type_node = common dso_local global i32 0, align 4
@intQI_type_node = common dso_local global i32 0, align 4
@unsigned_intQI_type_node = common dso_local global i32 0, align 4
@intTI_type_node = common dso_local global i32 0, align 4
@unsigned_intTI_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_common_signed_or_unsigned_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @INTEGRAL_TYPE_P(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @TYPE_UNSIGNED(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %3, align 4
  br label %266

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %17)
  %19 = load i32, i32* @signed_char_type_node, align 4
  %20 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %19)
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = call i64 (...) @c_dialect_cxx()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @TYPE_PRECISION(i32 %26)
  %28 = load i32, i32* @signed_char_type_node, align 4
  %29 = call i32 @TYPE_PRECISION(i32 %28)
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @unsigned_char_type_node, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @signed_char_type_node, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %3, align 4
  br label %266

40:                                               ; preds = %25, %16
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %41)
  %43 = load i32, i32* @integer_type_node, align 4
  %44 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %43)
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = call i64 (...) @c_dialect_cxx()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @TYPE_PRECISION(i32 %50)
  %52 = load i32, i32* @integer_type_node, align 4
  %53 = call i32 @TYPE_PRECISION(i32 %52)
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @unsigned_type_node, align 4
  br label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @integer_type_node, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %3, align 4
  br label %266

64:                                               ; preds = %49, %40
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %65)
  %67 = load i32, i32* @short_integer_type_node, align 4
  %68 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %67)
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %64
  %71 = call i64 (...) @c_dialect_cxx()
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @TYPE_PRECISION(i32 %74)
  %76 = load i32, i32* @short_integer_type_node, align 4
  %77 = call i32 @TYPE_PRECISION(i32 %76)
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %73, %70
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @short_unsigned_type_node, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @short_integer_type_node, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  store i32 %87, i32* %3, align 4
  br label %266

88:                                               ; preds = %73, %64
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %89)
  %91 = load i32, i32* @long_integer_type_node, align 4
  %92 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %91)
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %88
  %95 = call i64 (...) @c_dialect_cxx()
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @TYPE_PRECISION(i32 %98)
  %100 = load i32, i32* @long_integer_type_node, align 4
  %101 = call i32 @TYPE_PRECISION(i32 %100)
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %97, %94
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* @long_unsigned_type_node, align 4
  br label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @long_integer_type_node, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  store i32 %111, i32* %3, align 4
  br label %266

112:                                              ; preds = %97, %88
  %113 = load i32, i32* %5, align 4
  %114 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %113)
  %115 = load i32, i32* @long_long_integer_type_node, align 4
  %116 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %115)
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %136

118:                                              ; preds = %112
  %119 = call i64 (...) @c_dialect_cxx()
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @TYPE_PRECISION(i32 %122)
  %124 = load i32, i32* @long_long_integer_type_node, align 4
  %125 = call i32 @TYPE_PRECISION(i32 %124)
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %121, %118
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* @long_long_unsigned_type_node, align 4
  br label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @long_long_integer_type_node, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  store i32 %135, i32* %3, align 4
  br label %266

136:                                              ; preds = %121, %112
  %137 = load i32, i32* %5, align 4
  %138 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %137)
  %139 = load i32, i32* @widest_integer_literal_type_node, align 4
  %140 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %139)
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %136
  %143 = call i64 (...) @c_dialect_cxx()
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @TYPE_PRECISION(i32 %146)
  %148 = load i32, i32* @widest_integer_literal_type_node, align 4
  %149 = call i32 @TYPE_PRECISION(i32 %148)
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %145, %142
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* @widest_unsigned_literal_type_node, align 4
  br label %158

156:                                              ; preds = %151
  %157 = load i32, i32* @widest_integer_literal_type_node, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  store i32 %159, i32* %3, align 4
  br label %266

160:                                              ; preds = %145, %136
  %161 = load i32, i32* %5, align 4
  %162 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %161)
  %163 = load i32, i32* @intDI_type_node, align 4
  %164 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %163)
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %160
  %167 = call i64 (...) @c_dialect_cxx()
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @TYPE_PRECISION(i32 %170)
  %172 = load i32, i32* @intDI_type_node, align 4
  %173 = call i32 @TYPE_PRECISION(i32 %172)
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %169, %166
  %176 = load i32, i32* %4, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32, i32* @unsigned_intDI_type_node, align 4
  br label %182

180:                                              ; preds = %175
  %181 = load i32, i32* @intDI_type_node, align 4
  br label %182

182:                                              ; preds = %180, %178
  %183 = phi i32 [ %179, %178 ], [ %181, %180 ]
  store i32 %183, i32* %3, align 4
  br label %266

184:                                              ; preds = %169, %160
  %185 = load i32, i32* %5, align 4
  %186 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %185)
  %187 = load i32, i32* @intSI_type_node, align 4
  %188 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %187)
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %208

190:                                              ; preds = %184
  %191 = call i64 (...) @c_dialect_cxx()
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %5, align 4
  %195 = call i32 @TYPE_PRECISION(i32 %194)
  %196 = load i32, i32* @intSI_type_node, align 4
  %197 = call i32 @TYPE_PRECISION(i32 %196)
  %198 = icmp eq i32 %195, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %193, %190
  %200 = load i32, i32* %4, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = load i32, i32* @unsigned_intSI_type_node, align 4
  br label %206

204:                                              ; preds = %199
  %205 = load i32, i32* @intSI_type_node, align 4
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi i32 [ %203, %202 ], [ %205, %204 ]
  store i32 %207, i32* %3, align 4
  br label %266

208:                                              ; preds = %193, %184
  %209 = load i32, i32* %5, align 4
  %210 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %209)
  %211 = load i32, i32* @intHI_type_node, align 4
  %212 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %211)
  %213 = icmp eq i32 %210, %212
  br i1 %213, label %214, label %232

214:                                              ; preds = %208
  %215 = call i64 (...) @c_dialect_cxx()
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %5, align 4
  %219 = call i32 @TYPE_PRECISION(i32 %218)
  %220 = load i32, i32* @intHI_type_node, align 4
  %221 = call i32 @TYPE_PRECISION(i32 %220)
  %222 = icmp eq i32 %219, %221
  br i1 %222, label %223, label %232

223:                                              ; preds = %217, %214
  %224 = load i32, i32* %4, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = load i32, i32* @unsigned_intHI_type_node, align 4
  br label %230

228:                                              ; preds = %223
  %229 = load i32, i32* @intHI_type_node, align 4
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i32 [ %227, %226 ], [ %229, %228 ]
  store i32 %231, i32* %3, align 4
  br label %266

232:                                              ; preds = %217, %208
  %233 = load i32, i32* %5, align 4
  %234 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %233)
  %235 = load i32, i32* @intQI_type_node, align 4
  %236 = call i32 (i32, ...) bitcast (i32 (...)* @TYPE_MODE to i32 (i32, ...)*)(i32 %235)
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %238, label %256

238:                                              ; preds = %232
  %239 = call i64 (...) @c_dialect_cxx()
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %238
  %242 = load i32, i32* %5, align 4
  %243 = call i32 @TYPE_PRECISION(i32 %242)
  %244 = load i32, i32* @intQI_type_node, align 4
  %245 = call i32 @TYPE_PRECISION(i32 %244)
  %246 = icmp eq i32 %243, %245
  br i1 %246, label %247, label %256

247:                                              ; preds = %241, %238
  %248 = load i32, i32* %4, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = load i32, i32* @unsigned_intQI_type_node, align 4
  br label %254

252:                                              ; preds = %247
  %253 = load i32, i32* @intQI_type_node, align 4
  br label %254

254:                                              ; preds = %252, %250
  %255 = phi i32 [ %251, %250 ], [ %253, %252 ]
  store i32 %255, i32* %3, align 4
  br label %266

256:                                              ; preds = %241, %232
  %257 = call i64 (...) @c_dialect_cxx()
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  %260 = load i32, i32* %5, align 4
  store i32 %260, i32* %3, align 4
  br label %266

261:                                              ; preds = %256
  %262 = load i32, i32* %5, align 4
  %263 = call i32 @TYPE_PRECISION(i32 %262)
  %264 = load i32, i32* %4, align 4
  %265 = call i32 @build_nonstandard_integer_type(i32 %263, i32 %264)
  store i32 %265, i32* %3, align 4
  br label %266

266:                                              ; preds = %261, %259, %254, %230, %206, %182, %158, %134, %110, %86, %62, %38, %14
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local i32 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @TYPE_MODE(...) #1

declare dso_local i64 @c_dialect_cxx(...) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @build_nonstandard_integer_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
