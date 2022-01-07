; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_toc_adjusting_stub_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_toc_adjusting_stub_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_30__ = type { i32, i64, i64, i64, i32, i32, i64, i32, %struct.TYPE_42__*, i64, i32 }
%struct.TYPE_42__ = type { i64 }
%struct.TYPE_31__ = type { i64, i64, i64, i32 }
%struct.ppc_link_hash_table = type { i64, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i64, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i64 }
%struct.ppc_link_hash_entry = type { %struct.TYPE_38__*, %struct.TYPE_35__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32* }
%struct.TYPE_35__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_33__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i8* }
%struct.TYPE_34__ = type { %struct.TYPE_31__* }

@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c".fixup\00", align 1
@R_PPC64_REL24 = common dso_local global i32 0, align 4
@R_PPC64_REL14 = common dso_local global i32 0, align 4
@R_PPC64_REL14_BRTAKEN = common dso_local global i32 0, align 4
@R_PPC64_REL14_BRNTAKEN = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, %struct.TYPE_30__*)* @toc_adjusting_stub_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toc_adjusting_stub_needed(%struct.bfd_link_info* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ppc_link_hash_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.elf_link_hash_entry*, align 8
  %14 = alloca %struct.ppc_link_hash_entry*, align 8
  %15 = alloca %struct.TYPE_31__*, align 8
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %354

29:                                               ; preds = %2
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %354

35:                                               ; preds = %29
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 8
  %38 = load %struct.TYPE_42__*, %struct.TYPE_42__** %37, align 8
  %39 = icmp eq %struct.TYPE_42__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %354

41:                                               ; preds = %35
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @strcmp(i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %354

48:                                               ; preds = %41
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %354

54:                                               ; preds = %48
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %59 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %60 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_31__* @_bfd_elf_link_read_relocs(i32 %57, %struct.TYPE_30__* %58, i32* null, i32* null, i32 %61)
  store %struct.TYPE_31__* %62, %struct.TYPE_31__** %6, align 8
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %64 = icmp eq %struct.TYPE_31__* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %354

66:                                               ; preds = %54
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %8, align 8
  store i32 0, i32* %9, align 4
  %67 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %68 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %67)
  store %struct.ppc_link_hash_table* %68, %struct.ppc_link_hash_table** %10, align 8
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_31__* %69, %struct.TYPE_31__** %7, align 8
  br label %70

70:                                               ; preds = %322, %66
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i64 %75
  %77 = icmp ult %struct.TYPE_31__* %71, %76
  br i1 %77, label %78, label %325

78:                                               ; preds = %70
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ELF64_R_TYPE(i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @R_PPC64_REL24, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %78
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @R_PPC64_REL14, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @R_PPC64_REL14_BRTAKEN, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @R_PPC64_REL14_BRNTAKEN, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %322

99:                                               ; preds = %94, %90, %86, %78
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @ELF64_R_SYM(i32 %102)
  store i64 %103, i64* %12, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @get_sym_h(%struct.elf_link_hash_entry** %13, %struct.TYPE_31__** %15, %struct.TYPE_30__** %16, i32* null, %struct.TYPE_31__** %8, i64 %104, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %99
  store i32 -1, i32* %9, align 4
  br label %325

111:                                              ; preds = %99
  %112 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %113 = bitcast %struct.elf_link_hash_entry* %112 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %113, %struct.ppc_link_hash_entry** %14, align 8
  %114 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %14, align 8
  %115 = icmp ne %struct.ppc_link_hash_entry* %114, null
  br i1 %115, label %116, label %138

116:                                              ; preds = %111
  %117 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %14, align 8
  %118 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %137, label %123

123:                                              ; preds = %116
  %124 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %14, align 8
  %125 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %124, i32 0, i32 0
  %126 = load %struct.TYPE_38__*, %struct.TYPE_38__** %125, align 8
  %127 = icmp ne %struct.TYPE_38__* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %14, align 8
  %130 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %129, i32 0, i32 0
  %131 = load %struct.TYPE_38__*, %struct.TYPE_38__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %128, %116
  store i32 1, i32* %9, align 4
  br label %325

138:                                              ; preds = %128, %123, %111
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %140 = icmp eq %struct.TYPE_30__* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %322

142:                                              ; preds = %138
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 8
  %145 = load %struct.TYPE_42__*, %struct.TYPE_42__** %144, align 8
  %146 = icmp eq %struct.TYPE_42__* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i32 1, i32* %9, align 4
  br label %325

148:                                              ; preds = %142
  %149 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %150 = icmp eq %struct.elf_link_hash_entry* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %18, align 8
  br label %178

155:                                              ; preds = %148
  %156 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %157 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @bfd_link_hash_defined, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %155
  %163 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %164 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @bfd_link_hash_defweak, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = call i32 (...) @abort() #3
  unreachable

171:                                              ; preds = %162, %155
  %172 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %173 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %18, align 8
  br label %178

178:                                              ; preds = %171, %151
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %18, align 8
  %183 = add nsw i64 %182, %181
  store i64 %183, i64* %18, align 8
  %184 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %185 = call i64* @get_opd_info(%struct.TYPE_30__* %184)
  store i64* %185, i64** %17, align 8
  %186 = load i64*, i64** %17, align 8
  %187 = icmp ne i64* %186, null
  br i1 %187, label %188, label %214

188:                                              ; preds = %178
  %189 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %190 = icmp eq %struct.elf_link_hash_entry* %189, null
  br i1 %190, label %191, label %206

191:                                              ; preds = %188
  %192 = load i64*, i64** %17, align 8
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = sdiv i64 %195, 8
  %197 = getelementptr inbounds i64, i64* %192, i64 %196
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %20, align 8
  %199 = load i64, i64* %20, align 8
  %200 = icmp eq i64 %199, -1
  br i1 %200, label %201, label %202

201:                                              ; preds = %191
  br label %322

202:                                              ; preds = %191
  %203 = load i64, i64* %20, align 8
  %204 = load i64, i64* %18, align 8
  %205 = add nsw i64 %204, %203
  store i64 %205, i64* %18, align 8
  br label %206

206:                                              ; preds = %202, %188
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %208 = load i64, i64* %18, align 8
  %209 = call i64 @opd_entry_value(%struct.TYPE_30__* %207, i64 %208, %struct.TYPE_30__** %16, i32* null)
  store i64 %209, i64* %19, align 8
  %210 = load i64, i64* %19, align 8
  %211 = icmp eq i64 %210, -1
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  br label %322

213:                                              ; preds = %206
  br label %226

214:                                              ; preds = %178
  %215 = load i64, i64* %18, align 8
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %215, %218
  %220 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %221 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %220, i32 0, i32 8
  %222 = load %struct.TYPE_42__*, %struct.TYPE_42__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %219, %224
  store i64 %225, i64* %19, align 8
  br label %226

226:                                              ; preds = %214, %213
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %228 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %229 = icmp eq %struct.TYPE_30__* %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  br label %322

231:                                              ; preds = %226
  %232 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %232, i32 0, i32 9
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %231
  %237 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %238 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %236, %231
  store i32 1, i32* %9, align 4
  br label %325

242:                                              ; preds = %236
  %243 = load i64, i64* %19, align 8
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %247, i32 0, i32 8
  %249 = load %struct.TYPE_42__*, %struct.TYPE_42__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %246, %251
  %253 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %252, %255
  %257 = sub nsw i64 %243, %256
  %258 = add nsw i64 %257, 33554432
  %259 = icmp sge i64 %258, 67108864
  br i1 %259, label %260, label %261

260:                                              ; preds = %242
  store i32 1, i32* %9, align 4
  br label %325

261:                                              ; preds = %242
  %262 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %263 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  store i32 2, i32* %9, align 4
  br label %319

267:                                              ; preds = %261
  %268 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %269 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %268, i32 0, i32 6
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %10, align 8
  %272 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp ule i64 %270, %273
  br i1 %274, label %275, label %318

275:                                              ; preds = %267
  %276 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %10, align 8
  %277 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %276, i32 0, i32 1
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %277, align 8
  %279 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %280 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %279, i32 0, i32 6
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %318

286:                                              ; preds = %275
  %287 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %287, i32 0, i32 5
  store i32 1, i32* %288, align 4
  %289 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %290 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %291 = call i32 @toc_adjusting_stub_needed(%struct.bfd_link_info* %289, %struct.TYPE_30__* %290)
  store i32 %291, i32* %21, align 4
  %292 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %292, i32 0, i32 5
  store i32 0, i32* %293, align 4
  %294 = load i32, i32* %21, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %286
  store i32 -1, i32* %9, align 4
  br label %325

297:                                              ; preds = %286
  %298 = load i32, i32* %21, align 4
  %299 = icmp sle i32 %298, 1
  br i1 %299, label %300, label %315

300:                                              ; preds = %297
  %301 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %10, align 8
  %302 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %301, i32 0, i32 1
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %302, align 8
  %304 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %305 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %304, i32 0, i32 6
  %306 = load i64, i64* %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %303, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %307, i32 0, i32 0
  store i32 1, i32* %308, align 4
  %309 = load i32, i32* %21, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %300
  %312 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %313 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %312, i32 0, i32 4
  store i32 1, i32* %313, align 8
  store i32 1, i32* %9, align 4
  br label %325

314:                                              ; preds = %300
  br label %316

315:                                              ; preds = %297
  store i32 2, i32* %9, align 4
  br label %316

316:                                              ; preds = %315, %314
  br label %317

317:                                              ; preds = %316
  br label %318

318:                                              ; preds = %317, %275, %267
  br label %319

319:                                              ; preds = %318, %266
  br label %320

320:                                              ; preds = %319
  br label %321

321:                                              ; preds = %320
  br label %322

322:                                              ; preds = %321, %230, %212, %201, %141, %98
  %323 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %323, i32 1
  store %struct.TYPE_31__* %324, %struct.TYPE_31__** %7, align 8
  br label %70

325:                                              ; preds = %311, %296, %260, %241, %147, %137, %110, %70
  %326 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %327 = icmp ne %struct.TYPE_31__* %326, null
  br i1 %327, label %328, label %342

328:                                              ; preds = %325
  %329 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %329, i32 0, i32 7
  %331 = load i32, i32* %330, align 8
  %332 = call %struct.TYPE_33__* @elf_tdata(i32 %331)
  %333 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %333, i32 0, i32 0
  %335 = load i8*, i8** %334, align 8
  %336 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %337 = bitcast %struct.TYPE_31__* %336 to i8*
  %338 = icmp ne i8* %335, %337
  br i1 %338, label %339, label %342

339:                                              ; preds = %328
  %340 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %341 = call i32 @free(%struct.TYPE_31__* %340)
  br label %342

342:                                              ; preds = %339, %328, %325
  %343 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %344 = call %struct.TYPE_34__* @elf_section_data(%struct.TYPE_30__* %343)
  %345 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_31__*, %struct.TYPE_31__** %345, align 8
  %347 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %348 = icmp ne %struct.TYPE_31__* %346, %347
  br i1 %348, label %349, label %352

349:                                              ; preds = %342
  %350 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %351 = call i32 @free(%struct.TYPE_31__* %350)
  br label %352

352:                                              ; preds = %349, %342
  %353 = load i32, i32* %9, align 4
  store i32 %353, i32* %3, align 4
  br label %354

354:                                              ; preds = %352, %65, %53, %47, %40, %34, %28
  %355 = load i32, i32* %3, align 4
  ret i32 %355
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_31__* @_bfd_elf_link_read_relocs(i32, %struct.TYPE_30__*, i32*, i32*, i32) #1

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @ELF64_R_TYPE(i32) #1

declare dso_local i64 @ELF64_R_SYM(i32) #1

declare dso_local i32 @get_sym_h(%struct.elf_link_hash_entry**, %struct.TYPE_31__**, %struct.TYPE_30__**, i32*, %struct.TYPE_31__**, i64, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64* @get_opd_info(%struct.TYPE_30__*) #1

declare dso_local i64 @opd_entry_value(%struct.TYPE_30__*, i64, %struct.TYPE_30__**, i32*) #1

declare dso_local %struct.TYPE_33__* @elf_tdata(i32) #1

declare dso_local i32 @free(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_34__* @elf_section_data(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
