; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_gc_sweep_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_gc_sweep_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.elf_link_hash_entry = type { %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.elf32_arm_link_hash_table = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.elf32_arm_link_hash_entry = type { %struct.elf32_arm_relocs_copied*, i32 }
%struct.elf32_arm_relocs_copied = type { i32, i32, %struct.elf32_arm_relocs_copied*, %struct.TYPE_23__* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_24__ }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, %struct.TYPE_23__*, %struct.TYPE_25__*)* @elf32_arm_gc_sweep_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_arm_gc_sweep_hook(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_23__* %2, %struct.TYPE_25__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.elf_link_hash_entry**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.elf32_arm_link_hash_table*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.elf_link_hash_entry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.elf32_arm_link_hash_entry*, align 8
  %19 = alloca %struct.elf32_arm_relocs_copied**, align 8
  %20 = alloca %struct.elf32_arm_relocs_copied*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %8, align 8
  %21 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %22 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %21)
  store %struct.elf32_arm_link_hash_table* %22, %struct.elf32_arm_link_hash_table** %14, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %24 = call %struct.TYPE_16__* @elf_section_data(%struct.TYPE_23__* %23)
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.TYPE_15__* @elf_tdata(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  store %struct.TYPE_24__* %28, %struct.TYPE_24__** %9, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %29)
  store %struct.elf_link_hash_entry** %30, %struct.elf_link_hash_entry*** %10, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @elf_local_got_refcounts(i32* %31)
  store i32* %32, i32** %11, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i64 %37
  store %struct.TYPE_25__* %38, %struct.TYPE_25__** %13, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_25__* %39, %struct.TYPE_25__** %12, align 8
  br label %40

40:                                               ; preds = %232, %4
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %43 = icmp ult %struct.TYPE_25__* %41, %42
  br i1 %43, label %44, label %235

44:                                               ; preds = %40
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %16, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ELF32_R_SYM(i32 %47)
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp uge i64 %49, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %44
  %55 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %56, %59
  %61 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %55, i64 %60
  %62 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %61, align 8
  store %struct.elf_link_hash_entry* %62, %struct.elf_link_hash_entry** %16, align 8
  br label %63

63:                                               ; preds = %79, %54
  %64 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %65 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @bfd_link_hash_indirect, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %72 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @bfd_link_hash_warning, align 8
  %76 = icmp eq i64 %74, %75
  br label %77

77:                                               ; preds = %70, %63
  %78 = phi i1 [ true, %63 ], [ %76, %70 ]
  br i1 %78, label %79, label %87

79:                                               ; preds = %77
  %80 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %81 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %86, %struct.elf_link_hash_entry** %16, align 8
  br label %63

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %44
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ELF32_R_TYPE(i32 %91)
  store i32 %92, i32* %17, align 4
  %93 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %14, align 8
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @arm_real_reloc_type(%struct.elf32_arm_link_hash_table* %93, i32 %94)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  switch i32 %96, label %230 [
    i32 147, label %97
    i32 146, label %97
    i32 130, label %97
    i32 129, label %97
    i32 128, label %131
    i32 150, label %138
    i32 149, label %138
    i32 137, label %138
    i32 136, label %138
    i32 140, label %138
    i32 139, label %138
    i32 148, label %138
    i32 145, label %138
    i32 138, label %138
    i32 135, label %138
    i32 142, label %138
    i32 144, label %138
    i32 141, label %138
    i32 143, label %138
    i32 132, label %138
    i32 134, label %138
    i32 131, label %138
    i32 133, label %138
  ]

97:                                               ; preds = %88, %88, %88, %88
  %98 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %99 = icmp ne %struct.elf_link_hash_entry* %98, null
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %102 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %108 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %100
  br label %130

113:                                              ; preds = %97
  %114 = load i32*, i32** %11, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i32*, i32** %11, align 8
  %118 = load i64, i64* %15, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load i32*, i32** %11, align 8
  %124 = load i64, i64* %15, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %116
  br label %129

129:                                              ; preds = %128, %113
  br label %130

130:                                              ; preds = %129, %112
  br label %231

131:                                              ; preds = %88
  %132 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %133 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %132)
  %134 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  br label %231

138:                                              ; preds = %88, %88, %88, %88, %88, %88, %88, %88, %88, %88, %88, %88, %88, %88, %88, %88, %88, %88
  %139 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %140 = icmp ne %struct.elf_link_hash_entry* %139, null
  br i1 %140, label %141, label %229

141:                                              ; preds = %138
  %142 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %143 = bitcast %struct.elf_link_hash_entry* %142 to %struct.elf32_arm_link_hash_entry*
  store %struct.elf32_arm_link_hash_entry* %143, %struct.elf32_arm_link_hash_entry** %18, align 8
  %144 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %145 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %141
  %150 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %151 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sub nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ELF32_R_TYPE(i32 %157)
  %159 = icmp eq i32 %158, 135
  br i1 %159, label %160, label %165

160:                                              ; preds = %149
  %161 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %18, align 8
  %162 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %160, %149
  br label %166

166:                                              ; preds = %165, %141
  %167 = load i32, i32* %17, align 4
  %168 = icmp eq i32 %167, 150
  br i1 %168, label %178, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %17, align 4
  %171 = icmp eq i32 %170, 137
  br i1 %171, label %178, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %17, align 4
  %174 = icmp eq i32 %173, 149
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %17, align 4
  %177 = icmp eq i32 %176, 136
  br i1 %177, label %178, label %228

178:                                              ; preds = %175, %172, %169, %166
  %179 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %18, align 8
  %180 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %179, i32 0, i32 0
  store %struct.elf32_arm_relocs_copied** %180, %struct.elf32_arm_relocs_copied*** %19, align 8
  br label %181

181:                                              ; preds = %224, %178
  %182 = load %struct.elf32_arm_relocs_copied**, %struct.elf32_arm_relocs_copied*** %19, align 8
  %183 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %182, align 8
  store %struct.elf32_arm_relocs_copied* %183, %struct.elf32_arm_relocs_copied** %20, align 8
  %184 = icmp ne %struct.elf32_arm_relocs_copied* %183, null
  br i1 %184, label %185, label %227

185:                                              ; preds = %181
  %186 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %20, align 8
  %187 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %186, i32 0, i32 3
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %187, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %190 = icmp eq %struct.TYPE_23__* %188, %189
  br i1 %190, label %191, label %223

191:                                              ; preds = %185
  %192 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %20, align 8
  %193 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sub nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @ELF32_R_TYPE(i32 %198)
  %200 = icmp eq i32 %199, 137
  br i1 %200, label %207, label %201

201:                                              ; preds = %191
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @ELF32_R_TYPE(i32 %204)
  %206 = icmp eq i32 %205, 136
  br i1 %206, label %207, label %212

207:                                              ; preds = %201, %191
  %208 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %20, align 8
  %209 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %207, %201
  %213 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %20, align 8
  %214 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %20, align 8
  %219 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %218, i32 0, i32 2
  %220 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %219, align 8
  %221 = load %struct.elf32_arm_relocs_copied**, %struct.elf32_arm_relocs_copied*** %19, align 8
  store %struct.elf32_arm_relocs_copied* %220, %struct.elf32_arm_relocs_copied** %221, align 8
  br label %222

222:                                              ; preds = %217, %212
  br label %227

223:                                              ; preds = %185
  br label %224

224:                                              ; preds = %223
  %225 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %20, align 8
  %226 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %225, i32 0, i32 2
  store %struct.elf32_arm_relocs_copied** %226, %struct.elf32_arm_relocs_copied*** %19, align 8
  br label %181

227:                                              ; preds = %222, %181
  br label %228

228:                                              ; preds = %227, %175
  br label %229

229:                                              ; preds = %228, %138
  br label %231

230:                                              ; preds = %88
  br label %231

231:                                              ; preds = %230, %229, %131, %130
  br label %232

232:                                              ; preds = %231
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 1
  store %struct.TYPE_25__* %234, %struct.TYPE_25__** %12, align 8
  br label %40

235:                                              ; preds = %40
  %236 = load i32, i32* @TRUE, align 4
  ret i32 %236
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_16__* @elf_section_data(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_15__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local i32* @elf_local_got_refcounts(i32*) #1

declare dso_local i64 @ELF32_R_SYM(i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @arm_real_reloc_type(%struct.elf32_arm_link_hash_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
