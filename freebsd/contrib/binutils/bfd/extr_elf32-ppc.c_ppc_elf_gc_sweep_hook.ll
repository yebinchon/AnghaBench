; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_gc_sweep_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_gc_sweep_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.ppc_elf_link_hash_table = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.elf_link_hash_entry* }
%struct.elf_link_hash_entry = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.ppc_elf_dyn_relocs = type { %struct.ppc_elf_dyn_relocs*, %struct.TYPE_25__* }
%struct.ppc_elf_link_hash_entry = type { %struct.ppc_elf_dyn_relocs* }
%struct.plt_entry = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { %struct.TYPE_26__ }

@SEC_ALLOC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".got2\00", align 1
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, %struct.TYPE_25__*, %struct.TYPE_27__*)* @ppc_elf_gc_sweep_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_elf_gc_sweep_hook(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_25__* %2, %struct.TYPE_27__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.ppc_elf_link_hash_table*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.elf_link_hash_entry**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.elf_link_hash_entry*, align 8
  %20 = alloca %struct.ppc_elf_dyn_relocs**, align 8
  %21 = alloca %struct.ppc_elf_dyn_relocs*, align 8
  %22 = alloca %struct.ppc_elf_link_hash_entry*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.plt_entry*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %9, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SEC_ALLOC, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %5, align 4
  br label %223

33:                                               ; preds = %4
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %35 = call %struct.TYPE_18__* @elf_section_data(%struct.TYPE_25__* %34)
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %38 = call %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info* %37)
  store %struct.ppc_elf_link_hash_table* %38, %struct.ppc_elf_link_hash_table** %10, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call %struct.TYPE_17__* @elf_tdata(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  store %struct.TYPE_26__* %41, %struct.TYPE_26__** %11, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %42)
  store %struct.elf_link_hash_entry** %43, %struct.elf_link_hash_entry*** %12, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32* @elf_local_got_refcounts(i32* %44)
  store i32* %45, i32** %13, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call %struct.TYPE_25__* @bfd_get_section_by_name(i32* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_25__* %47, %struct.TYPE_25__** %16, align 8
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i64 %52
  store %struct.TYPE_27__* %53, %struct.TYPE_27__** %15, align 8
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %54, %struct.TYPE_27__** %14, align 8
  br label %55

55:                                               ; preds = %218, %33
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %58 = icmp ult %struct.TYPE_27__* %56, %57
  br i1 %58, label %59, label %221

59:                                               ; preds = %55
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %19, align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ELF32_R_SYM(i32 %62)
  store i64 %63, i64* %17, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp uge i64 %64, %67
  br i1 %68, label %69, label %127

69:                                               ; preds = %59
  %70 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %12, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %71, %74
  %76 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %70, i64 %75
  %77 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %76, align 8
  store %struct.elf_link_hash_entry* %77, %struct.elf_link_hash_entry** %19, align 8
  br label %78

78:                                               ; preds = %94, %69
  %79 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %19, align 8
  %80 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @bfd_link_hash_indirect, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %19, align 8
  %87 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @bfd_link_hash_warning, align 8
  %91 = icmp eq i64 %89, %90
  br label %92

92:                                               ; preds = %85, %78
  %93 = phi i1 [ true, %78 ], [ %91, %85 ]
  br i1 %93, label %94, label %102

94:                                               ; preds = %92
  %95 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %19, align 8
  %96 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %101, %struct.elf_link_hash_entry** %19, align 8
  br label %78

102:                                              ; preds = %92
  %103 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %19, align 8
  %104 = bitcast %struct.elf_link_hash_entry* %103 to %struct.ppc_elf_link_hash_entry*
  store %struct.ppc_elf_link_hash_entry* %104, %struct.ppc_elf_link_hash_entry** %22, align 8
  %105 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %22, align 8
  %106 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %105, i32 0, i32 0
  store %struct.ppc_elf_dyn_relocs** %106, %struct.ppc_elf_dyn_relocs*** %20, align 8
  br label %107

107:                                              ; preds = %123, %102
  %108 = load %struct.ppc_elf_dyn_relocs**, %struct.ppc_elf_dyn_relocs*** %20, align 8
  %109 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %108, align 8
  store %struct.ppc_elf_dyn_relocs* %109, %struct.ppc_elf_dyn_relocs** %21, align 8
  %110 = icmp ne %struct.ppc_elf_dyn_relocs* %109, null
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %21, align 8
  %113 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %112, i32 0, i32 1
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %113, align 8
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %116 = icmp eq %struct.TYPE_25__* %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %21, align 8
  %119 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %118, i32 0, i32 0
  %120 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %119, align 8
  %121 = load %struct.ppc_elf_dyn_relocs**, %struct.ppc_elf_dyn_relocs*** %20, align 8
  store %struct.ppc_elf_dyn_relocs* %120, %struct.ppc_elf_dyn_relocs** %121, align 8
  br label %126

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %21, align 8
  %125 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %124, i32 0, i32 0
  store %struct.ppc_elf_dyn_relocs** %125, %struct.ppc_elf_dyn_relocs*** %20, align 8
  br label %107

126:                                              ; preds = %117, %107
  br label %127

127:                                              ; preds = %126, %59
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ELF32_R_TYPE(i32 %130)
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %18, align 4
  switch i32 %132, label %216 [
    i32 148, label %133
    i32 145, label %133
    i32 146, label %133
    i32 147, label %133
    i32 152, label %133
    i32 149, label %133
    i32 150, label %133
    i32 151, label %133
    i32 144, label %133
    i32 141, label %133
    i32 142, label %133
    i32 143, label %133
    i32 156, label %133
    i32 153, label %133
    i32 154, label %133
    i32 155, label %133
    i32 160, label %133
    i32 157, label %133
    i32 158, label %133
    i32 159, label %133
    i32 131, label %167
    i32 134, label %167
    i32 132, label %167
    i32 133, label %167
    i32 130, label %167
    i32 161, label %179
    i32 162, label %179
    i32 166, label %179
    i32 163, label %179
    i32 164, label %179
    i32 165, label %179
    i32 169, label %179
    i32 167, label %179
    i32 168, label %179
    i32 128, label %179
    i32 129, label %179
    i32 137, label %186
    i32 136, label %186
    i32 135, label %186
    i32 138, label %186
    i32 139, label %186
    i32 140, label %186
  ]

133:                                              ; preds = %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127
  %134 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %19, align 8
  %135 = icmp ne %struct.elf_link_hash_entry* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %133
  %137 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %19, align 8
  %138 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %19, align 8
  %144 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %142, %136
  br label %166

149:                                              ; preds = %133
  %150 = load i32*, i32** %13, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %165

152:                                              ; preds = %149
  %153 = load i32*, i32** %13, align 8
  %154 = load i64, i64* %17, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = load i32*, i32** %13, align 8
  %160 = load i64, i64* %17, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %158, %152
  br label %165

165:                                              ; preds = %164, %149
  br label %166

166:                                              ; preds = %165, %148
  br label %217

167:                                              ; preds = %127, %127, %127, %127, %127
  %168 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %19, align 8
  %169 = icmp eq %struct.elf_link_hash_entry* %168, null
  br i1 %169, label %177, label %170

170:                                              ; preds = %167
  %171 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %19, align 8
  %172 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %173 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 0
  %175 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %174, align 8
  %176 = icmp eq %struct.elf_link_hash_entry* %171, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %170, %167
  br label %217

178:                                              ; preds = %170
  br label %179

179:                                              ; preds = %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %178
  %180 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %181 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %217

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %127, %127, %127, %127, %127, %127, %185
  %187 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %19, align 8
  %188 = icmp ne %struct.elf_link_hash_entry* %187, null
  br i1 %188, label %189, label %215

189:                                              ; preds = %186
  %190 = load i32, i32* %18, align 4
  %191 = icmp eq i32 %190, 136
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  br label %197

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %196, %192
  %198 = phi i32 [ %195, %192 ], [ 0, %196 ]
  store i32 %198, i32* %23, align 4
  %199 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %19, align 8
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %201 = load i32, i32* %23, align 4
  %202 = call %struct.plt_entry* @find_plt_ent(%struct.elf_link_hash_entry* %199, %struct.TYPE_25__* %200, i32 %201)
  store %struct.plt_entry* %202, %struct.plt_entry** %24, align 8
  %203 = load %struct.plt_entry*, %struct.plt_entry** %24, align 8
  %204 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %197
  %209 = load %struct.plt_entry*, %struct.plt_entry** %24, align 8
  %210 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %208, %197
  br label %215

215:                                              ; preds = %214, %186
  br label %217

216:                                              ; preds = %127
  br label %217

217:                                              ; preds = %216, %215, %184, %177, %166
  br label %218

218:                                              ; preds = %217
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 1
  store %struct.TYPE_27__* %220, %struct.TYPE_27__** %14, align 8
  br label %55

221:                                              ; preds = %55
  %222 = load i32, i32* @TRUE, align 4
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %221, %31
  %224 = load i32, i32* %5, align 4
  ret i32 %224
}

declare dso_local %struct.TYPE_18__* @elf_section_data(%struct.TYPE_25__*) #1

declare dso_local %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_17__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local i32* @elf_local_got_refcounts(i32*) #1

declare dso_local %struct.TYPE_25__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i64 @ELF32_R_SYM(i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local %struct.plt_entry* @find_plt_ent(%struct.elf_link_hash_entry*, %struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
