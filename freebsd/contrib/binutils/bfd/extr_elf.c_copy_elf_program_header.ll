; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_copy_elf_program_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_copy_elf_program_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_18__ = type { i32, i64, i32, i64 }
%struct.elf_segment_map = type { i64, i32, i32, i32, i32, i32, i32, %struct.elf_segment_map*, i32*, i64, i32, i64, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_19__ = type { %struct.elf_segment_map*, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@PT_NULL = common dso_local global i64 0, align 8
@PT_LOAD = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_15__*)* @copy_elf_program_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copy_elf_program_header(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.elf_segment_map*, align 8
  %8 = alloca %struct.elf_segment_map*, align 8
  %9 = alloca %struct.elf_segment_map**, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %13, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = call %struct.TYPE_18__* @elf_elfheader(%struct.TYPE_15__* %21)
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %6, align 8
  store %struct.elf_segment_map* null, %struct.elf_segment_map** %8, align 8
  store %struct.elf_segment_map** %8, %struct.elf_segment_map*** %9, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = call %struct.TYPE_18__* @elf_elfheader(%struct.TYPE_15__* %23)
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = call %struct.TYPE_19__* @elf_tdata(%struct.TYPE_15__* %27)
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %10, align 8
  br label %31

31:                                               ; preds = %268, %2
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %273

35:                                               ; preds = %31
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %18, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PT_NULL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %268

42:                                               ; preds = %35
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %66, %42
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %48 = icmp ne %struct.TYPE_16__* %47, null
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %51 = call %struct.TYPE_20__* @elf_section_data(%struct.TYPE_16__* %50)
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  store i32* %52, i32** %17, align 8
  %53 = load i32*, i32** %17, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %55 = call i64 @ELF_IS_SECTION_IN_SEGMENT_FILE(i32* %53, %struct.TYPE_17__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %59 = icmp ne %struct.TYPE_16__* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %18, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* %15, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %62, %49
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %14, align 8
  br label %46

70:                                               ; preds = %46
  store i32 80, i32* %16, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32, i32* %15, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %16, align 4
  br label %82

82:                                               ; preds = %73, %70
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call %struct.elf_segment_map* @bfd_zalloc(%struct.TYPE_15__* %83, i32 %84)
  store %struct.elf_segment_map* %85, %struct.elf_segment_map** %7, align 8
  %86 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %87 = icmp eq %struct.elf_segment_map* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i64, i64* @FALSE, align 8
  store i64 %89, i64* %3, align 8
  br label %279

90:                                               ; preds = %82
  %91 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %92 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %91, i32 0, i32 7
  store %struct.elf_segment_map* null, %struct.elf_segment_map** %92, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %97 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %102 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %101, i32 0, i32 12
  store i32 %100, i32* %102, align 8
  %103 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %104 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %103, i32 0, i32 1
  store i32 1, i32* %104, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %109 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %108, i32 0, i32 11
  store i64 %107, i64* %109, align 8
  %110 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %111 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %110, i32 0, i32 2
  store i32 1, i32* %111, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %116 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 8
  %117 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %118 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %117, i32 0, i32 3
  store i32 1, i32* %118, align 8
  %119 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %120 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %119, i32 0, i32 9
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %90
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp sge i64 %128, %131
  br label %133

133:                                              ; preds = %125, %90
  %134 = phi i1 [ false, %90 ], [ %132, %125 ]
  %135 = zext i1 %134 to i32
  %136 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %137 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %139 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %138, i32 0, i32 5
  store i32 0, i32* %139, align 8
  %140 = load i64, i64* %13, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %133
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PT_LOAD, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %195

148:                                              ; preds = %142, %133
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp sle i64 %151, %154
  br i1 %155, label %156, label %177

156:                                              ; preds = %148
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %159, %162
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = mul i32 %169, %172
  %174 = zext i32 %173 to i64
  %175 = add nsw i64 %166, %174
  %176 = icmp sge i64 %163, %175
  br label %177

177:                                              ; preds = %156, %148
  %178 = phi i1 [ false, %148 ], [ %176, %156 ]
  %179 = zext i1 %178 to i32
  %180 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %181 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @PT_LOAD, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %177
  %188 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %189 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i64, i64* @TRUE, align 8
  store i64 %193, i64* %13, align 8
  br label %194

194:                                              ; preds = %192, %187, %177
  br label %195

195:                                              ; preds = %194, %142
  %196 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %197 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %222, label %200

200:                                              ; preds = %195
  %201 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %202 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %222, label %205

205:                                              ; preds = %200
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %207 = icmp ne %struct.TYPE_16__* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  br label %213

212:                                              ; preds = %205
  br label %213

213:                                              ; preds = %212, %208
  %214 = phi i32 [ %211, %208 ], [ 0, %212 ]
  %215 = sext i32 %214 to i64
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 %215, %218
  %220 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %221 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %220, i32 0, i32 9
  store i64 %219, i64* %221, align 8
  br label %222

222:                                              ; preds = %213, %200, %195
  %223 = load i32, i32* %15, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %260

225:                                              ; preds = %222
  store i32 0, i32* %19, align 4
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %226, %struct.TYPE_16__** %14, align 8
  br label %227

227:                                              ; preds = %255, %225
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %229 = icmp ne %struct.TYPE_16__* %228, null
  br i1 %229, label %230, label %259

230:                                              ; preds = %227
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %232 = call %struct.TYPE_20__* @elf_section_data(%struct.TYPE_16__* %231)
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  store i32* %233, i32** %17, align 8
  %234 = load i32*, i32** %17, align 8
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %236 = call i64 @ELF_IS_SECTION_IN_SEGMENT_FILE(i32* %234, %struct.TYPE_17__* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %254

238:                                              ; preds = %230
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %243 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %242, i32 0, i32 8
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %19, align 4
  %246 = add i32 %245, 1
  store i32 %246, i32* %19, align 4
  %247 = zext i32 %245 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  store i32 %241, i32* %248, align 4
  %249 = load i32, i32* %19, align 4
  %250 = load i32, i32* %15, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %238
  br label %259

253:                                              ; preds = %238
  br label %254

254:                                              ; preds = %253, %230
  br label %255

255:                                              ; preds = %254
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %257, align 8
  store %struct.TYPE_16__* %258, %struct.TYPE_16__** %14, align 8
  br label %227

259:                                              ; preds = %252, %227
  br label %260

260:                                              ; preds = %259, %222
  %261 = load i32, i32* %15, align 4
  %262 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %263 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %262, i32 0, i32 6
  store i32 %261, i32* %263, align 4
  %264 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %265 = load %struct.elf_segment_map**, %struct.elf_segment_map*** %9, align 8
  store %struct.elf_segment_map* %264, %struct.elf_segment_map** %265, align 8
  %266 = load %struct.elf_segment_map*, %struct.elf_segment_map** %7, align 8
  %267 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %266, i32 0, i32 7
  store %struct.elf_segment_map** %267, %struct.elf_segment_map*** %9, align 8
  br label %268

268:                                              ; preds = %260, %41
  %269 = load i32, i32* %11, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %11, align 4
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 1
  store %struct.TYPE_17__* %272, %struct.TYPE_17__** %10, align 8
  br label %31

273:                                              ; preds = %31
  %274 = load %struct.elf_segment_map*, %struct.elf_segment_map** %8, align 8
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %276 = call %struct.TYPE_19__* @elf_tdata(%struct.TYPE_15__* %275)
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 0
  store %struct.elf_segment_map* %274, %struct.elf_segment_map** %277, align 8
  %278 = load i64, i64* @TRUE, align 8
  store i64 %278, i64* %3, align 8
  br label %279

279:                                              ; preds = %273, %88
  %280 = load i64, i64* %3, align 8
  ret i64 %280
}

declare dso_local %struct.TYPE_18__* @elf_elfheader(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_19__* @elf_tdata(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_20__* @elf_section_data(%struct.TYPE_16__*) #1

declare dso_local i64 @ELF_IS_SECTION_IN_SEGMENT_FILE(i32*, %struct.TYPE_17__*) #1

declare dso_local %struct.elf_segment_map* @bfd_zalloc(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
