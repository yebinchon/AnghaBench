; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_process_before_allocation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_process_before_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64, i32, %struct.TYPE_32__* }
%struct.bfd_link_info = type { i64 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_30__ = type { i32 }
%struct.elf32_arm_link_hash_table = type { i32, i32*, i64, i32* }
%struct.elf_link_hash_entry = type { %struct.TYPE_28__, i32, %struct.TYPE_27__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_33__ }
%struct.TYPE_26__ = type { %struct.TYPE_30__*, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_30__* }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%B: BE8 images only valid in big-endian mode.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SEC_EXCLUDE = common dso_local global i32 0, align 4
@STT_ARM_TFUNC = common dso_local global i32 0, align 4
@bfd_link_hash_undefweak = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_elf32_arm_process_before_allocation(%struct.TYPE_31__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.elf32_arm_link_hash_table*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.elf_link_hash_entry*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %10, align 8
  %16 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %17 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %3, align 4
  br label %295

22:                                               ; preds = %2
  %23 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %24 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %23)
  store %struct.elf32_arm_link_hash_table* %24, %struct.elf32_arm_link_hash_table** %12, align 8
  %25 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %12, align 8
  %26 = call i32 @check_use_blx(%struct.elf32_arm_link_hash_table* %25)
  %27 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %12, align 8
  %28 = icmp ne %struct.elf32_arm_link_hash_table* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @BFD_ASSERT(i32 %29)
  %31 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %12, align 8
  %32 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @BFD_ASSERT(i32 %35)
  %37 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %12, align 8
  %38 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %22
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %43 = call i32 @bfd_big_endian(%struct.TYPE_31__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %48 = call i32 @_bfd_error_handler(i32 %46, %struct.TYPE_31__* %47)
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %3, align 4
  br label %295

50:                                               ; preds = %41, %22
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %52, align 8
  store %struct.TYPE_32__* %53, %struct.TYPE_32__** %11, align 8
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %55 = icmp eq %struct.TYPE_32__* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %3, align 4
  br label %295

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %260, %58
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %61 = icmp ne %struct.TYPE_32__* %60, null
  br i1 %61, label %62, label %264

62:                                               ; preds = %59
  %63 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %260

68:                                               ; preds = %62
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SEC_EXCLUDE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %260

76:                                               ; preds = %68
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %78 = call %struct.TYPE_25__* @elf_tdata(%struct.TYPE_31__* %77)
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  store %struct.TYPE_33__* %79, %struct.TYPE_33__** %6, align 8
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %82 = load i32, i32* @FALSE, align 4
  %83 = call %struct.TYPE_30__* @_bfd_elf_link_read_relocs(%struct.TYPE_31__* %80, %struct.TYPE_32__* %81, i8* null, %struct.TYPE_30__* null, i32 %82)
  store %struct.TYPE_30__* %83, %struct.TYPE_30__** %7, align 8
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %85 = icmp eq %struct.TYPE_30__* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %266

87:                                               ; preds = %76
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i64 %91
  store %struct.TYPE_30__* %92, %struct.TYPE_30__** %9, align 8
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_30__* %93, %struct.TYPE_30__** %8, align 8
  br label %94

94:                                               ; preds = %229, %87
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %97 = icmp ult %struct.TYPE_30__* %95, %96
  br i1 %97, label %98, label %232

98:                                               ; preds = %94
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @ELF32_R_TYPE(i32 %101)
  store i64 %102, i64* %13, align 8
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @ELF32_R_SYM(i32 %105)
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* %13, align 8
  %108 = icmp ne i64 %107, 130
  br i1 %108, label %109, label %122

109:                                              ; preds = %98
  %110 = load i64, i64* %13, align 8
  %111 = icmp ne i64 %110, 129
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load i64, i64* %13, align 8
  %114 = icmp ne i64 %113, 132
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i64, i64* %13, align 8
  %117 = icmp ne i64 %116, 131
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i64, i64* %13, align 8
  %120 = icmp ne i64 %119, 128
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %229

122:                                              ; preds = %118, %115, %112, %109, %98
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %124 = icmp eq %struct.TYPE_30__* %123, null
  br i1 %124, label %125, label %146

125:                                              ; preds = %122
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %127 = call %struct.TYPE_26__* @elf_section_data(%struct.TYPE_32__* %126)
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %129, align 8
  %131 = icmp ne %struct.TYPE_30__* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %134 = call %struct.TYPE_26__* @elf_section_data(%struct.TYPE_32__* %133)
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %136, align 8
  store %struct.TYPE_30__* %137, %struct.TYPE_30__** %10, align 8
  br label %145

138:                                              ; preds = %125
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %141 = call i32 @bfd_malloc_and_get_section(%struct.TYPE_31__* %139, %struct.TYPE_32__* %140, %struct.TYPE_30__** %10)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  br label %266

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %132
  br label %146

146:                                              ; preds = %145, %122
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %15, align 8
  %147 = load i64, i64* %14, align 8
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ult i64 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %229

153:                                              ; preds = %146
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %14, align 8
  %158 = sub i64 %157, %156
  store i64 %158, i64* %14, align 8
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %160 = call i64* @elf_sym_hashes(%struct.TYPE_31__* %159)
  %161 = load i64, i64* %14, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %164, %struct.elf_link_hash_entry** %15, align 8
  %165 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %15, align 8
  %166 = icmp eq %struct.elf_link_hash_entry* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %153
  br label %229

168:                                              ; preds = %153
  %169 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %12, align 8
  %170 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %180

173:                                              ; preds = %168
  %174 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %15, align 8
  %175 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, -1
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %229

180:                                              ; preds = %173, %168
  %181 = load i64, i64* %13, align 8
  switch i64 %181, label %226 [
    i64 130, label %182
    i64 129, label %182
    i64 132, label %182
    i64 131, label %182
    i64 128, label %202
  ]

182:                                              ; preds = %180, %180, %180, %180
  %183 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %15, align 8
  %184 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @ELF_ST_TYPE(i32 %185)
  %187 = load i32, i32* @STT_ARM_TFUNC, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %201

189:                                              ; preds = %182
  %190 = load i64, i64* %13, align 8
  %191 = icmp eq i64 %190, 132
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %12, align 8
  %194 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %192, %189
  %198 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %199 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %15, align 8
  %200 = call i32 @record_arm_to_thumb_glue(%struct.bfd_link_info* %198, %struct.elf_link_hash_entry* %199)
  br label %201

201:                                              ; preds = %197, %192, %182
  br label %228

202:                                              ; preds = %180
  %203 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %15, align 8
  %204 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @ELF_ST_TYPE(i32 %205)
  %207 = load i32, i32* @STT_ARM_TFUNC, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %225

209:                                              ; preds = %202
  %210 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %12, align 8
  %211 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %225, label %214

214:                                              ; preds = %209
  %215 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %15, align 8
  %216 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @bfd_link_hash_undefweak, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %214
  %222 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %223 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %15, align 8
  %224 = call i32 @record_thumb_to_arm_glue(%struct.bfd_link_info* %222, %struct.elf_link_hash_entry* %223)
  br label %225

225:                                              ; preds = %221, %214, %209, %202
  br label %228

226:                                              ; preds = %180
  %227 = call i32 (...) @abort() #3
  unreachable

228:                                              ; preds = %225, %201
  br label %229

229:                                              ; preds = %228, %179, %167, %152, %121
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %230, i32 1
  store %struct.TYPE_30__* %231, %struct.TYPE_30__** %8, align 8
  br label %94

232:                                              ; preds = %94
  %233 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %234 = icmp ne %struct.TYPE_30__* %233, null
  br i1 %234, label %235, label %246

235:                                              ; preds = %232
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %237 = call %struct.TYPE_26__* @elf_section_data(%struct.TYPE_32__* %236)
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_30__*, %struct.TYPE_30__** %239, align 8
  %241 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %242 = icmp ne %struct.TYPE_30__* %240, %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %235
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %245 = call i32 @free(%struct.TYPE_30__* %244)
  br label %246

246:                                              ; preds = %243, %235, %232
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %10, align 8
  %247 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %248 = icmp ne %struct.TYPE_30__* %247, null
  br i1 %248, label %249, label %259

249:                                              ; preds = %246
  %250 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %251 = call %struct.TYPE_26__* @elf_section_data(%struct.TYPE_32__* %250)
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_30__*, %struct.TYPE_30__** %252, align 8
  %254 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %255 = icmp ne %struct.TYPE_30__* %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %249
  %257 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %258 = call i32 @free(%struct.TYPE_30__* %257)
  br label %259

259:                                              ; preds = %256, %249, %246
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %7, align 8
  br label %260

260:                                              ; preds = %259, %75, %67
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_32__*, %struct.TYPE_32__** %262, align 8
  store %struct.TYPE_32__* %263, %struct.TYPE_32__** %11, align 8
  br label %59

264:                                              ; preds = %59
  %265 = load i32, i32* @TRUE, align 4
  store i32 %265, i32* %3, align 4
  br label %295

266:                                              ; preds = %143, %86
  %267 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %268 = icmp ne %struct.TYPE_30__* %267, null
  br i1 %268, label %269, label %280

269:                                              ; preds = %266
  %270 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %271 = call %struct.TYPE_26__* @elf_section_data(%struct.TYPE_32__* %270)
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %273, align 8
  %275 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %276 = icmp ne %struct.TYPE_30__* %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %269
  %278 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %279 = call i32 @free(%struct.TYPE_30__* %278)
  br label %280

280:                                              ; preds = %277, %269, %266
  %281 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %282 = icmp ne %struct.TYPE_30__* %281, null
  br i1 %282, label %283, label %293

283:                                              ; preds = %280
  %284 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %285 = call %struct.TYPE_26__* @elf_section_data(%struct.TYPE_32__* %284)
  %286 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_30__*, %struct.TYPE_30__** %286, align 8
  %288 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %289 = icmp ne %struct.TYPE_30__* %287, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %283
  %291 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %292 = call i32 @free(%struct.TYPE_30__* %291)
  br label %293

293:                                              ; preds = %290, %283, %280
  %294 = load i32, i32* @FALSE, align 4
  store i32 %294, i32* %3, align 4
  br label %295

295:                                              ; preds = %293, %264, %56, %45, %20
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @check_use_blx(%struct.elf32_arm_link_hash_table*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @bfd_big_endian(%struct.TYPE_31__*) #1

declare dso_local i32 @_bfd_error_handler(i32, %struct.TYPE_31__*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_25__* @elf_tdata(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_30__* @_bfd_elf_link_read_relocs(%struct.TYPE_31__*, %struct.TYPE_32__*, i8*, %struct.TYPE_30__*, i32) #1

declare dso_local i64 @ELF32_R_TYPE(i32) #1

declare dso_local i64 @ELF32_R_SYM(i32) #1

declare dso_local %struct.TYPE_26__* @elf_section_data(%struct.TYPE_32__*) #1

declare dso_local i32 @bfd_malloc_and_get_section(%struct.TYPE_31__*, %struct.TYPE_32__*, %struct.TYPE_30__**) #1

declare dso_local i64* @elf_sym_hashes(%struct.TYPE_31__*) #1

declare dso_local i32 @ELF_ST_TYPE(i32) #1

declare dso_local i32 @record_arm_to_thumb_glue(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i32 @record_thumb_to_arm_glue(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @free(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
