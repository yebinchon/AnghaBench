; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_gc_sweep_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_gc_sweep_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.ppc_link_hash_table = type { i32 }
%struct.TYPE_27__ = type { i64 }
%struct.elf_link_hash_entry = type { %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_24__ = type { %struct.plt_entry* }
%struct.plt_entry = type { %struct.TYPE_25__, i32, %struct.plt_entry* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { %struct.got_entry* }
%struct.got_entry = type { i8, %struct.TYPE_23__, i32*, i32, %struct.got_entry* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.ppc_link_hash_entry = type { %struct.ppc_dyn_relocs* }
%struct.ppc_dyn_relocs = type { %struct.ppc_dyn_relocs*, %struct.TYPE_26__* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { %struct.TYPE_27__ }

@SEC_ALLOC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TLS_TLS = common dso_local global i8 0, align 1
@TLS_LD = common dso_local global i8 0, align 1
@TLS_GD = common dso_local global i8 0, align 1
@TLS_TPREL = common dso_local global i8 0, align 1
@TLS_DTPREL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, %struct.TYPE_26__*, %struct.TYPE_16__*)* @ppc64_elf_gc_sweep_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc64_elf_gc_sweep_hook(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_26__* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.ppc_link_hash_table*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.elf_link_hash_entry**, align 8
  %13 = alloca %struct.got_entry**, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.elf_link_hash_entry*, align 8
  %19 = alloca i8, align 1
  %20 = alloca %struct.ppc_link_hash_entry*, align 8
  %21 = alloca %struct.ppc_dyn_relocs**, align 8
  %22 = alloca %struct.ppc_dyn_relocs*, align 8
  %23 = alloca %struct.got_entry*, align 8
  %24 = alloca %struct.plt_entry*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SEC_ALLOC, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %5, align 4
  br label %272

33:                                               ; preds = %4
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %35 = call %struct.TYPE_18__* @elf_section_data(%struct.TYPE_26__* %34)
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %38 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %37)
  store %struct.ppc_link_hash_table* %38, %struct.ppc_link_hash_table** %10, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call %struct.TYPE_17__* @elf_tdata(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  store %struct.TYPE_27__* %41, %struct.TYPE_27__** %11, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %42)
  store %struct.elf_link_hash_entry** %43, %struct.elf_link_hash_entry*** %12, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call %struct.got_entry** @elf_local_got_ents(i32* %44)
  store %struct.got_entry** %45, %struct.got_entry*** %13, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i64 %50
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %15, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %14, align 8
  br label %53

53:                                               ; preds = %267, %33
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %56 = icmp ult %struct.TYPE_16__* %54, %55
  br i1 %56, label %57, label %270

57:                                               ; preds = %53
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %18, align 8
  store i8 0, i8* %19, align 1
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ELF64_R_SYM(i32 %60)
  store i64 %61, i64* %16, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ELF64_R_TYPE(i32 %64)
  store i32 %65, i32* %17, align 4
  %66 = load i64, i64* %16, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp uge i64 %66, %69
  br i1 %70, label %71, label %129

71:                                               ; preds = %57
  %72 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %12, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %73, %76
  %78 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %72, i64 %77
  %79 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %78, align 8
  store %struct.elf_link_hash_entry* %79, %struct.elf_link_hash_entry** %18, align 8
  br label %80

80:                                               ; preds = %96, %71
  %81 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %82 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @bfd_link_hash_indirect, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %89 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @bfd_link_hash_warning, align 8
  %93 = icmp eq i64 %91, %92
  br label %94

94:                                               ; preds = %87, %80
  %95 = phi i1 [ true, %80 ], [ %93, %87 ]
  br i1 %95, label %96, label %104

96:                                               ; preds = %94
  %97 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %98 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %103, %struct.elf_link_hash_entry** %18, align 8
  br label %80

104:                                              ; preds = %94
  %105 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %106 = bitcast %struct.elf_link_hash_entry* %105 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %106, %struct.ppc_link_hash_entry** %20, align 8
  %107 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %20, align 8
  %108 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %107, i32 0, i32 0
  store %struct.ppc_dyn_relocs** %108, %struct.ppc_dyn_relocs*** %21, align 8
  br label %109

109:                                              ; preds = %125, %104
  %110 = load %struct.ppc_dyn_relocs**, %struct.ppc_dyn_relocs*** %21, align 8
  %111 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %110, align 8
  store %struct.ppc_dyn_relocs* %111, %struct.ppc_dyn_relocs** %22, align 8
  %112 = icmp ne %struct.ppc_dyn_relocs* %111, null
  br i1 %112, label %113, label %128

113:                                              ; preds = %109
  %114 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %22, align 8
  %115 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %114, i32 0, i32 1
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %115, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %118 = icmp eq %struct.TYPE_26__* %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %22, align 8
  %121 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %120, i32 0, i32 0
  %122 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %121, align 8
  %123 = load %struct.ppc_dyn_relocs**, %struct.ppc_dyn_relocs*** %21, align 8
  store %struct.ppc_dyn_relocs* %122, %struct.ppc_dyn_relocs** %123, align 8
  br label %128

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %22, align 8
  %127 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %126, i32 0, i32 0
  store %struct.ppc_dyn_relocs** %127, %struct.ppc_dyn_relocs*** %21, align 8
  br label %109

128:                                              ; preds = %119, %109
  br label %129

129:                                              ; preds = %128, %57
  %130 = load i32, i32* %17, align 4
  switch i32 %130, label %265 [
    i32 144, label %131
    i32 141, label %131
    i32 142, label %131
    i32 143, label %131
    i32 148, label %138
    i32 145, label %138
    i32 146, label %138
    i32 147, label %138
    i32 140, label %145
    i32 137, label %145
    i32 138, label %145
    i32 139, label %145
    i32 152, label %152
    i32 149, label %152
    i32 150, label %152
    i32 151, label %152
    i32 158, label %159
    i32 157, label %159
    i32 156, label %159
    i32 155, label %159
    i32 154, label %159
    i32 153, label %159
    i32 136, label %223
    i32 135, label %223
    i32 134, label %223
    i32 133, label %223
    i32 132, label %223
    i32 131, label %223
    i32 130, label %223
    i32 129, label %223
    i32 128, label %223
  ]

131:                                              ; preds = %129, %129, %129, %129
  %132 = load i8, i8* @TLS_TLS, align 1
  %133 = sext i8 %132 to i32
  %134 = load i8, i8* @TLS_LD, align 1
  %135 = sext i8 %134 to i32
  %136 = or i32 %133, %135
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %19, align 1
  br label %160

138:                                              ; preds = %129, %129, %129, %129
  %139 = load i8, i8* @TLS_TLS, align 1
  %140 = sext i8 %139 to i32
  %141 = load i8, i8* @TLS_GD, align 1
  %142 = sext i8 %141 to i32
  %143 = or i32 %140, %142
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %19, align 1
  br label %160

145:                                              ; preds = %129, %129, %129, %129
  %146 = load i8, i8* @TLS_TLS, align 1
  %147 = sext i8 %146 to i32
  %148 = load i8, i8* @TLS_TPREL, align 1
  %149 = sext i8 %148 to i32
  %150 = or i32 %147, %149
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %19, align 1
  br label %160

152:                                              ; preds = %129, %129, %129, %129
  %153 = load i8, i8* @TLS_TLS, align 1
  %154 = sext i8 %153 to i32
  %155 = load i8, i8* @TLS_DTPREL, align 1
  %156 = sext i8 %155 to i32
  %157 = or i32 %154, %156
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %19, align 1
  br label %160

159:                                              ; preds = %129, %129, %129, %129, %129, %129
  br label %160

160:                                              ; preds = %159, %152, %145, %138, %131
  %161 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %162 = icmp ne %struct.elf_link_hash_entry* %161, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %165 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load %struct.got_entry*, %struct.got_entry** %166, align 8
  store %struct.got_entry* %167, %struct.got_entry** %23, align 8
  br label %173

168:                                              ; preds = %160
  %169 = load %struct.got_entry**, %struct.got_entry*** %13, align 8
  %170 = load i64, i64* %16, align 8
  %171 = getelementptr inbounds %struct.got_entry*, %struct.got_entry** %169, i64 %170
  %172 = load %struct.got_entry*, %struct.got_entry** %171, align 8
  store %struct.got_entry* %172, %struct.got_entry** %23, align 8
  br label %173

173:                                              ; preds = %168, %163
  br label %174

174:                                              ; preds = %201, %173
  %175 = load %struct.got_entry*, %struct.got_entry** %23, align 8
  %176 = icmp ne %struct.got_entry* %175, null
  br i1 %176, label %177, label %205

177:                                              ; preds = %174
  %178 = load %struct.got_entry*, %struct.got_entry** %23, align 8
  %179 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %180, %183
  br i1 %184, label %185, label %200

185:                                              ; preds = %177
  %186 = load %struct.got_entry*, %struct.got_entry** %23, align 8
  %187 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load i32*, i32** %6, align 8
  %190 = icmp eq i32* %188, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %185
  %192 = load %struct.got_entry*, %struct.got_entry** %23, align 8
  %193 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %192, i32 0, i32 0
  %194 = load i8, i8* %193, align 8
  %195 = sext i8 %194 to i32
  %196 = load i8, i8* %19, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %195, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  br label %205

200:                                              ; preds = %191, %185, %177
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.got_entry*, %struct.got_entry** %23, align 8
  %203 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %202, i32 0, i32 4
  %204 = load %struct.got_entry*, %struct.got_entry** %203, align 8
  store %struct.got_entry* %204, %struct.got_entry** %23, align 8
  br label %174

205:                                              ; preds = %199, %174
  %206 = load %struct.got_entry*, %struct.got_entry** %23, align 8
  %207 = icmp eq %struct.got_entry* %206, null
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = call i32 (...) @abort() #3
  unreachable

210:                                              ; preds = %205
  %211 = load %struct.got_entry*, %struct.got_entry** %23, align 8
  %212 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %210
  %217 = load %struct.got_entry*, %struct.got_entry** %23, align 8
  %218 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %216, %210
  br label %266

223:                                              ; preds = %129, %129, %129, %129, %129, %129, %129, %129, %129
  %224 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %225 = icmp ne %struct.elf_link_hash_entry* %224, null
  br i1 %225, label %226, label %264

226:                                              ; preds = %223
  %227 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %228 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 0
  %230 = load %struct.plt_entry*, %struct.plt_entry** %229, align 8
  store %struct.plt_entry* %230, %struct.plt_entry** %24, align 8
  br label %231

231:                                              ; preds = %244, %226
  %232 = load %struct.plt_entry*, %struct.plt_entry** %24, align 8
  %233 = icmp ne %struct.plt_entry* %232, null
  br i1 %233, label %234, label %248

234:                                              ; preds = %231
  %235 = load %struct.plt_entry*, %struct.plt_entry** %24, align 8
  %236 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %237, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %234
  br label %248

243:                                              ; preds = %234
  br label %244

244:                                              ; preds = %243
  %245 = load %struct.plt_entry*, %struct.plt_entry** %24, align 8
  %246 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %245, i32 0, i32 2
  %247 = load %struct.plt_entry*, %struct.plt_entry** %246, align 8
  store %struct.plt_entry* %247, %struct.plt_entry** %24, align 8
  br label %231

248:                                              ; preds = %242, %231
  %249 = load %struct.plt_entry*, %struct.plt_entry** %24, align 8
  %250 = icmp ne %struct.plt_entry* %249, null
  br i1 %250, label %251, label %263

251:                                              ; preds = %248
  %252 = load %struct.plt_entry*, %struct.plt_entry** %24, align 8
  %253 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %251
  %258 = load %struct.plt_entry*, %struct.plt_entry** %24, align 8
  %259 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = sub nsw i32 %261, 1
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %257, %251, %248
  br label %264

264:                                              ; preds = %263, %223
  br label %266

265:                                              ; preds = %129
  br label %266

266:                                              ; preds = %265, %264, %222
  br label %267

267:                                              ; preds = %266
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 1
  store %struct.TYPE_16__* %269, %struct.TYPE_16__** %14, align 8
  br label %53

270:                                              ; preds = %53
  %271 = load i32, i32* @TRUE, align 4
  store i32 %271, i32* %5, align 4
  br label %272

272:                                              ; preds = %270, %31
  %273 = load i32, i32* %5, align 4
  ret i32 %273
}

declare dso_local %struct.TYPE_18__* @elf_section_data(%struct.TYPE_26__*) #1

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_17__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local %struct.got_entry** @elf_local_got_ents(i32*) #1

declare dso_local i64 @ELF64_R_SYM(i32) #1

declare dso_local i32 @ELF64_R_TYPE(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
