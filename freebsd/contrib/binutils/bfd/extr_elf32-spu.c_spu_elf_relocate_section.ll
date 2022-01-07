; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_relocate_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_relocate_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { i32 }
%struct.bfd_link_info = type { i32, i64, %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32 (%struct.bfd_link_info*, i8*, i8*, i32*, %struct.TYPE_45__*, i32)*, i32 (%struct.bfd_link_info*, i8*, i32*, %struct.TYPE_45__*, i32, i32)*, i32 (%struct.bfd_link_info*, %struct.TYPE_37__*, i8*, i32, i64, i32*, %struct.TYPE_45__*, i32)* }
%struct.TYPE_37__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i8* }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_47__ = type { i32, i64, i64 }
%struct.TYPE_46__ = type { i64, i32, i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_37__ }
%struct.spu_link_hash_table = type { %struct.TYPE_42__*, i32 }
%struct.TYPE_42__ = type { i64, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i64 }
%struct.spu_stub_hash_entry = type { i64 }
%struct.TYPE_39__ = type { %struct.TYPE_46__ }
%struct.TYPE_40__ = type { %struct.TYPE_46__ }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@R_SPU_PPU32 = common dso_local global i32 0, align 4
@R_SPU_PPU64 = common dso_local global i32 0, align 4
@elf_howto_table = common dso_local global %struct.TYPE_44__* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"%B(%s+0x%lx): unresolvable %s relocation against symbol `%s'\00", align 1
@bfd_reloc_ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"internal error: out of range error\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"internal error: unsupported relocation error\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"internal error: dangerous error\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"internal error: unknown error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, i32*, %struct.TYPE_45__*, i32*, %struct.TYPE_47__*, i32*, %struct.TYPE_45__**)* @spu_elf_relocate_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_elf_relocate_section(i32* %0, %struct.bfd_link_info* %1, i32* %2, %struct.TYPE_45__* %3, i32* %4, %struct.TYPE_47__* %5, i32* %6, %struct.TYPE_45__** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.bfd_link_info*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_45__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_47__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_45__**, align 8
  %18 = alloca %struct.TYPE_46__*, align 8
  %19 = alloca %struct.elf_link_hash_entry**, align 8
  %20 = alloca %struct.TYPE_47__*, align 8
  %21 = alloca %struct.TYPE_47__*, align 8
  %22 = alloca %struct.spu_link_hash_table*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_44__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_45__*, align 8
  %30 = alloca %struct.elf_link_hash_entry*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca %struct.spu_stub_hash_entry*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca %struct.TYPE_47__*, align 8
  %42 = alloca %struct.TYPE_46__*, align 8
  %43 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_45__* %3, %struct.TYPE_45__** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.TYPE_47__* %5, %struct.TYPE_47__** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.TYPE_45__** %7, %struct.TYPE_45__*** %17, align 8
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %23, align 4
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %24, align 4
  %46 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %47 = call %struct.spu_link_hash_table* @spu_hash_table(%struct.bfd_link_info* %46)
  store %struct.spu_link_hash_table* %47, %struct.spu_link_hash_table** %22, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = call %struct.TYPE_39__* @elf_tdata(i32* %48)
  %50 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %49, i32 0, i32 0
  store %struct.TYPE_46__* %50, %struct.TYPE_46__** %18, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i64 @elf_sym_hashes(i32* %51)
  %53 = inttoptr i64 %52 to %struct.elf_link_hash_entry**
  store %struct.elf_link_hash_entry** %53, %struct.elf_link_hash_entry*** %19, align 8
  %54 = load %struct.TYPE_47__*, %struct.TYPE_47__** %15, align 8
  store %struct.TYPE_47__* %54, %struct.TYPE_47__** %20, align 8
  %55 = load %struct.TYPE_47__*, %struct.TYPE_47__** %15, align 8
  %56 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %55, i64 %59
  store %struct.TYPE_47__* %60, %struct.TYPE_47__** %21, align 8
  br label %61

61:                                               ; preds = %341, %8
  %62 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %63 = load %struct.TYPE_47__*, %struct.TYPE_47__** %21, align 8
  %64 = icmp ult %struct.TYPE_47__* %62, %63
  br i1 %64, label %65, label %344

65:                                               ; preds = %61
  %66 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @ELF32_R_SYM(i64 %68)
  store i64 %69, i64* %27, align 8
  %70 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %71 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ELF32_R_TYPE(i64 %72)
  store i32 %73, i32* %25, align 4
  %74 = load i32, i32* %25, align 4
  %75 = load i32, i32* @R_SPU_PPU32, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %65
  %78 = load i32, i32* %25, align 4
  %79 = load i32, i32* @R_SPU_PPU64, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %65
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %24, align 4
  br label %341

83:                                               ; preds = %77
  %84 = load %struct.TYPE_44__*, %struct.TYPE_44__** @elf_howto_table, align 8
  %85 = load i32, i32* %25, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %84, i64 %86
  store %struct.TYPE_44__* %87, %struct.TYPE_44__** %26, align 8
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %35, align 4
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %36, align 4
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %30, align 8
  store i32* null, i32** %28, align 8
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %29, align 8
  %90 = load i64, i64* %27, align 8
  %91 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %90, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %83
  %96 = load i32*, i32** %16, align 8
  %97 = load i64, i64* %27, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %28, align 8
  %99 = load %struct.TYPE_45__**, %struct.TYPE_45__*** %17, align 8
  %100 = load i64, i64* %27, align 8
  %101 = getelementptr inbounds %struct.TYPE_45__*, %struct.TYPE_45__** %99, i64 %100
  %102 = load %struct.TYPE_45__*, %struct.TYPE_45__** %101, align 8
  store %struct.TYPE_45__* %102, %struct.TYPE_45__** %29, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %105 = load i32*, i32** %28, align 8
  %106 = load %struct.TYPE_45__*, %struct.TYPE_45__** %29, align 8
  %107 = call i8* @bfd_elf_sym_name(i32* %103, %struct.TYPE_46__* %104, i32* %105, %struct.TYPE_45__* %106)
  store i8* %107, i8** %31, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32*, i32** %28, align 8
  %110 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %111 = call i64 @_bfd_elf_rela_local_sym(i32* %108, i32* %109, %struct.TYPE_45__** %29, %struct.TYPE_47__* %110)
  store i64 %111, i64* %32, align 8
  br label %131

112:                                              ; preds = %83
  %113 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %116 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %117 = load i64, i64* %27, align 8
  %118 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %119 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %19, align 8
  %120 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %30, align 8
  %121 = load %struct.TYPE_45__*, %struct.TYPE_45__** %29, align 8
  %122 = load i64, i64* %32, align 8
  %123 = load i32, i32* %35, align 4
  %124 = load i32, i32* %36, align 4
  %125 = call i32 @RELOC_FOR_GLOBAL_SYMBOL(%struct.bfd_link_info* %113, i32* %114, %struct.TYPE_45__* %115, %struct.TYPE_47__* %116, i64 %117, %struct.TYPE_46__* %118, %struct.elf_link_hash_entry** %119, %struct.elf_link_hash_entry* %120, %struct.TYPE_45__* %121, i64 %122, i32 %123, i32 %124)
  %126 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %30, align 8
  %127 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %31, align 8
  br label %131

131:                                              ; preds = %112, %95
  %132 = load %struct.TYPE_45__*, %struct.TYPE_45__** %29, align 8
  %133 = icmp ne %struct.TYPE_45__* %132, null
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = load %struct.TYPE_45__*, %struct.TYPE_45__** %29, align 8
  %136 = call i64 @elf_discarded_section(%struct.TYPE_45__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %134
  %139 = load %struct.TYPE_44__*, %struct.TYPE_44__** %26, align 8
  %140 = load i32*, i32** %12, align 8
  %141 = load i32*, i32** %14, align 8
  %142 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = call i32 @_bfd_clear_contents(%struct.TYPE_44__* %139, i32* %140, i32* %146)
  %148 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %148, i32 0, i32 1
  store i64 0, i64* %149, align 8
  %150 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %150, i32 0, i32 2
  store i64 0, i64* %151, align 8
  br label %341

152:                                              ; preds = %134, %131
  %153 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %154 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %341

158:                                              ; preds = %152
  %159 = load i32, i32* %35, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %158
  %162 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %163 = load i32*, i32** %12, align 8
  %164 = load i32*, i32** %12, align 8
  %165 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %166 = call i32 @bfd_get_section_name(i32* %164, %struct.TYPE_45__* %165)
  %167 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %168 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = load %struct.TYPE_44__*, %struct.TYPE_44__** %26, align 8
  %172 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i8*, i8** %31, align 8
  %175 = call i32 @_bfd_error_handler(i8* %162, i32* %163, i32 %166, i64 %170, i32 %173, i8* %174)
  %176 = load i32, i32* @FALSE, align 4
  store i32 %176, i32* %23, align 4
  br label %177

177:                                              ; preds = %161, %158
  %178 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %179 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %33, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %183 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %181, i64 %185
  %187 = call i64 @is_branch(i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %177
  %190 = load i32*, i32** %14, align 8
  %191 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %192 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %190, i64 %194
  %196 = call i64 @is_hint(i32* %195)
  %197 = icmp ne i64 %196, 0
  br label %198

198:                                              ; preds = %189, %177
  %199 = phi i1 [ true, %177 ], [ %197, %189 ]
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %37, align 4
  %201 = load i8*, i8** %31, align 8
  %202 = load %struct.TYPE_45__*, %struct.TYPE_45__** %29, align 8
  %203 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %204 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %22, align 8
  %205 = load i32, i32* %37, align 4
  %206 = call i64 @needs_ovl_stub(i8* %201, %struct.TYPE_45__* %202, %struct.TYPE_45__* %203, %struct.spu_link_hash_table* %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %248

208:                                              ; preds = %198
  %209 = load %struct.TYPE_45__*, %struct.TYPE_45__** %29, align 8
  %210 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %30, align 8
  %211 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %212 = call i8* @spu_stub_name(%struct.TYPE_45__* %209, %struct.elf_link_hash_entry* %210, %struct.TYPE_47__* %211)
  store i8* %212, i8** %38, align 8
  %213 = load i8*, i8** %38, align 8
  %214 = icmp eq i8* %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = load i32, i32* @FALSE, align 4
  store i32 %216, i32* %9, align 4
  br label %418

217:                                              ; preds = %208
  %218 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %22, align 8
  %219 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %218, i32 0, i32 1
  %220 = load i8*, i8** %38, align 8
  %221 = load i32, i32* @FALSE, align 4
  %222 = load i32, i32* @FALSE, align 4
  %223 = call i64 @bfd_hash_lookup(i32* %219, i8* %220, i32 %221, i32 %222)
  %224 = inttoptr i64 %223 to %struct.spu_stub_hash_entry*
  store %struct.spu_stub_hash_entry* %224, %struct.spu_stub_hash_entry** %39, align 8
  %225 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %39, align 8
  %226 = icmp ne %struct.spu_stub_hash_entry* %225, null
  br i1 %226, label %227, label %245

227:                                              ; preds = %217
  %228 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %22, align 8
  %229 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %228, i32 0, i32 0
  %230 = load %struct.TYPE_42__*, %struct.TYPE_42__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_41__*, %struct.TYPE_41__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %22, align 8
  %236 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %235, i32 0, i32 0
  %237 = load %struct.TYPE_42__*, %struct.TYPE_42__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %234, %239
  %241 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %39, align 8
  %242 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %240, %243
  store i64 %244, i64* %32, align 8
  store i64 0, i64* %33, align 8
  br label %245

245:                                              ; preds = %227, %217
  %246 = load i8*, i8** %38, align 8
  %247 = call i32 @free(i8* %246)
  br label %248

248:                                              ; preds = %245, %198
  %249 = load %struct.TYPE_44__*, %struct.TYPE_44__** %26, align 8
  %250 = load i32*, i32** %12, align 8
  %251 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %252 = load i32*, i32** %14, align 8
  %253 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %254 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i64, i64* %32, align 8
  %257 = load i64, i64* %33, align 8
  %258 = call i32 @_bfd_final_link_relocate(%struct.TYPE_44__* %249, i32* %250, %struct.TYPE_45__* %251, i32* %252, i32 %255, i64 %256, i64 %257)
  store i32 %258, i32* %34, align 4
  %259 = load i32, i32* %34, align 4
  %260 = load i32, i32* @bfd_reloc_ok, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %340

262:                                              ; preds = %248
  store i8* null, i8** %40, align 8
  %263 = load i32, i32* %34, align 4
  switch i32 %263, label %318 [
    i32 129, label %264
    i32 128, label %293
    i32 130, label %312
    i32 131, label %314
    i32 132, label %316
  ]

264:                                              ; preds = %262
  %265 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %266 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %265, i32 0, i32 2
  %267 = load %struct.TYPE_43__*, %struct.TYPE_43__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %267, i32 0, i32 2
  %269 = load i32 (%struct.bfd_link_info*, %struct.TYPE_37__*, i8*, i32, i64, i32*, %struct.TYPE_45__*, i32)*, i32 (%struct.bfd_link_info*, %struct.TYPE_37__*, i8*, i32, i64, i32*, %struct.TYPE_45__*, i32)** %268, align 8
  %270 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %271 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %30, align 8
  %272 = icmp ne %struct.elf_link_hash_entry* %271, null
  br i1 %272, label %273, label %276

273:                                              ; preds = %264
  %274 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %30, align 8
  %275 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %274, i32 0, i32 0
  br label %277

276:                                              ; preds = %264
  br label %277

277:                                              ; preds = %276, %273
  %278 = phi %struct.TYPE_37__* [ %275, %273 ], [ null, %276 ]
  %279 = load i8*, i8** %31, align 8
  %280 = load %struct.TYPE_44__*, %struct.TYPE_44__** %26, align 8
  %281 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** %12, align 8
  %284 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %285 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %286 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 %269(%struct.bfd_link_info* %270, %struct.TYPE_37__* %278, i8* %279, i32 %282, i64 0, i32* %283, %struct.TYPE_45__* %284, i32 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %277
  %291 = load i32, i32* @FALSE, align 4
  store i32 %291, i32* %9, align 4
  br label %418

292:                                              ; preds = %277
  br label %339

293:                                              ; preds = %262
  %294 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %295 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %294, i32 0, i32 2
  %296 = load %struct.TYPE_43__*, %struct.TYPE_43__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %296, i32 0, i32 1
  %298 = load i32 (%struct.bfd_link_info*, i8*, i32*, %struct.TYPE_45__*, i32, i32)*, i32 (%struct.bfd_link_info*, i8*, i32*, %struct.TYPE_45__*, i32, i32)** %297, align 8
  %299 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %300 = load i8*, i8** %31, align 8
  %301 = load i32*, i32** %12, align 8
  %302 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %303 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %304 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @TRUE, align 4
  %307 = call i32 %298(%struct.bfd_link_info* %299, i8* %300, i32* %301, %struct.TYPE_45__* %302, i32 %305, i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %293
  %310 = load i32, i32* @FALSE, align 4
  store i32 %310, i32* %9, align 4
  br label %418

311:                                              ; preds = %293
  br label %339

312:                                              ; preds = %262
  %313 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i8* %313, i8** %40, align 8
  br label %320

314:                                              ; preds = %262
  %315 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i8* %315, i8** %40, align 8
  br label %320

316:                                              ; preds = %262
  %317 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i8* %317, i8** %40, align 8
  br label %320

318:                                              ; preds = %262
  %319 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i8* %319, i8** %40, align 8
  br label %320

320:                                              ; preds = %318, %316, %314, %312
  %321 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %322 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %321, i32 0, i32 2
  %323 = load %struct.TYPE_43__*, %struct.TYPE_43__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %323, i32 0, i32 0
  %325 = load i32 (%struct.bfd_link_info*, i8*, i8*, i32*, %struct.TYPE_45__*, i32)*, i32 (%struct.bfd_link_info*, i8*, i8*, i32*, %struct.TYPE_45__*, i32)** %324, align 8
  %326 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %327 = load i8*, i8** %40, align 8
  %328 = load i8*, i8** %31, align 8
  %329 = load i32*, i32** %12, align 8
  %330 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %331 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %332 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = call i32 %325(%struct.bfd_link_info* %326, i8* %327, i8* %328, i32* %329, %struct.TYPE_45__* %330, i32 %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %338, label %336

336:                                              ; preds = %320
  %337 = load i32, i32* @FALSE, align 4
  store i32 %337, i32* %9, align 4
  br label %418

338:                                              ; preds = %320
  br label %339

339:                                              ; preds = %338, %311, %292
  br label %340

340:                                              ; preds = %339, %248
  br label %341

341:                                              ; preds = %340, %157, %138, %81
  %342 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %343 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %342, i32 1
  store %struct.TYPE_47__* %343, %struct.TYPE_47__** %20, align 8
  br label %61

344:                                              ; preds = %61
  %345 = load i32, i32* %23, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %416

347:                                              ; preds = %344
  %348 = load i32, i32* %24, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %416

350:                                              ; preds = %347
  %351 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %352 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %416, label %355

355:                                              ; preds = %350
  %356 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %357 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %416, label %360

360:                                              ; preds = %355
  %361 = load %struct.TYPE_47__*, %struct.TYPE_47__** %15, align 8
  store %struct.TYPE_47__* %361, %struct.TYPE_47__** %20, align 8
  store %struct.TYPE_47__* %361, %struct.TYPE_47__** %41, align 8
  %362 = load %struct.TYPE_47__*, %struct.TYPE_47__** %15, align 8
  %363 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %364 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %362, i64 %366
  store %struct.TYPE_47__* %367, %struct.TYPE_47__** %21, align 8
  br label %368

368:                                              ; preds = %391, %360
  %369 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %370 = load %struct.TYPE_47__*, %struct.TYPE_47__** %21, align 8
  %371 = icmp ult %struct.TYPE_47__* %369, %370
  br i1 %371, label %372, label %394

372:                                              ; preds = %368
  %373 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %374 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = call i32 @ELF32_R_TYPE(i64 %375)
  store i32 %376, i32* %43, align 4
  %377 = load i32, i32* %43, align 4
  %378 = load i32, i32* @R_SPU_PPU32, align 4
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %384, label %380

380:                                              ; preds = %372
  %381 = load i32, i32* %43, align 4
  %382 = load i32, i32* @R_SPU_PPU64, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %390

384:                                              ; preds = %380, %372
  %385 = load %struct.TYPE_47__*, %struct.TYPE_47__** %41, align 8
  %386 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %385, i32 1
  store %struct.TYPE_47__* %386, %struct.TYPE_47__** %41, align 8
  %387 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %388 = bitcast %struct.TYPE_47__* %385 to i8*
  %389 = bitcast %struct.TYPE_47__* %387 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %388, i8* align 8 %389, i64 24, i1 false)
  br label %390

390:                                              ; preds = %384, %380
  br label %391

391:                                              ; preds = %390
  %392 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %393 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %392, i32 1
  store %struct.TYPE_47__* %393, %struct.TYPE_47__** %20, align 8
  br label %368

394:                                              ; preds = %368
  %395 = load %struct.TYPE_47__*, %struct.TYPE_47__** %41, align 8
  %396 = load %struct.TYPE_47__*, %struct.TYPE_47__** %15, align 8
  %397 = ptrtoint %struct.TYPE_47__* %395 to i64
  %398 = ptrtoint %struct.TYPE_47__* %396 to i64
  %399 = sub i64 %397, %398
  %400 = sdiv exact i64 %399, 24
  %401 = trunc i64 %400 to i32
  %402 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %403 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %402, i32 0, i32 0
  store i32 %401, i32* %403, align 4
  %404 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %405 = call %struct.TYPE_40__* @elf_section_data(%struct.TYPE_45__* %404)
  %406 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %405, i32 0, i32 0
  store %struct.TYPE_46__* %406, %struct.TYPE_46__** %42, align 8
  %407 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %408 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.TYPE_46__*, %struct.TYPE_46__** %42, align 8
  %411 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 4
  %413 = mul nsw i32 %409, %412
  %414 = load %struct.TYPE_46__*, %struct.TYPE_46__** %42, align 8
  %415 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %414, i32 0, i32 1
  store i32 %413, i32* %415, align 8
  store i32 2, i32* %23, align 4
  br label %416

416:                                              ; preds = %394, %355, %350, %347, %344
  %417 = load i32, i32* %23, align 4
  store i32 %417, i32* %9, align 4
  br label %418

418:                                              ; preds = %416, %336, %309, %290, %215
  %419 = load i32, i32* %9, align 4
  ret i32 %419
}

declare dso_local %struct.spu_link_hash_table* @spu_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_39__* @elf_tdata(i32*) #1

declare dso_local i64 @elf_sym_hashes(i32*) #1

declare dso_local i64 @ELF32_R_SYM(i64) #1

declare dso_local i32 @ELF32_R_TYPE(i64) #1

declare dso_local i8* @bfd_elf_sym_name(i32*, %struct.TYPE_46__*, i32*, %struct.TYPE_45__*) #1

declare dso_local i64 @_bfd_elf_rela_local_sym(i32*, i32*, %struct.TYPE_45__**, %struct.TYPE_47__*) #1

declare dso_local i32 @RELOC_FOR_GLOBAL_SYMBOL(%struct.bfd_link_info*, i32*, %struct.TYPE_45__*, %struct.TYPE_47__*, i64, %struct.TYPE_46__*, %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*, %struct.TYPE_45__*, i64, i32, i32) #1

declare dso_local i64 @elf_discarded_section(%struct.TYPE_45__*) #1

declare dso_local i32 @_bfd_clear_contents(%struct.TYPE_44__*, i32*, i32*) #1

declare dso_local i32 @_bfd_error_handler(i8*, i32*, i32, i64, i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @bfd_get_section_name(i32*, %struct.TYPE_45__*) #1

declare dso_local i64 @is_branch(i32*) #1

declare dso_local i64 @is_hint(i32*) #1

declare dso_local i64 @needs_ovl_stub(i8*, %struct.TYPE_45__*, %struct.TYPE_45__*, %struct.spu_link_hash_table*, i32) #1

declare dso_local i8* @spu_stub_name(%struct.TYPE_45__*, %struct.elf_link_hash_entry*, %struct.TYPE_47__*) #1

declare dso_local i64 @bfd_hash_lookup(i32*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_bfd_final_link_relocate(%struct.TYPE_44__*, i32*, %struct.TYPE_45__*, i32*, i32, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_40__* @elf_section_data(%struct.TYPE_45__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
