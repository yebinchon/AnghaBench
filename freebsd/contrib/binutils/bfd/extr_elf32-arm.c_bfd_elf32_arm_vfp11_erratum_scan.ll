; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_vfp11_erratum_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_vfp11_erratum_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32, i32, %struct.TYPE_29__* }
%struct.bfd_link_info = type { i64 }
%struct.elf32_arm_link_hash_table = type { i64 }
%struct._arm_elf_section_data = type { i32, i32, %struct.TYPE_27__*, %struct.TYPE_22__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_27__*, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32, i8 }
%struct.TYPE_23__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32* }

@BFD_ARM_VFP11_FIX_VECTOR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@BFD_ARM_VFP11_FIX_DEFAULT = common dso_local global i64 0, align 8
@BFD_ARM_VFP11_FIX_NONE = common dso_local global i64 0, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@SHT_PROGBITS = common dso_local global i64 0, align 8
@SHF_EXECINSTR = common dso_local global i32 0, align 4
@SEC_EXCLUDE = common dso_local global i32 0, align 4
@VFP11_ERRATUM_VENEER_SECTION_NAME = common dso_local global i32 0, align 4
@elf32_arm_compare_mapping = common dso_local global i32 0, align 4
@VFP11_FMAC = common dso_local global i32 0, align 4
@VFP11_DS = common dso_local global i32 0, align 4
@VFP11_BAD = common dso_local global i32 0, align 4
@VFP11_ERRATUM_BRANCH_TO_ARM_VENEER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_elf32_arm_vfp11_erratum_scan(%struct.TYPE_28__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.elf32_arm_link_hash_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct._arm_elf_section_data*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [3 x i32], align 4
  %26 = alloca i32, align 4
  %27 = alloca [3 x i32], align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_27__*, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %31 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %32 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %31)
  store %struct.elf32_arm_link_hash_table* %32, %struct.elf32_arm_link_hash_table** %11, align 8
  %33 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %11, align 8
  %34 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BFD_ARM_VFP11_FIX_VECTOR, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %12, align 4
  %39 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %40 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %3, align 4
  br label %399

45:                                               ; preds = %2
  %46 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %11, align 8
  %47 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BFD_ARM_VFP11_FIX_DEFAULT, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @BFD_ASSERT(i32 %51)
  %53 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %11, align 8
  %54 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BFD_ARM_VFP11_FIX_NONE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %3, align 4
  br label %399

60:                                               ; preds = %45
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %62 = call i64 @bfd_get_flavour(%struct.TYPE_28__* %61)
  %63 = load i64, i64* @bfd_target_elf_flavour, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %3, align 4
  br label %399

67:                                               ; preds = %60
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %69, align 8
  store %struct.TYPE_29__* %70, %struct.TYPE_29__** %6, align 8
  br label %71

71:                                               ; preds = %377, %67
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %73 = icmp ne %struct.TYPE_29__* %72, null
  br i1 %73, label %74, label %381

74:                                               ; preds = %71
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %76 = call i64 @elf_section_type(%struct.TYPE_29__* %75)
  %77 = load i64, i64* @SHT_PROGBITS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %99, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %81 = call i32 @elf_section_flags(%struct.TYPE_29__* %80)
  %82 = load i32, i32* @SHF_EXECINSTR, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SEC_EXCLUDE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @VFP11_ERRATUM_VENEER_SECTION_NAME, align 4
  %97 = call i64 @strcmp(i32 %95, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92, %85, %79, %74
  br label %377

100:                                              ; preds = %92
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %102 = call %struct._arm_elf_section_data* @elf32_arm_section_data(%struct.TYPE_29__* %101)
  store %struct._arm_elf_section_data* %102, %struct._arm_elf_section_data** %17, align 8
  %103 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %17, align 8
  %104 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %377

108:                                              ; preds = %100
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %110 = call %struct.TYPE_23__* @elf_section_data(%struct.TYPE_29__* %109)
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %117 = call %struct.TYPE_23__* @elf_section_data(%struct.TYPE_29__* %116)
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %7, align 8
  br label %128

121:                                              ; preds = %108
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %124 = call i32 @bfd_malloc_and_get_section(%struct.TYPE_28__* %122, %struct.TYPE_29__* %123, i32** %7)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  br label %383

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %115
  %129 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %17, align 8
  %130 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %129, i32 0, i32 3
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %17, align 8
  %133 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @elf32_arm_compare_mapping, align 4
  %136 = call i32 @qsort(%struct.TYPE_22__* %131, i32 %134, i32 4, i32 %135)
  store i32 0, i32* %14, align 4
  br label %137

137:                                              ; preds = %359, %128
  %138 = load i32, i32* %14, align 4
  %139 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %17, align 8
  %140 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ult i32 %138, %141
  br i1 %142, label %143, label %362

143:                                              ; preds = %137
  %144 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %17, align 8
  %145 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %144, i32 0, i32 3
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %18, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %17, align 8
  %154 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sub i32 %155, 1
  %157 = icmp eq i32 %152, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %143
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  br label %172

162:                                              ; preds = %143
  %163 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %17, align 8
  %164 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %163, i32 0, i32 3
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = add i32 %166, 1
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  br label %172

172:                                              ; preds = %162, %158
  %173 = phi i32 [ %161, %158 ], [ %171, %162 ]
  store i32 %173, i32* %19, align 4
  %174 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %17, align 8
  %175 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %174, i32 0, i32 3
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %175, align 8
  %177 = load i32, i32* %14, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 1
  %181 = load i8, i8* %180, align 4
  store i8 %181, i8* %20, align 1
  %182 = load i8, i8* %20, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %183, 97
  br i1 %184, label %185, label %186

185:                                              ; preds = %172
  br label %359

186:                                              ; preds = %172
  %187 = load i32, i32* %18, align 4
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %356, %186
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %19, align 4
  %191 = icmp ult i32 %189, %190
  br i1 %191, label %192, label %358

192:                                              ; preds = %188
  %193 = load i32, i32* %13, align 4
  %194 = add i32 %193, 4
  store i32 %194, i32* %21, align 4
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %196 = call i64 @bfd_big_endian(%struct.TYPE_28__* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %228

198:                                              ; preds = %192
  %199 = load i32*, i32** %7, align 8
  %200 = load i32, i32* %13, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 24
  %205 = load i32*, i32** %7, align 8
  %206 = load i32, i32* %13, align 4
  %207 = add i32 %206, 1
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = shl i32 %210, 16
  %212 = or i32 %204, %211
  %213 = load i32*, i32** %7, align 8
  %214 = load i32, i32* %13, align 4
  %215 = add i32 %214, 2
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = shl i32 %218, 8
  %220 = or i32 %212, %219
  %221 = load i32*, i32** %7, align 8
  %222 = load i32, i32* %13, align 4
  %223 = add i32 %222, 3
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %220, %226
  br label %258

228:                                              ; preds = %192
  %229 = load i32*, i32** %7, align 8
  %230 = load i32, i32* %13, align 4
  %231 = add i32 %230, 3
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = shl i32 %234, 24
  %236 = load i32*, i32** %7, align 8
  %237 = load i32, i32* %13, align 4
  %238 = add i32 %237, 2
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = shl i32 %241, 16
  %243 = or i32 %235, %242
  %244 = load i32*, i32** %7, align 8
  %245 = load i32, i32* %13, align 4
  %246 = add i32 %245, 1
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = shl i32 %249, 8
  %251 = or i32 %243, %250
  %252 = load i32*, i32** %7, align 8
  %253 = load i32, i32* %13, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %251, %256
  br label %258

258:                                              ; preds = %228, %198
  %259 = phi i32 [ %227, %198 ], [ %257, %228 ]
  store i32 %259, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %260 = load i32, i32* %8, align 4
  switch i32 %260, label %316 [
    i32 0, label %261
    i32 1, label %280
    i32 2, label %296
    i32 3, label %314
  ]

261:                                              ; preds = %258
  %262 = load i32, i32* %22, align 4
  %263 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %264 = call i32 @bfd_arm_vfp11_insn_decode(i32 %262, i32* %23, i32* %263, i32* %10)
  store i32 %264, i32* %24, align 4
  %265 = load i32, i32* %24, align 4
  %266 = load i32, i32* @VFP11_FMAC, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %272, label %268

268:                                              ; preds = %261
  %269 = load i32, i32* %24, align 4
  %270 = load i32, i32* @VFP11_DS, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %268, %261
  %273 = load i32, i32* %12, align 4
  %274 = icmp ne i32 %273, 0
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i32 1, i32 2
  store i32 %276, i32* %8, align 4
  %277 = load i32, i32* %13, align 4
  store i32 %277, i32* %15, align 4
  %278 = load i32, i32* %22, align 4
  store i32 %278, i32* %16, align 4
  br label %279

279:                                              ; preds = %272, %268
  br label %316

280:                                              ; preds = %258
  %281 = load i32, i32* %22, align 4
  %282 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %283 = call i32 @bfd_arm_vfp11_insn_decode(i32 %281, i32* %23, i32* %282, i32* %26)
  store i32 %283, i32* %24, align 4
  %284 = load i32, i32* %24, align 4
  %285 = load i32, i32* @VFP11_BAD, align 4
  %286 = icmp ne i32 %284, %285
  br i1 %286, label %287, label %294

287:                                              ; preds = %280
  %288 = load i32, i32* %23, align 4
  %289 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %290 = load i32, i32* %10, align 4
  %291 = call i32 @bfd_arm_vfp11_antidependency(i32 %288, i32* %289, i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %287
  store i32 3, i32* %8, align 4
  br label %295

294:                                              ; preds = %287, %280
  store i32 2, i32* %8, align 4
  br label %295

295:                                              ; preds = %294, %293
  br label %316

296:                                              ; preds = %258
  %297 = load i32, i32* %22, align 4
  %298 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 0
  %299 = call i32 @bfd_arm_vfp11_insn_decode(i32 %297, i32* %23, i32* %298, i32* %28)
  store i32 %299, i32* %24, align 4
  %300 = load i32, i32* %24, align 4
  %301 = load i32, i32* @VFP11_BAD, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %303, label %310

303:                                              ; preds = %296
  %304 = load i32, i32* %23, align 4
  %305 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %306 = load i32, i32* %10, align 4
  %307 = call i32 @bfd_arm_vfp11_antidependency(i32 %304, i32* %305, i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %303
  store i32 3, i32* %8, align 4
  br label %313

310:                                              ; preds = %303, %296
  store i32 0, i32* %8, align 4
  %311 = load i32, i32* %15, align 4
  %312 = add i32 %311, 4
  store i32 %312, i32* %21, align 4
  br label %313

313:                                              ; preds = %310, %309
  br label %316

314:                                              ; preds = %258
  %315 = call i32 (...) @abort() #3
  unreachable

316:                                              ; preds = %258, %313, %295, %279
  %317 = load i32, i32* %8, align 4
  %318 = icmp eq i32 %317, 3
  br i1 %318, label %319, label %356

319:                                              ; preds = %316
  %320 = call %struct.TYPE_27__* @bfd_zmalloc(i32 24)
  store %struct.TYPE_27__* %320, %struct.TYPE_27__** %29, align 8
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %322 = call %struct._arm_elf_section_data* @elf32_arm_section_data(%struct.TYPE_29__* %321)
  %323 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %323, align 4
  store i32 %325, i32* %30, align 4
  %326 = load i32, i32* %16, align 4
  %327 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %328 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %327, i32 0, i32 3
  %329 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %329, i32 0, i32 0
  store i32 %326, i32* %330, align 4
  %331 = load i8, i8* %20, align 1
  %332 = sext i8 %331 to i32
  switch i32 %332, label %337 [
    i32 97, label %333
  ]

333:                                              ; preds = %319
  %334 = load i32, i32* @VFP11_ERRATUM_BRANCH_TO_ARM_VENEER, align 4
  %335 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %336 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %335, i32 0, i32 2
  store i32 %334, i32* %336, align 8
  br label %339

337:                                              ; preds = %319
  %338 = call i32 (...) @abort() #3
  unreachable

339:                                              ; preds = %333
  %340 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %342 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %343 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %344 = load i32, i32* %15, align 4
  %345 = call i32 @record_vfp11_erratum_veneer(%struct.bfd_link_info* %340, %struct.TYPE_27__* %341, %struct.TYPE_28__* %342, %struct.TYPE_29__* %343, i32 %344)
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %347 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %346, i32 0, i32 0
  store i32 -1, i32* %347, align 8
  %348 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %17, align 8
  %349 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %348, i32 0, i32 2
  %350 = load %struct.TYPE_27__*, %struct.TYPE_27__** %349, align 8
  %351 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %352 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %351, i32 0, i32 1
  store %struct.TYPE_27__* %350, %struct.TYPE_27__** %352, align 8
  %353 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %354 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %17, align 8
  %355 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %354, i32 0, i32 2
  store %struct.TYPE_27__* %353, %struct.TYPE_27__** %355, align 8
  store i32 0, i32* %8, align 4
  br label %356

356:                                              ; preds = %339, %316
  %357 = load i32, i32* %21, align 4
  store i32 %357, i32* %13, align 4
  br label %188

358:                                              ; preds = %188
  br label %359

359:                                              ; preds = %358, %185
  %360 = load i32, i32* %14, align 4
  %361 = add i32 %360, 1
  store i32 %361, i32* %14, align 4
  br label %137

362:                                              ; preds = %137
  %363 = load i32*, i32** %7, align 8
  %364 = icmp ne i32* %363, null
  br i1 %364, label %365, label %376

365:                                              ; preds = %362
  %366 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %367 = call %struct.TYPE_23__* @elf_section_data(%struct.TYPE_29__* %366)
  %368 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %368, i32 0, i32 0
  %370 = load i32*, i32** %369, align 8
  %371 = load i32*, i32** %7, align 8
  %372 = icmp ne i32* %370, %371
  br i1 %372, label %373, label %376

373:                                              ; preds = %365
  %374 = load i32*, i32** %7, align 8
  %375 = call i32 @free(i32* %374)
  br label %376

376:                                              ; preds = %373, %365, %362
  store i32* null, i32** %7, align 8
  br label %377

377:                                              ; preds = %376, %107, %99
  %378 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %378, i32 0, i32 3
  %380 = load %struct.TYPE_29__*, %struct.TYPE_29__** %379, align 8
  store %struct.TYPE_29__* %380, %struct.TYPE_29__** %6, align 8
  br label %71

381:                                              ; preds = %71
  %382 = load i32, i32* @TRUE, align 4
  store i32 %382, i32* %3, align 4
  br label %399

383:                                              ; preds = %126
  %384 = load i32*, i32** %7, align 8
  %385 = icmp ne i32* %384, null
  br i1 %385, label %386, label %397

386:                                              ; preds = %383
  %387 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %388 = call %struct.TYPE_23__* @elf_section_data(%struct.TYPE_29__* %387)
  %389 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %389, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = load i32*, i32** %7, align 8
  %393 = icmp ne i32* %391, %392
  br i1 %393, label %394, label %397

394:                                              ; preds = %386
  %395 = load i32*, i32** %7, align 8
  %396 = call i32 @free(i32* %395)
  br label %397

397:                                              ; preds = %394, %386, %383
  %398 = load i32, i32* @FALSE, align 4
  store i32 %398, i32* %3, align 4
  br label %399

399:                                              ; preds = %397, %381, %65, %58, %43
  %400 = load i32, i32* %3, align 4
  ret i32 %400
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @bfd_get_flavour(%struct.TYPE_28__*) #1

declare dso_local i64 @elf_section_type(%struct.TYPE_29__*) #1

declare dso_local i32 @elf_section_flags(%struct.TYPE_29__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct._arm_elf_section_data* @elf32_arm_section_data(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_23__* @elf_section_data(%struct.TYPE_29__*) #1

declare dso_local i32 @bfd_malloc_and_get_section(%struct.TYPE_28__*, %struct.TYPE_29__*, i32**) #1

declare dso_local i32 @qsort(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i64 @bfd_big_endian(%struct.TYPE_28__*) #1

declare dso_local i32 @bfd_arm_vfp11_insn_decode(i32, i32*, i32*, i32*) #1

declare dso_local i32 @bfd_arm_vfp11_antidependency(i32, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.TYPE_27__* @bfd_zmalloc(i32) #1

declare dso_local i32 @record_vfp11_erratum_veneer(%struct.bfd_link_info*, %struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
