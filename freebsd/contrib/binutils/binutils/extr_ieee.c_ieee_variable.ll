; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@ieee_nn_record = common dso_local global i64 0, align 8
@ieee_atn_record_enum = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i32)* @ieee_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee_variable(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee_handle*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.ieee_handle*
  store %struct.ieee_handle* %19, %struct.ieee_handle** %10, align 8
  %20 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %21 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %27 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %26, i32 0, i32 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %13, align 8
  %32 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %33 = call i32 @ieee_pop_type(%struct.ieee_handle* %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %35 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %34, i32 0, i32 3
  %36 = call i32 @ieee_buffer_emptyp(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %42 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %43 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %42, i32 0, i32 3
  %44 = call i32 @ieee_change_buffer(%struct.ieee_handle* %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %4
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %5, align 8
  br label %272

48:                                               ; preds = %4
  %49 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %50 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %11, align 4
  %52 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %53 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %57 = load i64, i64* @ieee_nn_record, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @ieee_write_byte(%struct.ieee_handle* %56, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %48
  %62 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @ieee_write_number(%struct.ieee_handle* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %61
  %67 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @ieee_write_id(%struct.ieee_handle* %67, i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %73 = load i64, i64* @ieee_atn_record_enum, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @ieee_write_2bytes(%struct.ieee_handle* %72, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @ieee_write_number(%struct.ieee_handle* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @ieee_write_number(%struct.ieee_handle* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82, %77, %71, %66, %61, %48
  %88 = load i64, i64* @FALSE, align 8
  store i64 %88, i64* %5, align 8
  br label %272

89:                                               ; preds = %82
  %90 = load i32, i32* %8, align 4
  switch i32 %90, label %91 [
    i32 132, label %93
    i32 128, label %110
    i32 130, label %127
    i32 131, label %144
    i32 129, label %157
  ]

91:                                               ; preds = %89
  %92 = call i32 (...) @abort() #3
  unreachable

93:                                               ; preds = %89
  %94 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %95 = call i32 @ieee_write_number(%struct.ieee_handle* %94, i32 8)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %99 = load i64, i64* @FALSE, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add i32 %101, %102
  %104 = call i32 @ieee_add_range(%struct.ieee_handle* %98, i64 %99, i32 %100, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %97, %93
  %107 = load i64, i64* @FALSE, align 8
  store i64 %107, i64* %5, align 8
  br label %272

108:                                              ; preds = %97
  store i32 0, i32* %16, align 4
  %109 = load i64, i64* @TRUE, align 8
  store i64 %109, i64* %15, align 8
  br label %174

110:                                              ; preds = %89
  %111 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %112 = call i32 @ieee_write_number(%struct.ieee_handle* %111, i32 3)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %116 = load i64, i64* @FALSE, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %12, align 4
  %120 = add i32 %118, %119
  %121 = call i32 @ieee_add_range(%struct.ieee_handle* %115, i64 %116, i32 %117, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %114, %110
  %124 = load i64, i64* @FALSE, align 8
  store i64 %124, i64* %5, align 8
  br label %272

125:                                              ; preds = %114
  store i32 1, i32* %16, align 4
  %126 = load i64, i64* @TRUE, align 8
  store i64 %126, i64* %15, align 8
  br label %174

127:                                              ; preds = %89
  %128 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %129 = call i32 @ieee_write_number(%struct.ieee_handle* %128, i32 3)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %133 = load i64, i64* @FALSE, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %12, align 4
  %137 = add i32 %135, %136
  %138 = call i32 @ieee_add_range(%struct.ieee_handle* %132, i64 %133, i32 %134, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %131, %127
  %141 = load i64, i64* @FALSE, align 8
  store i64 %141, i64* %5, align 8
  br label %272

142:                                              ; preds = %131
  store i32 2, i32* %16, align 4
  %143 = load i64, i64* @TRUE, align 8
  store i64 %143, i64* %15, align 8
  br label %174

144:                                              ; preds = %89
  %145 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %146 = call i32 @ieee_write_number(%struct.ieee_handle* %145, i32 1)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @ieee_write_number(%struct.ieee_handle* %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %148, %144
  %154 = load i64, i64* @FALSE, align 8
  store i64 %154, i64* %5, align 8
  br label %272

155:                                              ; preds = %148
  store i32 2, i32* %16, align 4
  %156 = load i64, i64* @FALSE, align 8
  store i64 %156, i64* %15, align 8
  br label %174

157:                                              ; preds = %89
  %158 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %159 = call i32 @ieee_write_number(%struct.ieee_handle* %158, i32 2)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %157
  %162 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %163 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %164 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @ieee_genreg_to_regno(i32 %165, i32 %166)
  %168 = call i32 @ieee_write_number(%struct.ieee_handle* %162, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %161, %157
  %171 = load i64, i64* @FALSE, align 8
  store i64 %171, i64* %5, align 8
  br label %272

172:                                              ; preds = %161
  store i32 2, i32* %16, align 4
  %173 = load i64, i64* @FALSE, align 8
  store i64 %173, i64* %15, align 8
  br label %174

174:                                              ; preds = %172, %155, %142, %125, %108
  %175 = load i64, i64* %15, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @ieee_write_asn(%struct.ieee_handle* %178, i32 %179, i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %177
  %184 = load i64, i64* @FALSE, align 8
  store i64 %184, i64* %5, align 8
  br label %272

185:                                              ; preds = %177
  br label %186

186:                                              ; preds = %185, %174
  %187 = load i64, i64* %13, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %270

189:                                              ; preds = %186
  %190 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %191 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %17, align 4
  %193 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %194 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = add i32 %195, 1
  store i32 %196, i32* %194, align 8
  %197 = load i32, i32* %16, align 4
  %198 = icmp ne i32 %197, 2
  br i1 %198, label %199, label %208

199:                                              ; preds = %189
  %200 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %201 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %202 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %201, i32 0, i32 1
  %203 = call i32 @ieee_change_buffer(%struct.ieee_handle* %200, i32* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %199
  %206 = load i64, i64* @FALSE, align 8
  store i64 %206, i64* %5, align 8
  br label %272

207:                                              ; preds = %199
  br label %208

208:                                              ; preds = %207, %189
  %209 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %210 = load i64, i64* @ieee_nn_record, align 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 @ieee_write_byte(%struct.ieee_handle* %209, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %267

214:                                              ; preds = %208
  %215 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %216 = load i32, i32* %17, align 4
  %217 = call i32 @ieee_write_number(%struct.ieee_handle* %215, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %267

219:                                              ; preds = %214
  %220 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %221 = call i32 @ieee_write_id(%struct.ieee_handle* %220, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %267

223:                                              ; preds = %219
  %224 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %225 = load i64, i64* @ieee_atn_record_enum, align 8
  %226 = trunc i64 %225 to i32
  %227 = call i32 @ieee_write_2bytes(%struct.ieee_handle* %224, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %267

229:                                              ; preds = %223
  %230 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %231 = load i32, i32* %17, align 4
  %232 = call i32 @ieee_write_number(%struct.ieee_handle* %230, i32 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %267

234:                                              ; preds = %229
  %235 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %236 = call i32 @ieee_write_number(%struct.ieee_handle* %235, i32 0)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %267

238:                                              ; preds = %234
  %239 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %240 = call i32 @ieee_write_number(%struct.ieee_handle* %239, i32 62)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %267

242:                                              ; preds = %238
  %243 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %244 = call i32 @ieee_write_number(%struct.ieee_handle* %243, i32 80)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %267

246:                                              ; preds = %242
  %247 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %248 = call i32 @ieee_write_number(%struct.ieee_handle* %247, i32 3)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %267

250:                                              ; preds = %246
  %251 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %252 = load i32, i32* %17, align 4
  %253 = call i32 @ieee_write_asn(%struct.ieee_handle* %251, i32 %252, i32 82)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %267

255:                                              ; preds = %250
  %256 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %257 = load i32, i32* %17, align 4
  %258 = load i32, i32* %16, align 4
  %259 = call i32 @ieee_write_asn(%struct.ieee_handle* %256, i32 %257, i32 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %255
  %262 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %263 = load i32, i32* %17, align 4
  %264 = load i8*, i8** %7, align 8
  %265 = call i32 @ieee_write_atn65(%struct.ieee_handle* %262, i32 %263, i8* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %261, %255, %250, %246, %242, %238, %234, %229, %223, %219, %214, %208
  %268 = load i64, i64* @FALSE, align 8
  store i64 %268, i64* %5, align 8
  br label %272

269:                                              ; preds = %261
  br label %270

270:                                              ; preds = %269, %186
  %271 = load i64, i64* @TRUE, align 8
  store i64 %271, i64* %5, align 8
  br label %272

272:                                              ; preds = %270, %267, %205, %183, %170, %153, %140, %123, %106, %87, %46
  %273 = load i64, i64* %5, align 8
  ret i64 %273
}

declare dso_local i32 @ieee_pop_type(%struct.ieee_handle*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ieee_buffer_emptyp(i32*) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #1

declare dso_local i32 @ieee_write_2bytes(%struct.ieee_handle*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @ieee_add_range(%struct.ieee_handle*, i64, i32, i32) #1

declare dso_local i32 @ieee_genreg_to_regno(i32, i32) #1

declare dso_local i32 @ieee_write_asn(%struct.ieee_handle*, i32, i32) #1

declare dso_local i32 @ieee_write_atn65(%struct.ieee_handle*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
