; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_write_external_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_write_external_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_27__** }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }

@IEEE_REFERENCE_BASE = common dso_local global i32 0, align 4
@IEEE_PUBLIC_BASE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ieee_external_reference_enum = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ieee_weak_external_reference_enum = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@ieee_external_symbol_enum = common dso_local global i32 0, align 4
@ieee_attribute_record_enum = common dso_local global i32 0, align 4
@ieee_value_record_enum = common dso_local global i32 0, align 4
@EXEC_P = common dso_local global i32 0, align 4
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_21__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_26__*)* @ieee_write_external_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee_write_external_part(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_27__**, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %12 = call %struct.TYPE_25__* @IEEE_DATA(%struct.TYPE_26__* %11)
  store %struct.TYPE_25__* %12, %struct.TYPE_25__** %5, align 8
  %13 = load i32, i32* @IEEE_REFERENCE_BASE, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @IEEE_PUBLIC_BASE, align 4
  %15 = add nsw i32 %14, 2
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %17 = call i32 @bfd_tell(%struct.TYPE_26__* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %20, align 8
  %22 = icmp ne %struct.TYPE_27__** %21, null
  br i1 %22, label %23, label %265

23:                                               ; preds = %1
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %25, align 8
  store %struct.TYPE_27__** %26, %struct.TYPE_27__*** %4, align 8
  br label %27

27:                                               ; preds = %261, %23
  %28 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %4, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %28, align 8
  %30 = icmp ne %struct.TYPE_27__* %29, null
  br i1 %30, label %31, label %264

31:                                               ; preds = %27
  %32 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %4, align 8
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %32, align 8
  store %struct.TYPE_27__* %33, %struct.TYPE_27__** %10, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = call i64 @bfd_is_und_section(%struct.TYPE_20__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %31
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %41 = load i32, i32* @ieee_external_reference_enum, align 4
  %42 = call i32 @ieee_write_byte(%struct.TYPE_26__* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ieee_write_int(%struct.TYPE_26__* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ieee_write_id(%struct.TYPE_26__* %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49, %44, %39
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %2, align 8
  br label %276

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = load i64, i64* @TRUE, align 8
  store i64 %64, i64* %9, align 8
  br label %260

65:                                               ; preds = %31
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = call i64 @bfd_is_com_section(%struct.TYPE_20__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %114

71:                                               ; preds = %65
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %73 = load i32, i32* @ieee_external_reference_enum, align 4
  %74 = call i32 @ieee_write_byte(%struct.TYPE_26__* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %71
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @ieee_write_int(%struct.TYPE_26__* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %76
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ieee_write_id(%struct.TYPE_26__* %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %81
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %90 = load i32, i32* @ieee_weak_external_reference_enum, align 4
  %91 = call i32 @ieee_write_byte(%struct.TYPE_26__* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @ieee_write_int(%struct.TYPE_26__* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ieee_write_int(%struct.TYPE_26__* %99, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %98, %93, %88, %81, %76, %71
  %106 = load i64, i64* @FALSE, align 8
  store i64 %106, i64* %2, align 8
  br label %276

107:                                              ; preds = %98
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %6, align 4
  %113 = load i64, i64* @TRUE, align 8
  store i64 %113, i64* %9, align 8
  br label %259

114:                                              ; preds = %65
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @BSF_GLOBAL, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %257

121:                                              ; preds = %114
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %123 = load i32, i32* @ieee_external_symbol_enum, align 4
  %124 = call i32 @ieee_write_byte(%struct.TYPE_26__* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %160

126:                                              ; preds = %121
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @ieee_write_int(%struct.TYPE_26__* %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %160

131:                                              ; preds = %126
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @ieee_write_id(%struct.TYPE_26__* %132, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %160

138:                                              ; preds = %131
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %140 = load i32, i32* @ieee_attribute_record_enum, align 4
  %141 = call i32 @ieee_write_2bytes(%struct.TYPE_26__* %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %138
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @ieee_write_int(%struct.TYPE_26__* %144, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %143
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %150 = call i32 @ieee_write_byte(%struct.TYPE_26__* %149, i32 15)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %154 = call i32 @ieee_write_byte(%struct.TYPE_26__* %153, i32 19)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %158 = call i32 @ieee_write_byte(%struct.TYPE_26__* %157, i32 1)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %156, %152, %148, %143, %138, %131, %126, %121
  %161 = load i64, i64* @FALSE, align 8
  store i64 %161, i64* %2, align 8
  br label %276

162:                                              ; preds = %156
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %164 = load i32, i32* @ieee_value_record_enum, align 4
  %165 = call i32 @ieee_write_2bytes(%struct.TYPE_26__* %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @ieee_write_int(%struct.TYPE_26__* %168, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %167, %162
  %173 = load i64, i64* @FALSE, align 8
  store i64 %173, i64* %2, align 8
  br label %276

174:                                              ; preds = %167
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %176, align 8
  %178 = call i32 @bfd_is_abs_section(%struct.TYPE_20__* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %236, label %180

180:                                              ; preds = %174
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @EXEC_P, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %211

187:                                              ; preds = %180
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add i32 %191, %196
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = add i32 %197, %204
  %206 = call i32 @ieee_write_int(%struct.TYPE_26__* %188, i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %187
  %209 = load i64, i64* @FALSE, align 8
  store i64 %209, i64* %2, align 8
  br label %276

210:                                              ; preds = %187
  br label %235

211:                                              ; preds = %180
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = add i32 %215, %220
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i64, i64* @FALSE, align 8
  %230 = call i32 @ieee_write_expression(%struct.TYPE_26__* %212, i32 %221, i32 %228, i64 %229, i32 0)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %211
  %233 = load i64, i64* @FALSE, align 8
  store i64 %233, i64* %2, align 8
  br label %276

234:                                              ; preds = %211
  br label %235

235:                                              ; preds = %234, %210
  br label %250

236:                                              ; preds = %174
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bfd_abs_section_ptr, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i64, i64* @FALSE, align 8
  %245 = call i32 @ieee_write_expression(%struct.TYPE_26__* %237, i32 %240, i32 %243, i64 %244, i32 0)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %236
  %248 = load i64, i64* @FALSE, align 8
  store i64 %248, i64* %2, align 8
  br label %276

249:                                              ; preds = %236
  br label %250

250:                                              ; preds = %249, %235
  %251 = load i32, i32* %7, align 4
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* %7, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %7, align 4
  %256 = load i64, i64* @TRUE, align 8
  store i64 %256, i64* %9, align 8
  br label %258

257:                                              ; preds = %114
  br label %258

258:                                              ; preds = %257, %250
  br label %259

259:                                              ; preds = %258, %107
  br label %260

260:                                              ; preds = %259, %58
  br label %261

261:                                              ; preds = %260
  %262 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %262, i32 1
  store %struct.TYPE_27__** %263, %struct.TYPE_27__*** %4, align 8
  br label %27

264:                                              ; preds = %27
  br label %265

265:                                              ; preds = %264, %1
  %266 = load i64, i64* %9, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = load i32, i32* %8, align 4
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 0
  store i32 %269, i32* %273, align 4
  br label %274

274:                                              ; preds = %268, %265
  %275 = load i64, i64* @TRUE, align 8
  store i64 %275, i64* %2, align 8
  br label %276

276:                                              ; preds = %274, %247, %232, %208, %172, %160, %105, %56
  %277 = load i64, i64* %2, align 8
  ret i64 %277
}

declare dso_local %struct.TYPE_25__* @IEEE_DATA(%struct.TYPE_26__*) #1

declare dso_local i32 @bfd_tell(%struct.TYPE_26__*) #1

declare dso_local i64 @bfd_is_und_section(%struct.TYPE_20__*) #1

declare dso_local i32 @ieee_write_byte(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ieee_write_int(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ieee_write_id(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @bfd_is_com_section(%struct.TYPE_20__*) #1

declare dso_local i32 @ieee_write_2bytes(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @bfd_is_abs_section(%struct.TYPE_20__*) #1

declare dso_local i32 @ieee_write_expression(%struct.TYPE_26__*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
