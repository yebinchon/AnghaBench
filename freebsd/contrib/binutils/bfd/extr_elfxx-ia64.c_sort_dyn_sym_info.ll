; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-ia64.c_sort_dyn_sym_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-ia64.c_sort_dyn_sym_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfNN_ia64_dyn_sym_info = type { i64, i64 }

@addend_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elfNN_ia64_dyn_sym_info*, i32)* @sort_dyn_sym_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_dyn_sym_info(%struct.elfNN_ia64_dyn_sym_info* %0, i32 %1) #0 {
  %3 = alloca %struct.elfNN_ia64_dyn_sym_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.elfNN_ia64_dyn_sym_info* %0, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @addend_compare, align 4
  %18 = call i32 @qsort(%struct.elfNN_ia64_dyn_sym_info* %15, i32 %16, i32 16, i32 %17)
  %19 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %20 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %19, i64 0
  %21 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %24 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %23, i64 0
  %25 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %27

27:                                               ; preds = %60, %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %27
  %32 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %32, i64 %34
  %36 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %45, i64 %47
  %49 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %44, %41
  br label %63

52:                                               ; preds = %31
  %53 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %53, i64 %55
  %57 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %5, align 8
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %27

63:                                               ; preds = %51, %27
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  store i32 %64, i32* %12, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %360

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %341, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %358

74:                                               ; preds = %70
  %75 = load i32, i32* %12, align 4
  %76 = sub i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %77, -1
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %81, i64 %83
  %85 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %84, i32 0, i32 1
  store i64 %80, i64* %85, align 8
  br label %86

86:                                               ; preds = %79, %74
  %87 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %87, i64 %89
  %91 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %5, align 8
  %93 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %93, i64 %95
  %97 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %144

102:                                              ; preds = %86
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %130, %102
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %105
  %110 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %111 = load i32, i32* %13, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %110, i64 %112
  %114 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %5, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %133

119:                                              ; preds = %109
  %120 = load i64, i64* %7, align 8
  %121 = icmp eq i64 %120, -1
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %124 = load i32, i32* %13, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %123, i64 %125
  %127 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %7, align 8
  br label %129

129:                                              ; preds = %122, %119
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %13, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %105

133:                                              ; preds = %118, %105
  %134 = load i64, i64* %7, align 8
  %135 = icmp ne i64 %134, -1
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load i64, i64* %7, align 8
  %138 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %139 = load i32, i32* %9, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %138, i64 %140
  %142 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %141, i32 0, i32 1
  store i64 %137, i64* %142, align 8
  br label %143

143:                                              ; preds = %136, %133
  br label %146

144:                                              ; preds = %86
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %144, %143
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp uge i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %358

151:                                              ; preds = %146
  %152 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %153 = load i32, i32* %13, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %152, i64 %154
  %156 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %6, align 8
  %158 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %159 = load i32, i32* %13, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %158, i64 %160
  %162 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %7, align 8
  %164 = load i32, i32* %13, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %210, %151
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %4, align 4
  %169 = icmp ult i32 %167, %168
  br i1 %169, label %170, label %213

170:                                              ; preds = %166
  %171 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %172 = load i32, i32* %10, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %171, i64 %173
  %175 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %5, align 8
  %177 = load i64, i64* %5, align 8
  %178 = load i64, i64* %6, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %202

180:                                              ; preds = %170
  %181 = load i64, i64* %7, align 8
  %182 = icmp eq i64 %181, -1
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %185 = load i32, i32* %10, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %184, i64 %186
  %188 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %7, align 8
  br label %190

190:                                              ; preds = %183, %180
  %191 = load i64, i64* %7, align 8
  %192 = icmp ne i64 %191, -1
  br i1 %192, label %193, label %201

193:                                              ; preds = %190
  %194 = load i64, i64* %7, align 8
  %195 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sub i32 %196, 1
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %195, i64 %198
  %200 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %199, i32 0, i32 1
  store i64 %194, i64* %200, align 8
  br label %201

201:                                              ; preds = %193, %190
  br label %213

202:                                              ; preds = %170
  %203 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %204 = load i32, i32* %10, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %203, i64 %205
  %207 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %7, align 8
  %209 = load i64, i64* %5, align 8
  store i64 %209, i64* %6, align 8
  br label %210

210:                                              ; preds = %202
  %211 = load i32, i32* %10, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %166

213:                                              ; preds = %201, %166
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %13, align 4
  %216 = sub i32 %214, %215
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %10, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %14, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %341

221:                                              ; preds = %213
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* %4, align 4
  %224 = icmp ult i32 %222, %223
  br i1 %224, label %225, label %341

225:                                              ; preds = %221
  %226 = load i32, i32* %10, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %13, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %13, align 4
  br label %230

230:                                              ; preds = %255, %225
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* %4, align 4
  %233 = icmp ult i32 %231, %232
  br i1 %233, label %234, label %260

234:                                              ; preds = %230
  %235 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %236 = load i32, i32* %11, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %235, i64 %237
  %239 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %5, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %234
  br label %260

244:                                              ; preds = %234
  %245 = load i64, i64* %7, align 8
  %246 = icmp eq i64 %245, -1
  br i1 %246, label %247, label %254

247:                                              ; preds = %244
  %248 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %249 = load i32, i32* %11, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %248, i64 %250
  %252 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %7, align 8
  br label %254

254:                                              ; preds = %247, %244
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %11, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %11, align 4
  %258 = load i32, i32* %13, align 4
  %259 = add i32 %258, 1
  store i32 %259, i32* %13, align 4
  br label %230

260:                                              ; preds = %243, %230
  %261 = load i64, i64* %5, align 8
  %262 = load i64, i64* %6, align 8
  %263 = icmp eq i64 %261, %262
  %264 = zext i1 %263 to i32
  %265 = call i32 @BFD_ASSERT(i32 %264)
  %266 = load i64, i64* %7, align 8
  %267 = icmp ne i64 %266, -1
  br i1 %267, label %268, label %276

268:                                              ; preds = %260
  %269 = load i64, i64* %7, align 8
  %270 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %271 = load i32, i32* %11, align 4
  %272 = sub i32 %271, 1
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %270, i64 %273
  %275 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %274, i32 0, i32 1
  store i64 %269, i64* %275, align 8
  br label %276

276:                                              ; preds = %268, %260
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* %4, align 4
  %279 = icmp ult i32 %277, %278
  br i1 %279, label %280, label %340

280:                                              ; preds = %276
  %281 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %282 = load i32, i32* %11, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %281, i64 %283
  %285 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %6, align 8
  %287 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %288 = load i32, i32* %11, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %287, i64 %289
  %291 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* %7, align 8
  %293 = load i32, i32* %11, align 4
  %294 = add i32 %293, 1
  store i32 %294, i32* %10, align 4
  br label %295

295:                                              ; preds = %330, %280
  %296 = load i32, i32* %10, align 4
  %297 = load i32, i32* %4, align 4
  %298 = icmp ult i32 %296, %297
  br i1 %298, label %299, label %333

299:                                              ; preds = %295
  %300 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %301 = load i32, i32* %10, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %300, i64 %302
  %304 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %5, align 8
  %306 = load i64, i64* %5, align 8
  %307 = load i64, i64* %6, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %320

309:                                              ; preds = %299
  %310 = load i64, i64* %7, align 8
  %311 = icmp eq i64 %310, -1
  br i1 %311, label %312, label %319

312:                                              ; preds = %309
  %313 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %314 = load i32, i32* %10, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %313, i64 %315
  %317 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  store i64 %318, i64* %7, align 8
  br label %319

319:                                              ; preds = %312, %309
  br label %333

320:                                              ; preds = %299
  %321 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %322 = load i32, i32* %10, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %321, i64 %323
  %325 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  store i64 %326, i64* %7, align 8
  %327 = load i64, i64* %5, align 8
  store i64 %327, i64* %6, align 8
  %328 = load i32, i32* %11, align 4
  %329 = add i32 %328, 1
  store i32 %329, i32* %11, align 4
  br label %330

330:                                              ; preds = %320
  %331 = load i32, i32* %10, align 4
  %332 = add i32 %331, 1
  store i32 %332, i32* %10, align 4
  br label %295

333:                                              ; preds = %319, %295
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* %13, align 4
  %336 = sub i32 %334, %335
  %337 = add i32 %336, 1
  store i32 %337, i32* %14, align 4
  %338 = load i32, i32* %11, align 4
  %339 = add i32 %338, 1
  store i32 %339, i32* %8, align 4
  br label %340

340:                                              ; preds = %333, %276
  br label %341

341:                                              ; preds = %340, %221, %213
  %342 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %343 = load i32, i32* %12, align 4
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %342, i64 %344
  %346 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %347 = load i32, i32* %13, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %346, i64 %348
  %350 = load i32, i32* %14, align 4
  %351 = zext i32 %350 to i64
  %352 = mul i64 %351, 16
  %353 = trunc i64 %352 to i32
  %354 = call i32 @memmove(%struct.elfNN_ia64_dyn_sym_info* %345, %struct.elfNN_ia64_dyn_sym_info* %349, i32 %353)
  %355 = load i32, i32* %14, align 4
  %356 = load i32, i32* %12, align 4
  %357 = add i32 %356, %355
  store i32 %357, i32* %12, align 4
  br label %70

358:                                              ; preds = %150, %70
  %359 = load i32, i32* %12, align 4
  store i32 %359, i32* %4, align 4
  br label %378

360:                                              ; preds = %63
  %361 = load i32, i32* %12, align 4
  %362 = load i32, i32* %4, align 4
  %363 = icmp ult i32 %361, %362
  br i1 %363, label %364, label %377

364:                                              ; preds = %360
  %365 = load i64, i64* %7, align 8
  %366 = icmp ne i64 %365, -1
  br i1 %366, label %367, label %375

367:                                              ; preds = %364
  %368 = load i64, i64* %7, align 8
  %369 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %3, align 8
  %370 = load i32, i32* %12, align 4
  %371 = sub i32 %370, 1
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %369, i64 %372
  %374 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %373, i32 0, i32 1
  store i64 %368, i64* %374, align 8
  br label %375

375:                                              ; preds = %367, %364
  %376 = load i32, i32* %12, align 4
  store i32 %376, i32* %4, align 4
  br label %377

377:                                              ; preds = %375, %360
  br label %378

378:                                              ; preds = %377, %358
  %379 = load i32, i32* %4, align 4
  ret i32 %379
}

declare dso_local i32 @qsort(%struct.elfNN_ia64_dyn_sym_info*, i32, i32, i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @memmove(%struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
