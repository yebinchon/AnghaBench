; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_fix_syms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_fix_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, %struct.TYPE_12__*, %struct.TYPE_9__*, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_8__ = type { %struct.bfd_link_hash_entry* }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@SEC_EXCLUDE = common dso_local global i32 0, align 4
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_12__* null, align 8
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_THREAD_LOCAL = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_hash_entry*, i8*)* @fix_syms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fix_syms(%struct.bfd_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.bfd_link_hash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.bfd_link_hash_entry* %0, %struct.bfd_link_hash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %5, align 8
  %11 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %12 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @bfd_link_hash_warning, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %18 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %20, align 8
  store %struct.bfd_link_hash_entry* %21, %struct.bfd_link_hash_entry** %3, align 8
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %24 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @bfd_link_hash_defined, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %30 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @bfd_link_hash_defweak, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %276

34:                                               ; preds = %28, %22
  %35 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %36 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %6, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %275

42:                                               ; preds = %34
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = icmp ne %struct.TYPE_12__* %45, null
  br i1 %46, label %47, label %275

47:                                               ; preds = %42
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SEC_EXCLUDE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %275

56:                                               ; preds = %47
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = call i64 @bfd_section_removed_from_list(i32* %57, %struct.TYPE_12__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %275

63:                                               ; preds = %56
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %66, %71
  %73 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %74 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %72
  store i64 %78, i64* %76, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 6
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %8, align 8
  br label %84

84:                                               ; preds = %101, %63
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %86 = icmp ne %struct.TYPE_12__* %85, null
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SEC_EXCLUDE, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = call i64 @bfd_section_removed_from_list(i32* %95, %struct.TYPE_12__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  br label %105

100:                                              ; preds = %94, %87
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 6
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %8, align 8
  br label %84

105:                                              ; preds = %99, %84
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 5
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = icmp ne %struct.TYPE_12__* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 5
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 6
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  store %struct.TYPE_12__* %119, %struct.TYPE_12__** %7, align 8
  br label %128

120:                                              ; preds = %105
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 5
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  store %struct.TYPE_12__* %127, %struct.TYPE_12__** %7, align 8
  br label %128

128:                                              ; preds = %120, %112
  br label %129

129:                                              ; preds = %146, %128
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %131 = icmp ne %struct.TYPE_12__* %130, null
  br i1 %131, label %132, label %150

132:                                              ; preds = %129
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SEC_EXCLUDE, align 4
  %137 = and i32 %135, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load i32*, i32** %5, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %142 = call i64 @bfd_section_removed_from_list(i32* %140, %struct.TYPE_12__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  br label %150

145:                                              ; preds = %139, %132
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  store %struct.TYPE_12__* %149, %struct.TYPE_12__** %7, align 8
  br label %129

150:                                              ; preds = %144, %129
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %152 = icmp eq %struct.TYPE_12__* %151, null
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %155 = icmp eq %struct.TYPE_12__* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bfd_abs_section_ptr, align 8
  store %struct.TYPE_12__* %157, %struct.TYPE_12__** %7, align 8
  br label %158

158:                                              ; preds = %156, %153
  br label %260

159:                                              ; preds = %150
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %161 = icmp eq %struct.TYPE_12__* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %163, %struct.TYPE_12__** %7, align 8
  br label %259

164:                                              ; preds = %159
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = xor i32 %167, %170
  %172 = load i32, i32* @SEC_ALLOC, align 4
  %173 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %174 = or i32 %172, %173
  %175 = and i32 %171, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %193

177:                                              ; preds = %164
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = xor i32 %180, %183
  %185 = load i32, i32* @SEC_ALLOC, align 4
  %186 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %187 = or i32 %185, %186
  %188 = and i32 %184, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %177
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %191, %struct.TYPE_12__** %7, align 8
  br label %192

192:                                              ; preds = %190, %177
  br label %258

193:                                              ; preds = %164
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = xor i32 %196, %199
  %201 = load i32, i32* @SEC_READONLY, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %218

204:                                              ; preds = %193
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = xor i32 %207, %210
  %212 = load i32, i32* @SEC_READONLY, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %204
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %216, %struct.TYPE_12__** %7, align 8
  br label %217

217:                                              ; preds = %215, %204
  br label %257

218:                                              ; preds = %193
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = xor i32 %221, %224
  %226 = load i32, i32* @SEC_CODE, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %243

229:                                              ; preds = %218
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = xor i32 %232, %235
  %237 = load i32, i32* @SEC_CODE, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %229
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %241, %struct.TYPE_12__** %7, align 8
  br label %242

242:                                              ; preds = %240, %229
  br label %256

243:                                              ; preds = %218
  %244 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %245 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = icmp slt i64 %248, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %243
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %254, %struct.TYPE_12__** %7, align 8
  br label %255

255:                                              ; preds = %253, %243
  br label %256

256:                                              ; preds = %255, %242
  br label %257

257:                                              ; preds = %256, %217
  br label %258

258:                                              ; preds = %257, %192
  br label %259

259:                                              ; preds = %258, %162
  br label %260

260:                                              ; preds = %259, %158
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %265 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = sub nsw i64 %268, %263
  store i64 %269, i64* %267, align 8
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %271 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %272 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 1
  store %struct.TYPE_12__* %270, %struct.TYPE_12__** %274, align 8
  br label %275

275:                                              ; preds = %260, %56, %47, %42, %34
  br label %276

276:                                              ; preds = %275, %28
  %277 = load i32, i32* @TRUE, align 4
  ret i32 %277
}

declare dso_local i64 @bfd_section_removed_from_list(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
