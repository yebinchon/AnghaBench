; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_elf64_x86_64_gc_sweep_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_elf64_x86_64_gc_sweep_hook.c"
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
%struct.elf64_x86_64_link_hash_entry = type { %struct.elf64_x86_64_dyn_relocs* }
%struct.elf64_x86_64_dyn_relocs = type { %struct.elf64_x86_64_dyn_relocs*, %struct.TYPE_25__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_26__ }
%struct.TYPE_18__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, %struct.TYPE_25__*, %struct.TYPE_27__*)* @elf64_x86_64_gc_sweep_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf64_x86_64_gc_sweep_hook(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_25__* %2, %struct.TYPE_27__* %3) #0 {
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
  %17 = alloca %struct.elf64_x86_64_link_hash_entry*, align 8
  %18 = alloca %struct.elf64_x86_64_dyn_relocs**, align 8
  %19 = alloca %struct.elf64_x86_64_dyn_relocs*, align 8
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

37:                                               ; preds = %211, %4
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %40 = icmp ult %struct.TYPE_27__* %38, %39
  br i1 %40, label %41, label %214

41:                                               ; preds = %37
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %16, align 8
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ELF64_R_SYM(i32 %44)
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
  %86 = bitcast %struct.elf_link_hash_entry* %85 to %struct.elf64_x86_64_link_hash_entry*
  store %struct.elf64_x86_64_link_hash_entry* %86, %struct.elf64_x86_64_link_hash_entry** %17, align 8
  %87 = load %struct.elf64_x86_64_link_hash_entry*, %struct.elf64_x86_64_link_hash_entry** %17, align 8
  %88 = getelementptr inbounds %struct.elf64_x86_64_link_hash_entry, %struct.elf64_x86_64_link_hash_entry* %87, i32 0, i32 0
  store %struct.elf64_x86_64_dyn_relocs** %88, %struct.elf64_x86_64_dyn_relocs*** %18, align 8
  br label %89

89:                                               ; preds = %105, %84
  %90 = load %struct.elf64_x86_64_dyn_relocs**, %struct.elf64_x86_64_dyn_relocs*** %18, align 8
  %91 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %90, align 8
  store %struct.elf64_x86_64_dyn_relocs* %91, %struct.elf64_x86_64_dyn_relocs** %19, align 8
  %92 = icmp ne %struct.elf64_x86_64_dyn_relocs* %91, null
  br i1 %92, label %93, label %108

93:                                               ; preds = %89
  %94 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %19, align 8
  %95 = getelementptr inbounds %struct.elf64_x86_64_dyn_relocs, %struct.elf64_x86_64_dyn_relocs* %94, i32 0, i32 1
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %95, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %98 = icmp eq %struct.TYPE_25__* %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %19, align 8
  %101 = getelementptr inbounds %struct.elf64_x86_64_dyn_relocs, %struct.elf64_x86_64_dyn_relocs* %100, i32 0, i32 0
  %102 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %101, align 8
  %103 = load %struct.elf64_x86_64_dyn_relocs**, %struct.elf64_x86_64_dyn_relocs*** %18, align 8
  store %struct.elf64_x86_64_dyn_relocs* %102, %struct.elf64_x86_64_dyn_relocs** %103, align 8
  br label %108

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.elf64_x86_64_dyn_relocs*, %struct.elf64_x86_64_dyn_relocs** %19, align 8
  %107 = getelementptr inbounds %struct.elf64_x86_64_dyn_relocs, %struct.elf64_x86_64_dyn_relocs* %106, i32 0, i32 0
  store %struct.elf64_x86_64_dyn_relocs** %107, %struct.elf64_x86_64_dyn_relocs*** %18, align 8
  br label %89

108:                                              ; preds = %99, %89
  br label %109

109:                                              ; preds = %108, %41
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ELF64_R_TYPE(i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %117 = icmp ne %struct.elf_link_hash_entry* %116, null
  %118 = zext i1 %117 to i32
  %119 = call i32 @elf64_x86_64_tls_transition(%struct.bfd_link_info* %114, i32 %115, i32 %118)
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  switch i32 %120, label %209 [
    i32 128, label %121
    i32 129, label %136
    i32 141, label %136
    i32 130, label %136
    i32 137, label %136
    i32 143, label %136
    i32 140, label %136
    i32 142, label %136
    i32 139, label %136
    i32 138, label %136
    i32 144, label %185
    i32 148, label %185
    i32 147, label %185
    i32 145, label %185
    i32 146, label %185
    i32 133, label %185
    i32 136, label %185
    i32 135, label %185
    i32 134, label %185
    i32 132, label %192
    i32 131, label %192
  ]

121:                                              ; preds = %109
  %122 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %123 = call %struct.TYPE_18__* @elf64_x86_64_hash_table(%struct.bfd_link_info* %122)
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %130 = call %struct.TYPE_18__* @elf64_x86_64_hash_table(%struct.bfd_link_info* %129)
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %128, %121
  br label %210

136:                                              ; preds = %109, %109, %109, %109, %109, %109, %109, %109, %109
  %137 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %138 = icmp ne %struct.elf_link_hash_entry* %137, null
  br i1 %138, label %139, label %167

139:                                              ; preds = %136
  %140 = load i32, i32* %15, align 4
  %141 = icmp eq i32 %140, 138
  br i1 %141, label %142, label %154

142:                                              ; preds = %139
  %143 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %144 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %150 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %148, %142, %139
  %155 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %156 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %162 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %160, %154
  br label %184

167:                                              ; preds = %136
  %168 = load i32*, i32** %11, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %183

170:                                              ; preds = %167
  %171 = load i32*, i32** %11, align 8
  %172 = load i64, i64* %14, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %170
  %177 = load i32*, i32** %11, align 8
  %178 = load i64, i64* %14, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %176, %170
  br label %183

183:                                              ; preds = %182, %167
  br label %184

184:                                              ; preds = %183, %166
  br label %210

185:                                              ; preds = %109, %109, %109, %109, %109, %109, %109, %109, %109
  %186 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %187 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %210

191:                                              ; preds = %185
  br label %192

192:                                              ; preds = %109, %109, %191
  %193 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %194 = icmp ne %struct.elf_link_hash_entry* %193, null
  br i1 %194, label %195, label %208

195:                                              ; preds = %192
  %196 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %197 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %203 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sub nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %195
  br label %208

208:                                              ; preds = %207, %192
  br label %210

209:                                              ; preds = %109
  br label %210

210:                                              ; preds = %209, %208, %190, %184, %135
  br label %211

211:                                              ; preds = %210
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 1
  store %struct.TYPE_27__* %213, %struct.TYPE_27__** %12, align 8
  br label %37

214:                                              ; preds = %37
  %215 = load i32, i32* @TRUE, align 4
  ret i32 %215
}

declare dso_local %struct.TYPE_17__* @elf_section_data(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_16__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local i32* @elf_local_got_refcounts(i32*) #1

declare dso_local i64 @ELF64_R_SYM(i32) #1

declare dso_local i32 @ELF64_R_TYPE(i32) #1

declare dso_local i32 @elf64_x86_64_tls_transition(%struct.bfd_link_info*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @elf64_x86_64_hash_table(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
