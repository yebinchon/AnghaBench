; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_evaluate_complex_relocation_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_evaluate_complex_relocation_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { i8*, %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i32, i64, i32, i8*, %struct.TYPE_35__*, i32, %struct.TYPE_42__* }
%struct.TYPE_35__ = type { i32 }
%struct.elf_final_link_info = type { %struct.TYPE_29__*, %struct.TYPE_33__* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_33__ = type { i64 }
%struct.elf_backend_data = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.elf_link_hash_entry = type { i64, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i64, %struct.TYPE_39__, %struct.TYPE_38__ }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_30__ }
%struct.TYPE_34__ = type { %struct.TYPE_31__* }

@TRUE = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STN_UNDEF = common dso_local global i32 0, align 4
@STT_RELC = common dso_local global i64 0, align 8
@STT_SRELC = common dso_local global i64 0, align 8
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_41__*, %struct.elf_final_link_info*, i64)* @evaluate_complex_relocation_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evaluate_complex_relocation_symbols(%struct.TYPE_41__* %0, %struct.elf_final_link_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_41__*, align 8
  %6 = alloca %struct.elf_final_link_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.elf_backend_data*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.elf_link_hash_entry**, align 8
  %11 = alloca %struct.TYPE_42__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_31__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.elf_link_hash_entry*, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %5, align 8
  store %struct.elf_final_link_info* %1, %struct.elf_final_link_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %6, align 8
  %26 = getelementptr inbounds %struct.elf_final_link_info, %struct.elf_final_link_info* %25, i32 0, i32 1
  %27 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %4, align 4
  br label %258

33:                                               ; preds = %3
  %34 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %35 = call %struct.TYPE_32__* @elf_tdata(%struct.TYPE_41__* %34)
  %36 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %35, i32 0, i32 0
  store %struct.TYPE_30__* %36, %struct.TYPE_30__** %9, align 8
  %37 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %38 = call %struct.elf_link_hash_entry** @elf_sym_hashes(%struct.TYPE_41__* %37)
  store %struct.elf_link_hash_entry** %38, %struct.elf_link_hash_entry*** %10, align 8
  %39 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %40 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_41__* %39)
  store %struct.elf_backend_data* %40, %struct.elf_backend_data** %8, align 8
  %41 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_42__*, %struct.TYPE_42__** %42, align 8
  store %struct.TYPE_42__* %43, %struct.TYPE_42__** %11, align 8
  br label %44

44:                                               ; preds = %252, %33
  %45 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %46 = icmp ne %struct.TYPE_42__* %45, null
  br i1 %46, label %47, label %256

47:                                               ; preds = %44
  %48 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %252

53:                                               ; preds = %47
  %54 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SEC_RELOC, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %252

61:                                               ; preds = %53
  %62 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %252

67:                                               ; preds = %61
  %68 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %69 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %70 = load i32, i32* @FALSE, align 4
  %71 = call %struct.TYPE_31__* @_bfd_elf_link_read_relocs(%struct.TYPE_41__* %68, %struct.TYPE_42__* %69, i32* null, %struct.TYPE_31__* null, i32 %70)
  store %struct.TYPE_31__* %71, %struct.TYPE_31__** %13, align 8
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %73 = icmp eq %struct.TYPE_31__* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %252

75:                                               ; preds = %67
  %76 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %14, align 8
  br label %79

79:                                               ; preds = %240, %208, %163, %142, %116, %75
  %80 = load i64, i64* %14, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %14, align 8
  %82 = icmp ne i64 %80, 0
  br i1 %82, label %83, label %241

83:                                               ; preds = %79
  store i32 0, i32* %22, align 4
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i64 %85
  store %struct.TYPE_31__* %86, %struct.TYPE_31__** %15, align 8
  %87 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_35__*, %struct.TYPE_35__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %91, %94
  store i32 %95, i32* %20, align 4
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %21, align 4
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ELF32_R_SYM(i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %104 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %103, i32 0, i32 0
  %105 = load %struct.TYPE_36__*, %struct.TYPE_36__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 64
  br i1 %108, label %109, label %112

109:                                              ; preds = %83
  %110 = load i32, i32* %17, align 4
  %111 = ashr i32 %110, 24
  store i32 %111, i32* %17, align 4
  br label %112

112:                                              ; preds = %109, %83
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* @STN_UNDEF, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %79

117:                                              ; preds = %112
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %7, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %159

122:                                              ; preds = %117
  %123 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %6, align 8
  %124 = getelementptr inbounds %struct.elf_final_link_info, %struct.elf_final_link_info* %123, i32 0, i32 0
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %124, align 8
  %126 = load i32, i32* %17, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i64 %127
  store %struct.TYPE_29__* %128, %struct.TYPE_29__** %18, align 8
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @ELF_ST_TYPE(i32 %131)
  %133 = load i64, i64* @STT_RELC, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %122
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @ELF_ST_TYPE(i32 %138)
  %140 = load i64, i64* @STT_SRELC, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %79

143:                                              ; preds = %135, %122
  %144 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @bfd_elf_string_from_elf_section(%struct.TYPE_41__* %144, i32 %147, i32 %150)
  store i8* %151, i8** %16, align 8
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @ELF_ST_TYPE(i32 %154)
  %156 = load i64, i64* @STT_SRELC, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %22, align 4
  br label %222

159:                                              ; preds = %117
  %160 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %161 = call i64 @elf_bad_symtab(%struct.TYPE_41__* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %79

164:                                              ; preds = %159
  %165 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  %166 = load i32, i32* %17, align 4
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %7, align 8
  %169 = sub i64 %167, %168
  %170 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %165, i64 %169
  %171 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %170, align 8
  store %struct.elf_link_hash_entry* %171, %struct.elf_link_hash_entry** %23, align 8
  br label %172

172:                                              ; preds = %188, %164
  %173 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %23, align 8
  %174 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @bfd_link_hash_indirect, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %186, label %179

179:                                              ; preds = %172
  %180 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %23, align 8
  %181 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @bfd_link_hash_warning, align 8
  %185 = icmp eq i64 %183, %184
  br label %186

186:                                              ; preds = %179, %172
  %187 = phi i1 [ true, %172 ], [ %185, %179 ]
  br i1 %187, label %188, label %196

188:                                              ; preds = %186
  %189 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %23, align 8
  %190 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = inttoptr i64 %194 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %195, %struct.elf_link_hash_entry** %23, align 8
  br label %172

196:                                              ; preds = %186
  %197 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %23, align 8
  %198 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @STT_RELC, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %196
  %203 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %23, align 8
  %204 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @STT_SRELC, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  br label %79

209:                                              ; preds = %202, %196
  %210 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %23, align 8
  %211 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @STT_SRELC, align 8
  %214 = icmp eq i64 %212, %213
  %215 = zext i1 %214 to i32
  store i32 %215, i32* %22, align 4
  %216 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %23, align 8
  %217 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = inttoptr i64 %220 to i8*
  store i8* %221, i8** %16, align 8
  br label %222

222:                                              ; preds = %209, %143
  %223 = load i8*, i8** %16, align 8
  %224 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %225 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %6, align 8
  %226 = load i32, i32* %21, align 4
  %227 = load i32, i32* %20, align 4
  %228 = load i64, i64* %7, align 8
  %229 = load i32, i32* %22, align 4
  %230 = call i64 @eval_symbol(i32* %19, i8* %223, i8** %16, %struct.TYPE_41__* %224, %struct.elf_final_link_info* %225, i32 %226, i32 %227, i64 %228, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %222
  %233 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %234 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %6, align 8
  %235 = load i32, i32* %17, align 4
  %236 = load i32, i32* %19, align 4
  %237 = call i32 @set_symbol_value(%struct.TYPE_41__* %233, %struct.elf_final_link_info* %234, i32 %235, i32 %236)
  br label %240

238:                                              ; preds = %222
  %239 = load i32, i32* @FALSE, align 4
  store i32 %239, i32* %19, align 4
  br label %240

240:                                              ; preds = %238, %232
  br label %79

241:                                              ; preds = %79
  %242 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %243 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %244 = call %struct.TYPE_34__* @elf_section_data(%struct.TYPE_42__* %243)
  %245 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_31__*, %struct.TYPE_31__** %245, align 8
  %247 = icmp ne %struct.TYPE_31__* %242, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %241
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %250 = call i32 @free(%struct.TYPE_31__* %249)
  br label %251

251:                                              ; preds = %248, %241
  br label %252

252:                                              ; preds = %251, %74, %66, %60, %52
  %253 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %253, i32 0, i32 6
  %255 = load %struct.TYPE_42__*, %struct.TYPE_42__** %254, align 8
  store %struct.TYPE_42__* %255, %struct.TYPE_42__** %11, align 8
  br label %44

256:                                              ; preds = %44
  %257 = load i32, i32* %12, align 4
  store i32 %257, i32* %4, align 4
  br label %258

258:                                              ; preds = %256, %31
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local %struct.TYPE_32__* @elf_tdata(%struct.TYPE_41__*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(%struct.TYPE_41__*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_31__* @_bfd_elf_link_read_relocs(%struct.TYPE_41__*, %struct.TYPE_42__*, i32*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @ELF32_R_SYM(i32) #1

declare dso_local i64 @ELF_ST_TYPE(i32) #1

declare dso_local i8* @bfd_elf_string_from_elf_section(%struct.TYPE_41__*, i32, i32) #1

declare dso_local i64 @elf_bad_symtab(%struct.TYPE_41__*) #1

declare dso_local i64 @eval_symbol(i32*, i8*, i8**, %struct.TYPE_41__*, %struct.elf_final_link_info*, i32, i32, i64, i32) #1

declare dso_local i32 @set_symbol_value(%struct.TYPE_41__*, %struct.elf_final_link_info*, i32, i32) #1

declare dso_local %struct.TYPE_34__* @elf_section_data(%struct.TYPE_42__*) #1

declare dso_local i32 @free(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
