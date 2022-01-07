; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_link_check_versioned_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_link_check_versioned_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_backend_data = type { %struct.TYPE_48__* }
%struct.TYPE_48__ = type { i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, %struct.TYPE_49__, %struct.TYPE_47__ }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_47__ = type { %struct.TYPE_46__, %struct.TYPE_43__, %struct.TYPE_41__ }
%struct.TYPE_46__ = type { %struct.TYPE_45__* }
%struct.TYPE_45__ = type { %struct.TYPE_44__* }
%struct.TYPE_44__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__* }
%struct.TYPE_42__ = type { %struct.TYPE_35__* }
%struct.TYPE_41__ = type { %struct.TYPE_35__* }
%struct.elf_link_loaded_list = type { %struct.TYPE_35__*, %struct.elf_link_loaded_list* }
%struct.TYPE_38__ = type { i32, i32, i32, i32 }
%struct.TYPE_37__ = type { i64, i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_40__ = type { %struct.elf_link_loaded_list* }
%struct.TYPE_39__ = type { %struct.TYPE_38__, %struct.TYPE_38__ }

@FALSE = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@DYN_DT_NEEDED = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@STB_LOCAL = common dso_local global i64 0, align 8
@SHN_UNDEF = common dso_local global i64 0, align 8
@VERSYM_HIDDEN = common dso_local global i32 0, align 4
@VERSYM_VERSION = common dso_local global i16 0, align 2
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, %struct.elf_backend_data*, %struct.elf_link_hash_entry*)* @elf_link_check_versioned_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_link_check_versioned_symbol(%struct.bfd_link_info* %0, %struct.elf_backend_data* %1, %struct.elf_link_hash_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.elf_backend_data*, align 8
  %7 = alloca %struct.elf_link_hash_entry*, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca %struct.elf_link_loaded_list*, align 8
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca %struct.TYPE_38__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_38__*, align 8
  %16 = alloca %struct.TYPE_37__*, align 8
  %17 = alloca %struct.TYPE_37__*, align 8
  %18 = alloca %struct.TYPE_37__*, align 8
  %19 = alloca %struct.TYPE_37__*, align 8
  %20 = alloca %struct.TYPE_37__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_36__, align 4
  %23 = alloca i16, align 2
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %5, align 8
  store %struct.elf_backend_data* %1, %struct.elf_backend_data** %6, align 8
  store %struct.elf_link_hash_entry* %2, %struct.elf_link_hash_entry** %7, align 8
  %24 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %25 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @is_elf_hash_table(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %4, align 4
  br label %283

31:                                               ; preds = %3
  %32 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %33 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %36 [
    i32 129, label %37
    i32 128, label %37
    i32 131, label %59
    i32 130, label %59
    i32 132, label %68
  ]

36:                                               ; preds = %31
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %8, align 8
  br label %79

37:                                               ; preds = %31, %31
  %38 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %39 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_35__*, %struct.TYPE_35__** %42, align 8
  store %struct.TYPE_35__* %43, %struct.TYPE_35__** %8, align 8
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DYNAMIC, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %37
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %52 = call i32 @elf_dyn_lib_class(%struct.TYPE_35__* %51)
  %53 = load i32, i32* @DYN_DT_NEEDED, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50, %37
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %4, align 4
  br label %283

58:                                               ; preds = %50
  br label %79

59:                                               ; preds = %31, %31
  %60 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %61 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_42__*, %struct.TYPE_42__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %66, align 8
  store %struct.TYPE_35__* %67, %struct.TYPE_35__** %8, align 8
  br label %79

68:                                               ; preds = %31
  %69 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %70 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_45__*, %struct.TYPE_45__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_44__*, %struct.TYPE_44__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %77, align 8
  store %struct.TYPE_35__* %78, %struct.TYPE_35__** %8, align 8
  br label %79

79:                                               ; preds = %68, %59, %58, %36
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %81 = icmp ne %struct.TYPE_35__* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i32 @BFD_ASSERT(i32 %82)
  %84 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %85 = call %struct.TYPE_40__* @elf_hash_table(%struct.bfd_link_info* %84)
  %86 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %85, i32 0, i32 0
  %87 = load %struct.elf_link_loaded_list*, %struct.elf_link_loaded_list** %86, align 8
  store %struct.elf_link_loaded_list* %87, %struct.elf_link_loaded_list** %9, align 8
  br label %88

88:                                               ; preds = %277, %79
  %89 = load %struct.elf_link_loaded_list*, %struct.elf_link_loaded_list** %9, align 8
  %90 = icmp ne %struct.elf_link_loaded_list* %89, null
  br i1 %90, label %91, label %281

91:                                               ; preds = %88
  %92 = load %struct.elf_link_loaded_list*, %struct.elf_link_loaded_list** %9, align 8
  %93 = getelementptr inbounds %struct.elf_link_loaded_list, %struct.elf_link_loaded_list* %92, i32 0, i32 0
  %94 = load %struct.TYPE_35__*, %struct.TYPE_35__** %93, align 8
  store %struct.TYPE_35__* %94, %struct.TYPE_35__** %10, align 8
  %95 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %96 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %97 = icmp eq %struct.TYPE_35__* %95, %96
  br i1 %97, label %109, label %98

98:                                               ; preds = %91
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @DYNAMIC, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %98
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %107 = call i64 @elf_dynversym(%struct.TYPE_35__* %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105, %98, %91
  br label %277

110:                                              ; preds = %105
  %111 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %112 = call %struct.TYPE_39__* @elf_tdata(%struct.TYPE_35__* %111)
  %113 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %112, i32 0, i32 1
  store %struct.TYPE_38__* %113, %struct.TYPE_38__** %11, align 8
  %114 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %118 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %117, i32 0, i32 0
  %119 = load %struct.TYPE_48__*, %struct.TYPE_48__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sdiv i32 %116, %121
  store i32 %122, i32* %12, align 4
  %123 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %124 = call i64 @elf_bad_symtab(%struct.TYPE_35__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %110
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %137

128:                                              ; preds = %110
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %129, %132
  store i32 %133, i32* %13, align 4
  %134 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %128, %126
  %138 = load i32, i32* %13, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %277

141:                                              ; preds = %137
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %143 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call %struct.TYPE_37__* @bfd_elf_get_elf_syms(%struct.TYPE_35__* %142, %struct.TYPE_38__* %143, i32 %144, i32 %145, i32* null, i32* null, i32* null)
  store %struct.TYPE_37__* %146, %struct.TYPE_37__** %18, align 8
  %147 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %148 = icmp eq %struct.TYPE_37__* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* @FALSE, align 4
  store i32 %150, i32* %4, align 4
  br label %283

151:                                              ; preds = %141
  %152 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %153 = call %struct.TYPE_39__* @elf_tdata(%struct.TYPE_35__* %152)
  %154 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %153, i32 0, i32 0
  store %struct.TYPE_38__* %154, %struct.TYPE_38__** %15, align 8
  %155 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call %struct.TYPE_37__* @bfd_malloc(i32 %157)
  store %struct.TYPE_37__* %158, %struct.TYPE_37__** %20, align 8
  %159 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %160 = icmp eq %struct.TYPE_37__* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %151
  br label %185

162:                                              ; preds = %151
  %163 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %164 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @SEEK_SET, align 4
  %168 = call i64 @bfd_seek(%struct.TYPE_35__* %163, i32 %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %182, label %170

170:                                              ; preds = %162
  %171 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %172 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %176 = call i64 @bfd_bread(%struct.TYPE_37__* %171, i32 %174, %struct.TYPE_35__* %175)
  %177 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = icmp ne i64 %176, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %170, %162
  %183 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %184 = call i32 @free(%struct.TYPE_37__* %183)
  br label %185

185:                                              ; preds = %182, %161
  %186 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %187 = call i32 @free(%struct.TYPE_37__* %186)
  %188 = load i32, i32* @FALSE, align 4
  store i32 %188, i32* %4, align 4
  br label %283

189:                                              ; preds = %170
  %190 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %190, i64 %192
  store %struct.TYPE_37__* %193, %struct.TYPE_37__** %19, align 8
  %194 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %194, i64 %196
  store %struct.TYPE_37__* %197, %struct.TYPE_37__** %17, align 8
  %198 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  store %struct.TYPE_37__* %198, %struct.TYPE_37__** %16, align 8
  br label %199

199:                                              ; preds = %267, %189
  %200 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %201 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %202 = icmp ult %struct.TYPE_37__* %200, %201
  br i1 %202, label %203, label %272

203:                                              ; preds = %199
  %204 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = call i64 @ELF_ST_BIND(i32 %206)
  %208 = load i64, i64* @STB_LOCAL, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %216, label %210

210:                                              ; preds = %203
  %211 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @SHN_UNDEF, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %210, %203
  br label %267

217:                                              ; preds = %210
  %218 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %219 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = call i8* @bfd_elf_string_from_elf_section(%struct.TYPE_35__* %218, i32 %221, i32 %224)
  store i8* %225, i8** %21, align 8
  %226 = load i8*, i8** %21, align 8
  %227 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %228 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i64 @strcmp(i8* %226, i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %217
  br label %267

235:                                              ; preds = %217
  %236 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %237 = load %struct.TYPE_37__*, %struct.TYPE_37__** %19, align 8
  %238 = call i32 @_bfd_elf_swap_versym_in(%struct.TYPE_35__* %236, %struct.TYPE_37__* %237, %struct.TYPE_36__* %22)
  %239 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %22, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @VERSYM_HIDDEN, align 4
  %242 = and i32 %240, %241
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %235
  %245 = call i32 (...) @abort() #3
  unreachable

246:                                              ; preds = %235
  %247 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %22, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i16, i16* @VERSYM_VERSION, align 2
  %250 = zext i16 %249 to i32
  %251 = and i32 %248, %250
  %252 = trunc i32 %251 to i16
  store i16 %252, i16* %23, align 2
  %253 = load i16, i16* %23, align 2
  %254 = zext i16 %253 to i32
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %260, label %256

256:                                              ; preds = %246
  %257 = load i16, i16* %23, align 2
  %258 = zext i16 %257 to i32
  %259 = icmp eq i32 %258, 2
  br i1 %259, label %260, label %266

260:                                              ; preds = %256, %246
  %261 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %262 = call i32 @free(%struct.TYPE_37__* %261)
  %263 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %264 = call i32 @free(%struct.TYPE_37__* %263)
  %265 = load i32, i32* @TRUE, align 4
  store i32 %265, i32* %4, align 4
  br label %283

266:                                              ; preds = %256
  br label %267

267:                                              ; preds = %266, %234, %216
  %268 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %269 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %268, i32 1
  store %struct.TYPE_37__* %269, %struct.TYPE_37__** %16, align 8
  %270 = load %struct.TYPE_37__*, %struct.TYPE_37__** %19, align 8
  %271 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %270, i32 1
  store %struct.TYPE_37__* %271, %struct.TYPE_37__** %19, align 8
  br label %199

272:                                              ; preds = %199
  %273 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %274 = call i32 @free(%struct.TYPE_37__* %273)
  %275 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %276 = call i32 @free(%struct.TYPE_37__* %275)
  br label %277

277:                                              ; preds = %272, %140, %109
  %278 = load %struct.elf_link_loaded_list*, %struct.elf_link_loaded_list** %9, align 8
  %279 = getelementptr inbounds %struct.elf_link_loaded_list, %struct.elf_link_loaded_list* %278, i32 0, i32 1
  %280 = load %struct.elf_link_loaded_list*, %struct.elf_link_loaded_list** %279, align 8
  store %struct.elf_link_loaded_list* %280, %struct.elf_link_loaded_list** %9, align 8
  br label %88

281:                                              ; preds = %88
  %282 = load i32, i32* @FALSE, align 4
  store i32 %282, i32* %4, align 4
  br label %283

283:                                              ; preds = %281, %260, %185, %149, %56, %29
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare dso_local i32 @is_elf_hash_table(i32) #1

declare dso_local i32 @elf_dyn_lib_class(%struct.TYPE_35__*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.TYPE_40__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @elf_dynversym(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_39__* @elf_tdata(%struct.TYPE_35__*) #1

declare dso_local i64 @elf_bad_symtab(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_37__* @bfd_elf_get_elf_syms(%struct.TYPE_35__*, %struct.TYPE_38__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_37__* @bfd_malloc(i32) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_35__*, i32, i32) #1

declare dso_local i64 @bfd_bread(%struct.TYPE_37__*, i32, %struct.TYPE_35__*) #1

declare dso_local i32 @free(%struct.TYPE_37__*) #1

declare dso_local i64 @ELF_ST_BIND(i32) #1

declare dso_local i8* @bfd_elf_string_from_elf_section(%struct.TYPE_35__*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @_bfd_elf_swap_versym_in(%struct.TYPE_35__*, %struct.TYPE_37__*, %struct.TYPE_36__*) #1

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
