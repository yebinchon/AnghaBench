; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_gc_mark.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_gc_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_41__ = type { i32, i32, i64, i32, i32*, i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i64, %struct.TYPE_39__ }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_42__ = type { i32, i32 }
%struct.TYPE_34__ = type { i64, i64, i8* }
%struct.elf_backend_data = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64, i32, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_42__*, %struct.TYPE_41__* }
%struct.TYPE_36__ = type { %struct.TYPE_34__ }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c".eh_frame\00", align 1
@SEC_RELOC = common dso_local global i32 0, align 4
@STB_LOCAL = common dso_local global i64 0, align 8
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_gc_mark(%struct.bfd_link_info* %0, %struct.TYPE_41__* %1, %struct.TYPE_41__* (%struct.TYPE_41__*, %struct.bfd_link_info*, %struct.TYPE_42__*, %struct.elf_link_hash_entry*, %struct.TYPE_42__*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_41__*, align 8
  %7 = alloca %struct.TYPE_41__* (%struct.TYPE_41__*, %struct.bfd_link_info*, %struct.TYPE_42__*, %struct.elf_link_hash_entry*, %struct.TYPE_42__*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_41__*, align 8
  %11 = alloca %struct.TYPE_42__*, align 8
  %12 = alloca %struct.TYPE_42__*, align 8
  %13 = alloca %struct.TYPE_42__*, align 8
  %14 = alloca %struct.TYPE_34__*, align 8
  %15 = alloca %struct.elf_link_hash_entry**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.elf_backend_data*, align 8
  %20 = alloca %struct.TYPE_42__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_41__*, align 8
  %24 = alloca %struct.elf_link_hash_entry*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %5, align 8
  store %struct.TYPE_41__* %1, %struct.TYPE_41__** %6, align 8
  store %struct.TYPE_41__* (%struct.TYPE_41__*, %struct.bfd_link_info*, %struct.TYPE_42__*, %struct.elf_link_hash_entry*, %struct.TYPE_42__*)* %2, %struct.TYPE_41__* (%struct.TYPE_41__*, %struct.bfd_link_info*, %struct.TYPE_42__*, %struct.elf_link_hash_entry*, %struct.TYPE_42__*)** %7, align 8
  %25 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %28 = call %struct.TYPE_37__* @elf_section_data(%struct.TYPE_41__* %27)
  %29 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_41__*, %struct.TYPE_41__** %29, align 8
  store %struct.TYPE_41__* %30, %struct.TYPE_41__** %10, align 8
  %31 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %32 = icmp ne %struct.TYPE_41__* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %3
  %34 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %40 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %41 = load %struct.TYPE_41__* (%struct.TYPE_41__*, %struct.bfd_link_info*, %struct.TYPE_42__*, %struct.elf_link_hash_entry*, %struct.TYPE_42__*)*, %struct.TYPE_41__* (%struct.TYPE_41__*, %struct.bfd_link_info*, %struct.TYPE_42__*, %struct.elf_link_hash_entry*, %struct.TYPE_42__*)** %7, align 8
  %42 = call i32 @_bfd_elf_gc_mark(%struct.bfd_link_info* %39, %struct.TYPE_41__* %40, %struct.TYPE_41__* (%struct.TYPE_41__*, %struct.bfd_link_info*, %struct.TYPE_42__*, %struct.elf_link_hash_entry*, %struct.TYPE_42__*)* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %4, align 4
  br label %300

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %33, %3
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %8, align 4
  %49 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @strcmp(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SEC_RELOC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %298

61:                                               ; preds = %47
  %62 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %298

66:                                               ; preds = %61
  %67 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %18, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %70)
  store %struct.elf_backend_data* %71, %struct.elf_backend_data** %19, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %20, align 8
  %72 = load i32*, i32** %18, align 8
  %73 = call %struct.TYPE_36__* @elf_tdata(i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %73, i32 0, i32 0
  store %struct.TYPE_34__* %74, %struct.TYPE_34__** %14, align 8
  %75 = load i32*, i32** %18, align 8
  %76 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %75)
  store %struct.elf_link_hash_entry** %76, %struct.elf_link_hash_entry*** %15, align 8
  %77 = load i32*, i32** %18, align 8
  %78 = call i64 @elf_bad_symtab(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %66
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.elf_backend_data*, %struct.elf_backend_data** %19, align 8
  %85 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_35__*, %struct.TYPE_35__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = udiv i64 %83, %88
  store i64 %89, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %94

90:                                               ; preds = %66
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %16, align 8
  store i64 %93, i64* %17, align 8
  br label %94

94:                                               ; preds = %90, %80
  %95 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = bitcast i8* %97 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %98, %struct.TYPE_42__** %20, align 8
  %99 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %100 = icmp eq %struct.TYPE_42__* %99, null
  br i1 %100, label %101, label %114

101:                                              ; preds = %94
  %102 = load i64, i64* %16, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load i32*, i32** %18, align 8
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %107 = load i64, i64* %16, align 8
  %108 = call %struct.TYPE_42__* @bfd_elf_get_elf_syms(i32* %105, %struct.TYPE_34__* %106, i64 %107, i32 0, i32* null, i32* null, i32* null)
  store %struct.TYPE_42__* %108, %struct.TYPE_42__** %20, align 8
  %109 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %110 = icmp eq %struct.TYPE_42__* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %4, align 4
  br label %300

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %101, %94
  %115 = load i32*, i32** %18, align 8
  %116 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %117 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %118 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call %struct.TYPE_42__* @_bfd_elf_link_read_relocs(i32* %115, %struct.TYPE_41__* %116, i32* null, i32* null, i32 %119)
  store %struct.TYPE_42__* %120, %struct.TYPE_42__** %11, align 8
  %121 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %122 = icmp eq %struct.TYPE_42__* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i32, i32* @FALSE, align 4
  store i32 %124, i32* %8, align 4
  br label %273

125:                                              ; preds = %114
  %126 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %127 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.elf_backend_data*, %struct.elf_backend_data** %19, align 8
  %131 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %130, i32 0, i32 0
  %132 = load %struct.TYPE_35__*, %struct.TYPE_35__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %129, %135
  %137 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %126, i64 %136
  store %struct.TYPE_42__* %137, %struct.TYPE_42__** %13, align 8
  %138 = load %struct.elf_backend_data*, %struct.elf_backend_data** %19, align 8
  %139 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %138, i32 0, i32 0
  %140 = load %struct.TYPE_35__*, %struct.TYPE_35__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 32
  br i1 %143, label %144, label %145

144:                                              ; preds = %125
  store i32 8, i32* %21, align 4
  br label %146

145:                                              ; preds = %125
  store i32 32, i32* %21, align 4
  br label %146

146:                                              ; preds = %145, %144
  %147 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  store %struct.TYPE_42__* %147, %struct.TYPE_42__** %12, align 8
  br label %148

148:                                              ; preds = %258, %146
  %149 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %150 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %151 = icmp ult %struct.TYPE_42__* %149, %150
  br i1 %151, label %152, label %261

152:                                              ; preds = %148
  %153 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %21, align 4
  %157 = ashr i32 %155, %156
  %158 = sext i32 %157 to i64
  store i64 %158, i64* %22, align 8
  %159 = load i64, i64* %22, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %152
  br label %258

162:                                              ; preds = %152
  %163 = load i64, i64* %22, align 8
  %164 = load i64, i64* %16, align 8
  %165 = icmp uge i64 %163, %164
  br i1 %165, label %175, label %166

166:                                              ; preds = %162
  %167 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %168 = load i64, i64* %22, align 8
  %169 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @ELF_ST_BIND(i32 %171)
  %173 = load i64, i64* @STB_LOCAL, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %213

175:                                              ; preds = %166, %162
  %176 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %15, align 8
  %177 = load i64, i64* %22, align 8
  %178 = load i64, i64* %17, align 8
  %179 = sub i64 %177, %178
  %180 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %176, i64 %179
  %181 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %180, align 8
  store %struct.elf_link_hash_entry* %181, %struct.elf_link_hash_entry** %24, align 8
  br label %182

182:                                              ; preds = %198, %175
  %183 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %184 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @bfd_link_hash_indirect, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %196, label %189

189:                                              ; preds = %182
  %190 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %191 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @bfd_link_hash_warning, align 8
  %195 = icmp eq i64 %193, %194
  br label %196

196:                                              ; preds = %189, %182
  %197 = phi i1 [ true, %182 ], [ %195, %189 ]
  br i1 %197, label %198, label %206

198:                                              ; preds = %196
  %199 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %200 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %205, %struct.elf_link_hash_entry** %24, align 8
  br label %182

206:                                              ; preds = %196
  %207 = load %struct.TYPE_41__* (%struct.TYPE_41__*, %struct.bfd_link_info*, %struct.TYPE_42__*, %struct.elf_link_hash_entry*, %struct.TYPE_42__*)*, %struct.TYPE_41__* (%struct.TYPE_41__*, %struct.bfd_link_info*, %struct.TYPE_42__*, %struct.elf_link_hash_entry*, %struct.TYPE_42__*)** %7, align 8
  %208 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %209 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %210 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %211 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %212 = call %struct.TYPE_41__* %207(%struct.TYPE_41__* %208, %struct.bfd_link_info* %209, %struct.TYPE_42__* %210, %struct.elf_link_hash_entry* %211, %struct.TYPE_42__* null)
  store %struct.TYPE_41__* %212, %struct.TYPE_41__** %23, align 8
  br label %222

213:                                              ; preds = %166
  %214 = load %struct.TYPE_41__* (%struct.TYPE_41__*, %struct.bfd_link_info*, %struct.TYPE_42__*, %struct.elf_link_hash_entry*, %struct.TYPE_42__*)*, %struct.TYPE_41__* (%struct.TYPE_41__*, %struct.bfd_link_info*, %struct.TYPE_42__*, %struct.elf_link_hash_entry*, %struct.TYPE_42__*)** %7, align 8
  %215 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %216 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %217 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %218 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %219 = load i64, i64* %22, align 8
  %220 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %218, i64 %219
  %221 = call %struct.TYPE_41__* %214(%struct.TYPE_41__* %215, %struct.bfd_link_info* %216, %struct.TYPE_42__* %217, %struct.elf_link_hash_entry* null, %struct.TYPE_42__* %220)
  store %struct.TYPE_41__* %221, %struct.TYPE_41__** %23, align 8
  br label %222

222:                                              ; preds = %213, %206
  %223 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %224 = icmp ne %struct.TYPE_41__* %223, null
  br i1 %224, label %225, label %257

225:                                              ; preds = %222
  %226 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %227 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %257, label %230

230:                                              ; preds = %225
  %231 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %232 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %231, i32 0, i32 4
  %233 = load i32*, i32** %232, align 8
  %234 = call i64 @bfd_get_flavour(i32* %233)
  %235 = load i64, i64* @bfd_target_elf_flavour, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %230
  %238 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %239 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %238, i32 0, i32 0
  store i32 1, i32* %239, align 8
  br label %256

240:                                              ; preds = %230
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %245 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %244, i32 0, i32 3
  store i32 1, i32* %245, align 8
  br label %255

246:                                              ; preds = %240
  %247 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %248 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %249 = load %struct.TYPE_41__* (%struct.TYPE_41__*, %struct.bfd_link_info*, %struct.TYPE_42__*, %struct.elf_link_hash_entry*, %struct.TYPE_42__*)*, %struct.TYPE_41__* (%struct.TYPE_41__*, %struct.bfd_link_info*, %struct.TYPE_42__*, %struct.elf_link_hash_entry*, %struct.TYPE_42__*)** %7, align 8
  %250 = call i32 @_bfd_elf_gc_mark(%struct.bfd_link_info* %247, %struct.TYPE_41__* %248, %struct.TYPE_41__* (%struct.TYPE_41__*, %struct.bfd_link_info*, %struct.TYPE_42__*, %struct.elf_link_hash_entry*, %struct.TYPE_42__*)* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %246
  %253 = load i32, i32* @FALSE, align 4
  store i32 %253, i32* %8, align 4
  br label %262

254:                                              ; preds = %246
  br label %255

255:                                              ; preds = %254, %243
  br label %256

256:                                              ; preds = %255, %237
  br label %257

257:                                              ; preds = %256, %225, %222
  br label %258

258:                                              ; preds = %257, %161
  %259 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %259, i32 1
  store %struct.TYPE_42__* %260, %struct.TYPE_42__** %12, align 8
  br label %148

261:                                              ; preds = %148
  br label %262

262:                                              ; preds = %261, %252
  %263 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %264 = call %struct.TYPE_37__* @elf_section_data(%struct.TYPE_41__* %263)
  %265 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_42__*, %struct.TYPE_42__** %265, align 8
  %267 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %268 = icmp ne %struct.TYPE_42__* %266, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %262
  %270 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %271 = call i32 @free(%struct.TYPE_42__* %270)
  br label %272

272:                                              ; preds = %269, %262
  br label %273

273:                                              ; preds = %272, %123
  %274 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %275 = icmp ne %struct.TYPE_42__* %274, null
  br i1 %275, label %276, label %297

276:                                              ; preds = %273
  %277 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %277, i32 0, i32 2
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %281 = bitcast %struct.TYPE_42__* %280 to i8*
  %282 = icmp ne i8* %279, %281
  br i1 %282, label %283, label %297

283:                                              ; preds = %276
  %284 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %285 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %283
  %289 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %290 = call i32 @free(%struct.TYPE_42__* %289)
  br label %296

291:                                              ; preds = %283
  %292 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %293 = bitcast %struct.TYPE_42__* %292 to i8*
  %294 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %295 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %294, i32 0, i32 2
  store i8* %293, i8** %295, align 8
  br label %296

296:                                              ; preds = %291, %288
  br label %297

297:                                              ; preds = %296, %276, %273
  br label %298

298:                                              ; preds = %297, %61, %47
  %299 = load i32, i32* %8, align 4
  store i32 %299, i32* %4, align 4
  br label %300

300:                                              ; preds = %298, %111, %44
  %301 = load i32, i32* %4, align 4
  ret i32 %301
}

declare dso_local %struct.TYPE_37__* @elf_section_data(%struct.TYPE_41__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local %struct.TYPE_36__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local i64 @elf_bad_symtab(i32*) #1

declare dso_local %struct.TYPE_42__* @bfd_elf_get_elf_syms(i32*, %struct.TYPE_34__*, i64, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_42__* @_bfd_elf_link_read_relocs(i32*, %struct.TYPE_41__*, i32*, i32*, i32) #1

declare dso_local i64 @ELF_ST_BIND(i32) #1

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local i32 @free(%struct.TYPE_42__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
