; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_mark.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_28__ = type { i32, i64, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64 }
%struct.xcoff_link_hash_entry = type { i32, %struct.TYPE_27__*, %struct.TYPE_26__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i8* }
%struct.internal_reloc = type { i64, i32 }
%struct.TYPE_23__ = type { i32*, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_28__** }
%struct.TYPE_21__ = type { i32 }

@SEC_MARK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@XCOFF_MARK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i32 0, align 4
@bfd_link_hash_defweak = common dso_local global i32 0, align 4
@bfd_link_hash_common = common dso_local global i32 0, align 4
@XCOFF_CALLED = common dso_local global i32 0, align 4
@bfd_link_hash_undefined = common dso_local global i32 0, align 4
@bfd_link_hash_undefweak = common dso_local global i32 0, align 4
@XCOFF_DEF_DYNAMIC = common dso_local global i32 0, align 4
@XCOFF_IMPORT = common dso_local global i32 0, align 4
@XCOFF_DEF_REGULAR = common dso_local global i32 0, align 4
@XCOFF_LDREL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, %struct.TYPE_28__*)* @xcoff_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcoff_mark(%struct.bfd_link_info* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.xcoff_link_hash_entry**, align 8
  %7 = alloca %struct.xcoff_link_hash_entry**, align 8
  %8 = alloca %struct.internal_reloc*, align 8
  %9 = alloca %struct.internal_reloc*, align 8
  %10 = alloca %struct.xcoff_link_hash_entry*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.xcoff_link_hash_entry*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %14 = call i64 @bfd_is_abs_section(%struct.TYPE_28__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SEC_MARK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16, %2
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %3, align 4
  br label %374

25:                                               ; preds = %16
  %26 = load i32, i32* @SEC_MARK, align 4
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %37 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %35, %40
  br i1 %41, label %42, label %372

42:                                               ; preds = %25
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %44, align 8
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %47 = call %struct.TYPE_23__* @coff_section_data(%struct.TYPE_30__* %45, %struct.TYPE_28__* %46)
  %48 = icmp ne %struct.TYPE_23__* %47, null
  br i1 %48, label %49, label %372

49:                                               ; preds = %42
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %51, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %54 = call %struct.TYPE_29__* @xcoff_section_data(%struct.TYPE_30__* %52, %struct.TYPE_28__* %53)
  %55 = icmp ne %struct.TYPE_29__* %54, null
  br i1 %55, label %56, label %372

56:                                               ; preds = %49
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %58, align 8
  %60 = call %struct.xcoff_link_hash_entry** @obj_xcoff_sym_hashes(%struct.TYPE_30__* %59)
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %62, align 8
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %65 = call %struct.TYPE_29__* @xcoff_section_data(%struct.TYPE_30__* %63, %struct.TYPE_28__* %64)
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %60, i64 %68
  store %struct.xcoff_link_hash_entry** %69, %struct.xcoff_link_hash_entry*** %6, align 8
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %71, align 8
  %73 = call %struct.xcoff_link_hash_entry** @obj_xcoff_sym_hashes(%struct.TYPE_30__* %72)
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %75, align 8
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %78 = call %struct.TYPE_29__* @xcoff_section_data(%struct.TYPE_30__* %76, %struct.TYPE_28__* %77)
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %73, i64 %81
  store %struct.xcoff_link_hash_entry** %82, %struct.xcoff_link_hash_entry*** %7, align 8
  br label %83

83:                                               ; preds = %108, %56
  %84 = load %struct.xcoff_link_hash_entry**, %struct.xcoff_link_hash_entry*** %6, align 8
  %85 = load %struct.xcoff_link_hash_entry**, %struct.xcoff_link_hash_entry*** %7, align 8
  %86 = icmp ult %struct.xcoff_link_hash_entry** %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load %struct.xcoff_link_hash_entry**, %struct.xcoff_link_hash_entry*** %6, align 8
  %89 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %88, align 8
  store %struct.xcoff_link_hash_entry* %89, %struct.xcoff_link_hash_entry** %10, align 8
  %90 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %10, align 8
  %91 = icmp ne %struct.xcoff_link_hash_entry* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %10, align 8
  %94 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @XCOFF_MARK, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %101 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %10, align 8
  %102 = call i32 @xcoff_mark_symbol(%struct.bfd_link_info* %100, %struct.xcoff_link_hash_entry* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %3, align 4
  br label %374

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %92, %87
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.xcoff_link_hash_entry**, %struct.xcoff_link_hash_entry*** %6, align 8
  %110 = getelementptr inbounds %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %109, i32 1
  store %struct.xcoff_link_hash_entry** %110, %struct.xcoff_link_hash_entry*** %6, align 8
  br label %83

111:                                              ; preds = %83
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SEC_RELOC, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %371

118:                                              ; preds = %111
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %371

123:                                              ; preds = %118
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %125, align 8
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %128 = load i32, i32* @TRUE, align 4
  %129 = load i32, i32* @FALSE, align 4
  %130 = call %struct.internal_reloc* @xcoff_read_internal_relocs(%struct.TYPE_30__* %126, %struct.TYPE_28__* %127, i32 %128, i32* null, i32 %129, i32* null)
  store %struct.internal_reloc* %130, %struct.internal_reloc** %8, align 8
  %131 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %132 = icmp eq %struct.internal_reloc* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i32, i32* @FALSE, align 4
  store i32 %134, i32* %3, align 4
  br label %374

135:                                              ; preds = %123
  %136 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %136, i64 %139
  store %struct.internal_reloc* %140, %struct.internal_reloc** %9, align 8
  br label %141

141:                                              ; preds = %322, %135
  %142 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %143 = load %struct.internal_reloc*, %struct.internal_reloc** %9, align 8
  %144 = icmp ult %struct.internal_reloc* %142, %143
  br i1 %144, label %145, label %325

145:                                              ; preds = %141
  %146 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %147 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %151, align 8
  %153 = call i32 @obj_raw_syment_count(%struct.TYPE_30__* %152)
  %154 = icmp ugt i32 %149, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %322

156:                                              ; preds = %145
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %158, align 8
  %160 = call %struct.xcoff_link_hash_entry** @obj_xcoff_sym_hashes(%struct.TYPE_30__* %159)
  %161 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %162 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %160, i64 %163
  %165 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %164, align 8
  store %struct.xcoff_link_hash_entry* %165, %struct.xcoff_link_hash_entry** %12, align 8
  %166 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %167 = icmp ne %struct.xcoff_link_hash_entry* %166, null
  br i1 %167, label %168, label %183

168:                                              ; preds = %156
  %169 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %170 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @XCOFF_MARK, align 4
  %173 = and i32 %171, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %168
  %176 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %177 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %178 = call i32 @xcoff_mark_symbol(%struct.bfd_link_info* %176, %struct.xcoff_link_hash_entry* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* @FALSE, align 4
  store i32 %181, i32* %3, align 4
  br label %374

182:                                              ; preds = %175
  br label %183

183:                                              ; preds = %182, %168, %156
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_30__*, %struct.TYPE_30__** %185, align 8
  %187 = call %struct.TYPE_22__* @xcoff_data(%struct.TYPE_30__* %186)
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %188, align 8
  %190 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %191 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %189, i64 %192
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %193, align 8
  store %struct.TYPE_28__* %194, %struct.TYPE_28__** %11, align 8
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %196 = icmp ne %struct.TYPE_28__* %195, null
  br i1 %196, label %197, label %212

197:                                              ; preds = %183
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @SEC_MARK, align 4
  %202 = and i32 %200, %201
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %197
  %205 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %207 = call i32 @xcoff_mark(%struct.bfd_link_info* %205, %struct.TYPE_28__* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %204
  %210 = load i32, i32* @FALSE, align 4
  store i32 %210, i32* %3, align 4
  br label %374

211:                                              ; preds = %204
  br label %212

212:                                              ; preds = %211, %197, %183
  %213 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %214 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  switch i32 %215, label %216 [
    i32 134, label %305
    i32 135, label %305
    i32 133, label %305
    i32 132, label %305
    i32 130, label %320
    i32 136, label %320
    i32 131, label %320
    i32 129, label %320
    i32 128, label %320
  ]

216:                                              ; preds = %212
  %217 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %218 = icmp eq %struct.xcoff_link_hash_entry* %217, null
  br i1 %218, label %303, label %219

219:                                              ; preds = %216
  %220 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %221 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @bfd_link_hash_defined, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %303, label %226

226:                                              ; preds = %219
  %227 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %228 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @bfd_link_hash_defweak, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %303, label %233

233:                                              ; preds = %226
  %234 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %235 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @bfd_link_hash_common, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %303, label %240

240:                                              ; preds = %233
  %241 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %242 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @XCOFF_CALLED, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %304

247:                                              ; preds = %240
  %248 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %249 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @bfd_link_hash_undefined, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %261, label %254

254:                                              ; preds = %247
  %255 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %256 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @bfd_link_hash_undefweak, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %304

261:                                              ; preds = %254, %247
  %262 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %263 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %264, i32 0, i32 0
  %266 = load i8*, i8** %265, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 0
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %269, 46
  br i1 %270, label %271, label %304

271:                                              ; preds = %261
  %272 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %273 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %272, i32 0, i32 1
  %274 = load %struct.TYPE_27__*, %struct.TYPE_27__** %273, align 8
  %275 = icmp ne %struct.TYPE_27__* %274, null
  br i1 %275, label %276, label %304

276:                                              ; preds = %271
  %277 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %278 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %277, i32 0, i32 1
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @XCOFF_DEF_DYNAMIC, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %303, label %285

285:                                              ; preds = %276
  %286 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %287 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %286, i32 0, i32 1
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @XCOFF_IMPORT, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %304

294:                                              ; preds = %285
  %295 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %296 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %295, i32 0, i32 1
  %297 = load %struct.TYPE_27__*, %struct.TYPE_27__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @XCOFF_DEF_REGULAR, align 4
  %301 = and i32 %299, %300
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %294, %276, %233, %226, %219, %216
  br label %321

304:                                              ; preds = %294, %285, %271, %261, %254, %240
  br label %305

305:                                              ; preds = %212, %212, %212, %212, %304
  %306 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %307 = call %struct.TYPE_21__* @xcoff_hash_table(%struct.bfd_link_info* %306)
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 4
  %311 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %312 = icmp ne %struct.xcoff_link_hash_entry* %311, null
  br i1 %312, label %313, label %319

313:                                              ; preds = %305
  %314 = load i32, i32* @XCOFF_LDREL, align 4
  %315 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %316 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = or i32 %317, %314
  store i32 %318, i32* %316, align 8
  br label %319

319:                                              ; preds = %313, %305
  br label %321

320:                                              ; preds = %212, %212, %212, %212, %212
  br label %321

321:                                              ; preds = %320, %319, %303
  br label %322

322:                                              ; preds = %321, %155
  %323 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %324 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %323, i32 1
  store %struct.internal_reloc* %324, %struct.internal_reloc** %8, align 8
  br label %141

325:                                              ; preds = %141
  %326 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %327 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %370, label %330

330:                                              ; preds = %325
  %331 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 2
  %333 = load %struct.TYPE_30__*, %struct.TYPE_30__** %332, align 8
  %334 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %335 = call %struct.TYPE_23__* @coff_section_data(%struct.TYPE_30__* %333, %struct.TYPE_28__* %334)
  %336 = icmp ne %struct.TYPE_23__* %335, null
  br i1 %336, label %337, label %370

337:                                              ; preds = %330
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %338, i32 0, i32 2
  %340 = load %struct.TYPE_30__*, %struct.TYPE_30__** %339, align 8
  %341 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %342 = call %struct.TYPE_23__* @coff_section_data(%struct.TYPE_30__* %340, %struct.TYPE_28__* %341)
  %343 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %342, i32 0, i32 0
  %344 = load i32*, i32** %343, align 8
  %345 = icmp ne i32* %344, null
  br i1 %345, label %346, label %370

346:                                              ; preds = %337
  %347 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %347, i32 0, i32 2
  %349 = load %struct.TYPE_30__*, %struct.TYPE_30__** %348, align 8
  %350 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %351 = call %struct.TYPE_23__* @coff_section_data(%struct.TYPE_30__* %349, %struct.TYPE_28__* %350)
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %370, label %355

355:                                              ; preds = %346
  %356 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %356, i32 0, i32 2
  %358 = load %struct.TYPE_30__*, %struct.TYPE_30__** %357, align 8
  %359 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %360 = call %struct.TYPE_23__* @coff_section_data(%struct.TYPE_30__* %358, %struct.TYPE_28__* %359)
  %361 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %360, i32 0, i32 0
  %362 = load i32*, i32** %361, align 8
  %363 = call i32 @free(i32* %362)
  %364 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %364, i32 0, i32 2
  %366 = load %struct.TYPE_30__*, %struct.TYPE_30__** %365, align 8
  %367 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %368 = call %struct.TYPE_23__* @coff_section_data(%struct.TYPE_30__* %366, %struct.TYPE_28__* %367)
  %369 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %368, i32 0, i32 0
  store i32* null, i32** %369, align 8
  br label %370

370:                                              ; preds = %355, %346, %337, %330, %325
  br label %371

371:                                              ; preds = %370, %118, %111
  br label %372

372:                                              ; preds = %371, %49, %42, %25
  %373 = load i32, i32* @TRUE, align 4
  store i32 %373, i32* %3, align 4
  br label %374

374:                                              ; preds = %372, %209, %180, %133, %104, %23
  %375 = load i32, i32* %3, align 4
  ret i32 %375
}

declare dso_local i64 @bfd_is_abs_section(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_23__* @coff_section_data(%struct.TYPE_30__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @xcoff_section_data(%struct.TYPE_30__*, %struct.TYPE_28__*) #1

declare dso_local %struct.xcoff_link_hash_entry** @obj_xcoff_sym_hashes(%struct.TYPE_30__*) #1

declare dso_local i32 @xcoff_mark_symbol(%struct.bfd_link_info*, %struct.xcoff_link_hash_entry*) #1

declare dso_local %struct.internal_reloc* @xcoff_read_internal_relocs(%struct.TYPE_30__*, %struct.TYPE_28__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @obj_raw_syment_count(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_22__* @xcoff_data(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_21__* @xcoff_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
