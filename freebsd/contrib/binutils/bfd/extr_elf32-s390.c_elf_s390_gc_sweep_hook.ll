; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-s390.c_elf_s390_gc_sweep_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-s390.c_elf_s390_gc_sweep_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i64 }
%struct.elf_link_hash_entry = type { %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.elf_s390_link_hash_entry = type { i32, %struct.elf_s390_dyn_relocs* }
%struct.elf_s390_dyn_relocs = type { %struct.elf_s390_dyn_relocs*, %struct.TYPE_25__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_26__ }
%struct.TYPE_18__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, %struct.TYPE_25__*, %struct.TYPE_27__*)* @elf_s390_gc_sweep_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_s390_gc_sweep_hook(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_25__* %2, %struct.TYPE_27__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.elf_link_hash_entry**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.elf_link_hash_entry*, align 8
  %17 = alloca %struct.elf_s390_link_hash_entry*, align 8
  %18 = alloca %struct.elf_s390_dyn_relocs**, align 8
  %19 = alloca %struct.elf_s390_dyn_relocs*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %8, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %21 = call %struct.TYPE_17__* @elf_section_data(%struct.TYPE_25__* %20)
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call %struct.TYPE_16__* @elf_tdata(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  store %struct.TYPE_26__* %25, %struct.TYPE_26__** %9, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %26)
  store %struct.elf_link_hash_entry** %27, %struct.elf_link_hash_entry*** %10, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* @elf_local_got_refcounts(i32* %28)
  store i32* %29, i32** %11, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i64 %34
  store %struct.TYPE_27__* %35, %struct.TYPE_27__** %13, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_27__* %36, %struct.TYPE_27__** %12, align 8
  br label %37

37:                                               ; preds = %235, %4
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %40 = icmp ult %struct.TYPE_27__* %38, %39
  br i1 %40, label %41, label %238

41:                                               ; preds = %37
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %16, align 8
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ELF32_R_SYM(i32 %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp uge i64 %46, %49
  br i1 %50, label %51, label %109

51:                                               ; preds = %41
  %52 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %53, %56
  %58 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %52, i64 %57
  %59 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %58, align 8
  store %struct.elf_link_hash_entry* %59, %struct.elf_link_hash_entry** %16, align 8
  br label %60

60:                                               ; preds = %76, %51
  %61 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %62 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @bfd_link_hash_indirect, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %69 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @bfd_link_hash_warning, align 8
  %73 = icmp eq i64 %71, %72
  br label %74

74:                                               ; preds = %67, %60
  %75 = phi i1 [ true, %60 ], [ %73, %67 ]
  br i1 %75, label %76, label %84

76:                                               ; preds = %74
  %77 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %78 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %83, %struct.elf_link_hash_entry** %16, align 8
  br label %60

84:                                               ; preds = %74
  %85 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %86 = bitcast %struct.elf_link_hash_entry* %85 to %struct.elf_s390_link_hash_entry*
  store %struct.elf_s390_link_hash_entry* %86, %struct.elf_s390_link_hash_entry** %17, align 8
  %87 = load %struct.elf_s390_link_hash_entry*, %struct.elf_s390_link_hash_entry** %17, align 8
  %88 = getelementptr inbounds %struct.elf_s390_link_hash_entry, %struct.elf_s390_link_hash_entry* %87, i32 0, i32 1
  store %struct.elf_s390_dyn_relocs** %88, %struct.elf_s390_dyn_relocs*** %18, align 8
  br label %89

89:                                               ; preds = %105, %84
  %90 = load %struct.elf_s390_dyn_relocs**, %struct.elf_s390_dyn_relocs*** %18, align 8
  %91 = load %struct.elf_s390_dyn_relocs*, %struct.elf_s390_dyn_relocs** %90, align 8
  store %struct.elf_s390_dyn_relocs* %91, %struct.elf_s390_dyn_relocs** %19, align 8
  %92 = icmp ne %struct.elf_s390_dyn_relocs* %91, null
  br i1 %92, label %93, label %108

93:                                               ; preds = %89
  %94 = load %struct.elf_s390_dyn_relocs*, %struct.elf_s390_dyn_relocs** %19, align 8
  %95 = getelementptr inbounds %struct.elf_s390_dyn_relocs, %struct.elf_s390_dyn_relocs* %94, i32 0, i32 1
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %95, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %98 = icmp eq %struct.TYPE_25__* %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.elf_s390_dyn_relocs*, %struct.elf_s390_dyn_relocs** %19, align 8
  %101 = getelementptr inbounds %struct.elf_s390_dyn_relocs, %struct.elf_s390_dyn_relocs* %100, i32 0, i32 0
  %102 = load %struct.elf_s390_dyn_relocs*, %struct.elf_s390_dyn_relocs** %101, align 8
  %103 = load %struct.elf_s390_dyn_relocs**, %struct.elf_s390_dyn_relocs*** %18, align 8
  store %struct.elf_s390_dyn_relocs* %102, %struct.elf_s390_dyn_relocs** %103, align 8
  br label %108

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.elf_s390_dyn_relocs*, %struct.elf_s390_dyn_relocs** %19, align 8
  %107 = getelementptr inbounds %struct.elf_s390_dyn_relocs, %struct.elf_s390_dyn_relocs* %106, i32 0, i32 0
  store %struct.elf_s390_dyn_relocs** %107, %struct.elf_s390_dyn_relocs*** %18, align 8
  br label %89

108:                                              ; preds = %99, %89
  br label %109

109:                                              ; preds = %108, %41
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ELF32_R_TYPE(i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %117 = icmp ne %struct.elf_link_hash_entry* %116, null
  %118 = zext i1 %117 to i32
  %119 = call i32 @elf_s390_tls_transition(%struct.bfd_link_info* %114, i32 %115, i32 %118)
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  switch i32 %120, label %233 [
    i32 128, label %121
    i32 134, label %136
    i32 130, label %136
    i32 133, label %136
    i32 132, label %136
    i32 131, label %136
    i32 129, label %136
    i32 157, label %136
    i32 156, label %136
    i32 155, label %136
    i32 154, label %136
    i32 152, label %136
    i32 151, label %136
    i32 150, label %136
    i32 149, label %136
    i32 153, label %136
    i32 158, label %170
    i32 162, label %170
    i32 161, label %170
    i32 160, label %170
    i32 159, label %170
    i32 143, label %170
    i32 142, label %170
    i32 140, label %170
    i32 141, label %170
    i32 139, label %177
    i32 137, label %177
    i32 138, label %177
    i32 136, label %177
    i32 135, label %177
    i32 148, label %194
    i32 147, label %194
    i32 146, label %194
    i32 145, label %194
    i32 144, label %194
  ]

121:                                              ; preds = %109
  %122 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %123 = call %struct.TYPE_18__* @elf_s390_hash_table(%struct.bfd_link_info* %122)
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %130 = call %struct.TYPE_18__* @elf_s390_hash_table(%struct.bfd_link_info* %129)
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %128, %121
  br label %234

136:                                              ; preds = %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109
  %137 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %138 = icmp ne %struct.elf_link_hash_entry* %137, null
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %141 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %147 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %139
  br label %169

152:                                              ; preds = %136
  %153 = load i32*, i32** %11, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load i32*, i32** %11, align 8
  %157 = load i64, i64* %14, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load i32*, i32** %11, align 8
  %163 = load i64, i64* %14, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %161, %155
  br label %168

168:                                              ; preds = %167, %152
  br label %169

169:                                              ; preds = %168, %151
  br label %234

170:                                              ; preds = %109, %109, %109, %109, %109, %109, %109, %109, %109
  %171 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %172 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %234

176:                                              ; preds = %170
  br label %177

177:                                              ; preds = %109, %109, %109, %109, %109, %176
  %178 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %179 = icmp ne %struct.elf_link_hash_entry* %178, null
  br i1 %179, label %180, label %193

180:                                              ; preds = %177
  %181 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %182 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %180
  %187 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %188 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %186, %180
  br label %193

193:                                              ; preds = %192, %177
  br label %234

194:                                              ; preds = %109, %109, %109, %109, %109
  %195 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %196 = icmp ne %struct.elf_link_hash_entry* %195, null
  br i1 %196, label %197, label %215

197:                                              ; preds = %194
  %198 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %199 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %197
  %204 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %205 = bitcast %struct.elf_link_hash_entry* %204 to %struct.elf_s390_link_hash_entry*
  %206 = getelementptr inbounds %struct.elf_s390_link_hash_entry, %struct.elf_s390_link_hash_entry* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %206, align 8
  %209 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %210 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sub nsw i32 %212, 1
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %203, %197
  br label %232

215:                                              ; preds = %194
  %216 = load i32*, i32** %11, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %231

218:                                              ; preds = %215
  %219 = load i32*, i32** %11, align 8
  %220 = load i64, i64* %14, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %218
  %225 = load i32*, i32** %11, align 8
  %226 = load i64, i64* %14, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %224, %218
  br label %231

231:                                              ; preds = %230, %215
  br label %232

232:                                              ; preds = %231, %214
  br label %234

233:                                              ; preds = %109
  br label %234

234:                                              ; preds = %233, %232, %193, %175, %169, %135
  br label %235

235:                                              ; preds = %234
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i32 1
  store %struct.TYPE_27__* %237, %struct.TYPE_27__** %12, align 8
  br label %37

238:                                              ; preds = %37
  %239 = load i32, i32* @TRUE, align 4
  ret i32 %239
}

declare dso_local %struct.TYPE_17__* @elf_section_data(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_16__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local i32* @elf_local_got_refcounts(i32*) #1

declare dso_local i64 @ELF32_R_SYM(i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @elf_s390_tls_transition(%struct.bfd_link_info*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @elf_s390_hash_table(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
