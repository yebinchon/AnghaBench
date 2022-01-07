; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_relax_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_relax_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i64, %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i64 }
%struct.TYPE_49__ = type { i32, i64, i64, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i64 }
%struct.bfd_link_info = type { i64, i32, i64 }
%struct.TYPE_34__ = type { i64, i8* }
%struct.TYPE_33__ = type { i64, i64, i64, i32, i32 }
%struct.alpha_elf_got_entry = type { i64, i64, i32*, %struct.alpha_elf_got_entry* }
%struct.alpha_relax_info = type { %struct.TYPE_33__*, i64, i64, %struct.alpha_elf_got_entry*, %struct.TYPE_39__*, i32*, %struct.alpha_elf_got_entry**, i32, %struct.alpha_elf_link_hash_entry*, %struct.bfd_link_info*, i64, %struct.TYPE_33__*, %struct.TYPE_33__*, %struct.TYPE_34__*, %struct.TYPE_49__*, i32* }
%struct.alpha_elf_link_hash_entry = type { %struct.alpha_elf_got_entry*, %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32, %struct.TYPE_45__, i32 }
%struct.TYPE_45__ = type { i64, %struct.TYPE_44__ }
%struct.TYPE_44__ = type { %struct.TYPE_43__, %struct.TYPE_42__ }
%struct.TYPE_43__ = type { i64, %struct.TYPE_39__* }
%struct.TYPE_42__ = type { i64 }
%struct.TYPE_41__ = type { i64 }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_40__ = type { %struct.TYPE_49__*, i32*, %struct.alpha_elf_got_entry** }
%struct.TYPE_36__ = type { %struct.TYPE_33__*, %struct.TYPE_48__ }
%struct.TYPE_48__ = type { %struct.TYPE_33__* }

@FALSE = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_abs_section_ptr = common dso_local global i8* null, align 8
@SHN_UNDEF = common dso_local global i64 0, align 8
@SHN_ABS = common dso_local global i64 0, align 8
@SHN_COMMON = common dso_local global i64 0, align 8
@bfd_com_section_ptr = common dso_local global %struct.TYPE_39__* null, align 8
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@R_ALPHA_LITUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_49__*, %struct.bfd_link_info*, i32*)* @elf64_alpha_relax_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf64_alpha_relax_section(i32* %0, %struct.TYPE_49__* %1, %struct.bfd_link_info* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_49__*, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca %struct.TYPE_33__*, align 8
  %15 = alloca %struct.alpha_elf_got_entry**, align 8
  %16 = alloca %struct.alpha_relax_info, align 8
  %17 = alloca %struct.TYPE_49__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.alpha_elf_got_entry*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_33__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.alpha_elf_link_hash_entry*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_49__* %1, %struct.TYPE_49__** %7, align 8
  store %struct.bfd_link_info* %2, %struct.bfd_link_info** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %14, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %28 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %4
  %32 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SEC_CODE, align 4
  %36 = load i32, i32* @SEC_RELOC, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SEC_ALLOC, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %34, %39
  %41 = load i32, i32* @SEC_CODE, align 4
  %42 = load i32, i32* @SEC_RELOC, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SEC_ALLOC, align 4
  %45 = or i32 %43, %44
  %46 = icmp ne i32 %40, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %31
  %48 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %31, %4
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %5, align 4
  br label %650

54:                                               ; preds = %47
  %55 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %56 = call %struct.TYPE_41__* @alpha_elf_hash_table(%struct.bfd_link_info* %55)
  %57 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %60 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %54
  %64 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %65 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %68 = call %struct.TYPE_41__* @alpha_elf_hash_table(%struct.bfd_link_info* %67)
  %69 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %71 = call i32 @elf64_alpha_size_got_sections(%struct.bfd_link_info* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %63
  %74 = call i32 (...) @abort() #3
  unreachable

75:                                               ; preds = %63
  %76 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %77 = call %struct.TYPE_37__* @elf_hash_table(%struct.bfd_link_info* %76)
  %78 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %83 = call i32 @elf64_alpha_size_plt_section(%struct.bfd_link_info* %82)
  %84 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %85 = call i32 @elf64_alpha_size_rela_got_section(%struct.bfd_link_info* %84)
  br label %86

86:                                               ; preds = %81, %75
  br label %87

87:                                               ; preds = %86, %54
  %88 = load i32*, i32** %6, align 8
  %89 = call %struct.TYPE_35__* @elf_tdata(i32* %88)
  %90 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %89, i32 0, i32 0
  store %struct.TYPE_34__* %90, %struct.TYPE_34__** %10, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call %struct.TYPE_40__* @alpha_elf_tdata(i32* %91)
  %93 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %92, i32 0, i32 2
  %94 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %93, align 8
  store %struct.alpha_elf_got_entry** %94, %struct.alpha_elf_got_entry*** %15, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %97 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %98 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call %struct.TYPE_33__* @_bfd_elf_link_read_relocs(i32* %95, %struct.TYPE_49__* %96, i32 0, %struct.TYPE_33__* null, i32 %99)
  store %struct.TYPE_33__* %100, %struct.TYPE_33__** %11, align 8
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %102 = icmp eq %struct.TYPE_33__* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %87
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %5, align 4
  br label %650

105:                                              ; preds = %87
  %106 = call i32 @memset(%struct.alpha_relax_info* %16, i32 0, i32 128)
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 15
  store i32* %107, i32** %108, align 8
  %109 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %110 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 14
  store %struct.TYPE_49__* %109, %struct.TYPE_49__** %110, align 8
  %111 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %112 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 9
  store %struct.bfd_link_info* %111, %struct.bfd_link_info** %112, align 8
  %113 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %114 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 13
  store %struct.TYPE_34__* %113, %struct.TYPE_34__** %114, align 8
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %116 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 12
  store %struct.TYPE_33__* %115, %struct.TYPE_33__** %116, align 8
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %118 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i64 %120
  store %struct.TYPE_33__* %121, %struct.TYPE_33__** %13, align 8
  %122 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 11
  store %struct.TYPE_33__* %121, %struct.TYPE_33__** %122, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = call %struct.TYPE_40__* @alpha_elf_tdata(i32* %123)
  %125 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 5
  store i32* %126, i32** %127, align 8
  %128 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %148

131:                                              ; preds = %105
  %132 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = call %struct.TYPE_40__* @alpha_elf_tdata(i32* %133)
  %135 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_49__*, %struct.TYPE_49__** %135, align 8
  store %struct.TYPE_49__* %136, %struct.TYPE_49__** %17, align 8
  %137 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_38__*, %struct.TYPE_38__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = add nsw i64 %145, 32768
  %147 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 10
  store i64 %146, i64* %147, align 8
  br label %148

148:                                              ; preds = %131, %105
  %149 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %150 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_49__* %149)
  %151 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %152, align 8
  %154 = icmp ne %struct.TYPE_33__* %153, null
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %157 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_49__* %156)
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %159, align 8
  %161 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 0
  store %struct.TYPE_33__* %160, %struct.TYPE_33__** %161, align 8
  br label %170

162:                                              ; preds = %148
  %163 = load i32*, i32** %6, align 8
  %164 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %165 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 0
  %166 = call i32 @bfd_malloc_and_get_section(i32* %163, %struct.TYPE_49__* %164, %struct.TYPE_33__** %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %162
  br label %605

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169, %155
  %171 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  store %struct.TYPE_33__* %171, %struct.TYPE_33__** %12, align 8
  br label %172

172:                                              ; preds = %511, %170
  %173 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %174 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %175 = icmp ult %struct.TYPE_33__* %173, %174
  br i1 %175, label %176, label %514

176:                                              ; preds = %172
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @ELF64_R_TYPE(i32 %179)
  store i64 %180, i64* %20, align 8
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @ELF64_R_SYM(i32 %183)
  store i64 %184, i64* %21, align 8
  %185 = load i64, i64* %20, align 8
  switch i64 %185, label %188 [
    i64 130, label %186
    i64 132, label %186
    i64 131, label %186
    i64 134, label %186
    i64 133, label %186
    i64 129, label %186
    i64 128, label %187
  ]

186:                                              ; preds = %176, %176, %176, %176, %176, %176
  br label %189

187:                                              ; preds = %176
  store i64 0, i64* %21, align 8
  br label %189

188:                                              ; preds = %176
  br label %511

189:                                              ; preds = %187, %186
  %190 = load i64, i64* %21, align 8
  %191 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ult i64 %190, %193
  br i1 %194, label %195, label %287

195:                                              ; preds = %189
  %196 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %197 = icmp eq %struct.TYPE_33__* %196, null
  br i1 %197, label %198, label %217

198:                                              ; preds = %195
  %199 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %199, i32 0, i32 1
  %201 = load i8*, i8** %200, align 8
  %202 = bitcast i8* %201 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %202, %struct.TYPE_33__** %14, align 8
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %204 = icmp eq %struct.TYPE_33__* %203, null
  br i1 %204, label %205, label %212

205:                                              ; preds = %198
  %206 = load i32*, i32** %6, align 8
  %207 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %208 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call %struct.TYPE_33__* @bfd_elf_get_elf_syms(i32* %206, %struct.TYPE_34__* %207, i64 %210, i32 0, i32* null, i32* null, i32* null)
  store %struct.TYPE_33__* %211, %struct.TYPE_33__** %14, align 8
  br label %212

212:                                              ; preds = %205, %198
  %213 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %214 = icmp eq %struct.TYPE_33__* %213, null
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  br label %605

216:                                              ; preds = %212
  br label %217

217:                                              ; preds = %216, %195
  %218 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %219 = load i64, i64* %21, align 8
  %220 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %218, i64 %219
  store %struct.TYPE_33__* %220, %struct.TYPE_33__** %22, align 8
  %221 = load i64, i64* %20, align 8
  %222 = icmp eq i64 %221, 128
  br i1 %222, label %223, label %230

223:                                              ; preds = %217
  %224 = load i8*, i8** @bfd_abs_section_ptr, align 8
  %225 = bitcast i8* %224 to %struct.TYPE_39__*
  %226 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 4
  store %struct.TYPE_39__* %225, %struct.TYPE_39__** %226, align 8
  %227 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 9
  %228 = load %struct.bfd_link_info*, %struct.bfd_link_info** %227, align 8
  %229 = call i64 @alpha_get_tprel_base(%struct.bfd_link_info* %228)
  store i64 %229, i64* %18, align 8
  br label %269

230:                                              ; preds = %217
  %231 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %232 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %18, align 8
  %234 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %235 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @SHN_UNDEF, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %230
  br label %511

240:                                              ; preds = %230
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %242 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @SHN_ABS, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %240
  %247 = load i8*, i8** @bfd_abs_section_ptr, align 8
  %248 = bitcast i8* %247 to %struct.TYPE_39__*
  %249 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 4
  store %struct.TYPE_39__* %248, %struct.TYPE_39__** %249, align 8
  br label %267

250:                                              ; preds = %240
  %251 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %252 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @SHN_COMMON, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %250
  %257 = load %struct.TYPE_39__*, %struct.TYPE_39__** @bfd_com_section_ptr, align 8
  %258 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 4
  store %struct.TYPE_39__* %257, %struct.TYPE_39__** %258, align 8
  br label %266

259:                                              ; preds = %250
  %260 = load i32*, i32** %6, align 8
  %261 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %262 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = call %struct.TYPE_39__* @bfd_section_from_elf_index(i32* %260, i64 %263)
  %265 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 4
  store %struct.TYPE_39__* %264, %struct.TYPE_39__** %265, align 8
  br label %266

266:                                              ; preds = %259, %256
  br label %267

267:                                              ; preds = %266, %246
  br label %268

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268, %223
  %270 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 8
  store %struct.alpha_elf_link_hash_entry* null, %struct.alpha_elf_link_hash_entry** %270, align 8
  %271 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %272 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 7
  store i32 %273, i32* %274, align 8
  %275 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %15, align 8
  %276 = icmp ne %struct.alpha_elf_got_entry** %275, null
  br i1 %276, label %277, label %282

277:                                              ; preds = %269
  %278 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %15, align 8
  %279 = load i64, i64* %21, align 8
  %280 = getelementptr inbounds %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %278, i64 %279
  %281 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 6
  store %struct.alpha_elf_got_entry** %280, %struct.alpha_elf_got_entry*** %281, align 8
  br label %286

282:                                              ; preds = %269
  %283 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 3
  %284 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 6
  store %struct.alpha_elf_got_entry** %283, %struct.alpha_elf_got_entry*** %284, align 8
  %285 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 3
  store %struct.alpha_elf_got_entry* null, %struct.alpha_elf_got_entry** %285, align 8
  br label %286

286:                                              ; preds = %282, %277
  br label %392

287:                                              ; preds = %189
  %288 = load i64, i64* %21, align 8
  %289 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = sub i64 %288, %291
  store i64 %292, i64* %23, align 8
  %293 = load i32*, i32** %6, align 8
  %294 = call %struct.alpha_elf_link_hash_entry** @alpha_elf_sym_hashes(i32* %293)
  %295 = load i64, i64* %23, align 8
  %296 = getelementptr inbounds %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %294, i64 %295
  %297 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %296, align 8
  store %struct.alpha_elf_link_hash_entry* %297, %struct.alpha_elf_link_hash_entry** %24, align 8
  %298 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %24, align 8
  %299 = icmp ne %struct.alpha_elf_link_hash_entry* %298, null
  %300 = zext i1 %299 to i32
  %301 = call i32 @BFD_ASSERT(i32 %300)
  br label %302

302:                                              ; preds = %320, %287
  %303 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %24, align 8
  %304 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @bfd_link_hash_indirect, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %318, label %310

310:                                              ; preds = %302
  %311 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %24, align 8
  %312 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @bfd_link_hash_warning, align 8
  %317 = icmp eq i64 %315, %316
  br label %318

318:                                              ; preds = %310, %302
  %319 = phi i1 [ true, %302 ], [ %317, %310 ]
  br i1 %319, label %320, label %329

320:                                              ; preds = %318
  %321 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %24, align 8
  %322 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = inttoptr i64 %327 to %struct.alpha_elf_link_hash_entry*
  store %struct.alpha_elf_link_hash_entry* %328, %struct.alpha_elf_link_hash_entry** %24, align 8
  br label %302

329:                                              ; preds = %318
  %330 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %24, align 8
  %331 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @bfd_link_hash_undefined, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %338

337:                                              ; preds = %329
  br label %511

338:                                              ; preds = %329
  %339 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %24, align 8
  %340 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %350

346:                                              ; preds = %338
  %347 = load i8*, i8** @bfd_abs_section_ptr, align 8
  %348 = bitcast i8* %347 to %struct.TYPE_39__*
  %349 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 4
  store %struct.TYPE_39__* %348, %struct.TYPE_39__** %349, align 8
  store i64 0, i64* %18, align 8
  br label %381

350:                                              ; preds = %338
  %351 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %24, align 8
  %352 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %364, label %356

356:                                              ; preds = %350
  %357 = load i64, i64* %20, align 8
  %358 = icmp ne i64 %357, 129
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  br label %511

360:                                              ; preds = %356
  %361 = load i8*, i8** @bfd_abs_section_ptr, align 8
  %362 = bitcast i8* %361 to %struct.TYPE_39__*
  %363 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 4
  store %struct.TYPE_39__* %362, %struct.TYPE_39__** %363, align 8
  store i64 0, i64* %18, align 8
  br label %380

364:                                              ; preds = %350
  %365 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %24, align 8
  %366 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %369, i32 0, i32 1
  %371 = load %struct.TYPE_39__*, %struct.TYPE_39__** %370, align 8
  %372 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 4
  store %struct.TYPE_39__* %371, %struct.TYPE_39__** %372, align 8
  %373 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %24, align 8
  %374 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %18, align 8
  br label %380

380:                                              ; preds = %364, %360
  br label %381

381:                                              ; preds = %380, %346
  %382 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %24, align 8
  %383 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 8
  store %struct.alpha_elf_link_hash_entry* %382, %struct.alpha_elf_link_hash_entry** %383, align 8
  %384 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %24, align 8
  %385 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 7
  store i32 %387, i32* %388, align 8
  %389 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %24, align 8
  %390 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 6
  store %struct.alpha_elf_got_entry** %390, %struct.alpha_elf_got_entry*** %391, align 8
  br label %392

392:                                              ; preds = %381, %286
  %393 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 6
  %394 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %393, align 8
  %395 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %394, align 8
  store %struct.alpha_elf_got_entry* %395, %struct.alpha_elf_got_entry** %19, align 8
  br label %396

396:                                              ; preds = %422, %392
  %397 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %19, align 8
  %398 = icmp ne %struct.alpha_elf_got_entry* %397, null
  br i1 %398, label %399, label %426

399:                                              ; preds = %396
  %400 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %19, align 8
  %401 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %400, i32 0, i32 2
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 5
  %404 = load i32*, i32** %403, align 8
  %405 = icmp eq i32* %402, %404
  br i1 %405, label %406, label %421

406:                                              ; preds = %399
  %407 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %19, align 8
  %408 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* %20, align 8
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %412, label %421

412:                                              ; preds = %406
  %413 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %19, align 8
  %414 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %417 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %416, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = icmp eq i64 %415, %418
  br i1 %419, label %420, label %421

420:                                              ; preds = %412
  br label %426

421:                                              ; preds = %412, %406, %399
  br label %422

422:                                              ; preds = %421
  %423 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %19, align 8
  %424 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %423, i32 0, i32 3
  %425 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %424, align 8
  store %struct.alpha_elf_got_entry* %425, %struct.alpha_elf_got_entry** %19, align 8
  br label %396

426:                                              ; preds = %420, %396
  %427 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %19, align 8
  %428 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 3
  store %struct.alpha_elf_got_entry* %427, %struct.alpha_elf_got_entry** %428, align 8
  %429 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 4
  %430 = load %struct.TYPE_39__*, %struct.TYPE_39__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %430, i32 0, i32 1
  %432 = load %struct.TYPE_47__*, %struct.TYPE_47__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 4
  %436 = load %struct.TYPE_39__*, %struct.TYPE_39__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = add nsw i64 %434, %438
  %440 = load i64, i64* %18, align 8
  %441 = add nsw i64 %440, %439
  store i64 %441, i64* %18, align 8
  %442 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %443 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %442, i32 0, i32 2
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* %18, align 8
  %446 = add nsw i64 %445, %444
  store i64 %446, i64* %18, align 8
  %447 = load i64, i64* %20, align 8
  switch i64 %447, label %510 [
    i64 130, label %448
    i64 134, label %482
    i64 133, label %482
    i64 129, label %495
    i64 128, label %495
  ]

448:                                              ; preds = %426
  %449 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 3
  %450 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %449, align 8
  %451 = icmp ne %struct.alpha_elf_got_entry* %450, null
  %452 = zext i1 %451 to i32
  %453 = call i32 @BFD_ASSERT(i32 %452)
  %454 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %455 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %454, i64 1
  %456 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %457 = icmp ult %struct.TYPE_33__* %455, %456
  br i1 %457, label %458, label %473

458:                                              ; preds = %448
  %459 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %460 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %459, i64 1
  %461 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %460, i32 0, i32 3
  %462 = load i32, i32* %461, align 8
  %463 = call i64 @ELF64_R_TYPE(i32 %462)
  %464 = load i64, i64* @R_ALPHA_LITUSE, align 8
  %465 = icmp eq i64 %463, %464
  br i1 %465, label %466, label %473

466:                                              ; preds = %458
  %467 = load i64, i64* %18, align 8
  %468 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %469 = call i32 @elf64_alpha_relax_with_lituse(%struct.alpha_relax_info* %16, i64 %467, %struct.TYPE_33__* %468)
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %472, label %471

471:                                              ; preds = %466
  br label %605

472:                                              ; preds = %466
  br label %481

473:                                              ; preds = %458, %448
  %474 = load i64, i64* %18, align 8
  %475 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %476 = load i64, i64* %20, align 8
  %477 = call i32 @elf64_alpha_relax_got_load(%struct.alpha_relax_info* %16, i64 %474, %struct.TYPE_33__* %475, i64 %476)
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %480, label %479

479:                                              ; preds = %473
  br label %605

480:                                              ; preds = %473
  br label %481

481:                                              ; preds = %480, %472
  br label %510

482:                                              ; preds = %426, %426
  %483 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 3
  %484 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %483, align 8
  %485 = icmp ne %struct.alpha_elf_got_entry* %484, null
  %486 = zext i1 %485 to i32
  %487 = call i32 @BFD_ASSERT(i32 %486)
  %488 = load i64, i64* %18, align 8
  %489 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %490 = load i64, i64* %20, align 8
  %491 = call i32 @elf64_alpha_relax_got_load(%struct.alpha_relax_info* %16, i64 %488, %struct.TYPE_33__* %489, i64 %490)
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %494, label %493

493:                                              ; preds = %482
  br label %605

494:                                              ; preds = %482
  br label %510

495:                                              ; preds = %426, %426
  %496 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 3
  %497 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %496, align 8
  %498 = icmp ne %struct.alpha_elf_got_entry* %497, null
  %499 = zext i1 %498 to i32
  %500 = call i32 @BFD_ASSERT(i32 %499)
  %501 = load i64, i64* %18, align 8
  %502 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %503 = load i64, i64* %20, align 8
  %504 = icmp eq i64 %503, 129
  %505 = zext i1 %504 to i32
  %506 = call i32 @elf64_alpha_relax_tls_get_addr(%struct.alpha_relax_info* %16, i64 %501, %struct.TYPE_33__* %502, i32 %505)
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %509, label %508

508:                                              ; preds = %495
  br label %605

509:                                              ; preds = %495
  br label %510

510:                                              ; preds = %426, %509, %494, %481
  br label %511

511:                                              ; preds = %510, %359, %337, %239, %188
  %512 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %513 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %512, i32 1
  store %struct.TYPE_33__* %513, %struct.TYPE_33__** %12, align 8
  br label %172

514:                                              ; preds = %172
  %515 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %516 = icmp ne %struct.TYPE_33__* %515, null
  br i1 %516, label %517, label %538

517:                                              ; preds = %514
  %518 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %519 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %518, i32 0, i32 1
  %520 = load i8*, i8** %519, align 8
  %521 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %522 = bitcast %struct.TYPE_33__* %521 to i8*
  %523 = icmp ne i8* %520, %522
  br i1 %523, label %524, label %538

524:                                              ; preds = %517
  %525 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %526 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 8
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %532, label %529

529:                                              ; preds = %524
  %530 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %531 = call i32 @free(%struct.TYPE_33__* %530)
  br label %537

532:                                              ; preds = %524
  %533 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %534 = bitcast %struct.TYPE_33__* %533 to i8*
  %535 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %536 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %535, i32 0, i32 1
  store i8* %534, i8** %536, align 8
  br label %537

537:                                              ; preds = %532, %529
  br label %538

538:                                              ; preds = %537, %517, %514
  %539 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 0
  %540 = load %struct.TYPE_33__*, %struct.TYPE_33__** %539, align 8
  %541 = icmp ne %struct.TYPE_33__* %540, null
  br i1 %541, label %542, label %572

542:                                              ; preds = %538
  %543 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %544 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_49__* %543)
  %545 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %545, i32 0, i32 0
  %547 = load %struct.TYPE_33__*, %struct.TYPE_33__** %546, align 8
  %548 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 0
  %549 = load %struct.TYPE_33__*, %struct.TYPE_33__** %548, align 8
  %550 = icmp ne %struct.TYPE_33__* %547, %549
  br i1 %550, label %551, label %572

551:                                              ; preds = %542
  %552 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 2
  %553 = load i64, i64* %552, align 8
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %564, label %555

555:                                              ; preds = %551
  %556 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %557 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 8
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %564, label %560

560:                                              ; preds = %555
  %561 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 0
  %562 = load %struct.TYPE_33__*, %struct.TYPE_33__** %561, align 8
  %563 = call i32 @free(%struct.TYPE_33__* %562)
  br label %571

564:                                              ; preds = %555, %551
  %565 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 0
  %566 = load %struct.TYPE_33__*, %struct.TYPE_33__** %565, align 8
  %567 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %568 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_49__* %567)
  %569 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %569, i32 0, i32 0
  store %struct.TYPE_33__* %566, %struct.TYPE_33__** %570, align 8
  br label %571

571:                                              ; preds = %564, %560
  br label %572

572:                                              ; preds = %571, %542, %538
  %573 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %574 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_49__* %573)
  %575 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %574, i32 0, i32 0
  %576 = load %struct.TYPE_33__*, %struct.TYPE_33__** %575, align 8
  %577 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %578 = icmp ne %struct.TYPE_33__* %576, %577
  br i1 %578, label %579, label %592

579:                                              ; preds = %572
  %580 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 1
  %581 = load i64, i64* %580, align 8
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %586, label %583

583:                                              ; preds = %579
  %584 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %585 = call i32 @free(%struct.TYPE_33__* %584)
  br label %591

586:                                              ; preds = %579
  %587 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %588 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %589 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_49__* %588)
  %590 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %589, i32 0, i32 0
  store %struct.TYPE_33__* %587, %struct.TYPE_33__** %590, align 8
  br label %591

591:                                              ; preds = %586, %583
  br label %592

592:                                              ; preds = %591, %572
  %593 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 2
  %594 = load i64, i64* %593, align 8
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %600, label %596

596:                                              ; preds = %592
  %597 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 1
  %598 = load i64, i64* %597, align 8
  %599 = icmp ne i64 %598, 0
  br label %600

600:                                              ; preds = %596, %592
  %601 = phi i1 [ true, %592 ], [ %599, %596 ]
  %602 = zext i1 %601 to i32
  %603 = load i32*, i32** %9, align 8
  store i32 %602, i32* %603, align 4
  %604 = load i32, i32* @TRUE, align 4
  store i32 %604, i32* %5, align 4
  br label %650

605:                                              ; preds = %508, %493, %479, %471, %215, %168
  %606 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %607 = icmp ne %struct.TYPE_33__* %606, null
  br i1 %607, label %608, label %618

608:                                              ; preds = %605
  %609 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %610 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %609, i32 0, i32 1
  %611 = load i8*, i8** %610, align 8
  %612 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %613 = bitcast %struct.TYPE_33__* %612 to i8*
  %614 = icmp ne i8* %611, %613
  br i1 %614, label %615, label %618

615:                                              ; preds = %608
  %616 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %617 = call i32 @free(%struct.TYPE_33__* %616)
  br label %618

618:                                              ; preds = %615, %608, %605
  %619 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 0
  %620 = load %struct.TYPE_33__*, %struct.TYPE_33__** %619, align 8
  %621 = icmp ne %struct.TYPE_33__* %620, null
  br i1 %621, label %622, label %635

622:                                              ; preds = %618
  %623 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %624 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_49__* %623)
  %625 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %624, i32 0, i32 1
  %626 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %625, i32 0, i32 0
  %627 = load %struct.TYPE_33__*, %struct.TYPE_33__** %626, align 8
  %628 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 0
  %629 = load %struct.TYPE_33__*, %struct.TYPE_33__** %628, align 8
  %630 = icmp ne %struct.TYPE_33__* %627, %629
  br i1 %630, label %631, label %635

631:                                              ; preds = %622
  %632 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 0
  %633 = load %struct.TYPE_33__*, %struct.TYPE_33__** %632, align 8
  %634 = call i32 @free(%struct.TYPE_33__* %633)
  br label %635

635:                                              ; preds = %631, %622, %618
  %636 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %637 = icmp ne %struct.TYPE_33__* %636, null
  br i1 %637, label %638, label %648

638:                                              ; preds = %635
  %639 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %640 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_49__* %639)
  %641 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %640, i32 0, i32 0
  %642 = load %struct.TYPE_33__*, %struct.TYPE_33__** %641, align 8
  %643 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %644 = icmp ne %struct.TYPE_33__* %642, %643
  br i1 %644, label %645, label %648

645:                                              ; preds = %638
  %646 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %647 = call i32 @free(%struct.TYPE_33__* %646)
  br label %648

648:                                              ; preds = %645, %638, %635
  %649 = load i32, i32* @FALSE, align 4
  store i32 %649, i32* %5, align 4
  br label %650

650:                                              ; preds = %648, %600, %103, %52
  %651 = load i32, i32* %5, align 4
  ret i32 %651
}

declare dso_local %struct.TYPE_41__* @alpha_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @elf64_alpha_size_got_sections(%struct.bfd_link_info*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.TYPE_37__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @elf64_alpha_size_plt_section(%struct.bfd_link_info*) #1

declare dso_local i32 @elf64_alpha_size_rela_got_section(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_35__* @elf_tdata(i32*) #1

declare dso_local %struct.TYPE_40__* @alpha_elf_tdata(i32*) #1

declare dso_local %struct.TYPE_33__* @_bfd_elf_link_read_relocs(i32*, %struct.TYPE_49__*, i32, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @memset(%struct.alpha_relax_info*, i32, i32) #1

declare dso_local %struct.TYPE_36__* @elf_section_data(%struct.TYPE_49__*) #1

declare dso_local i32 @bfd_malloc_and_get_section(i32*, %struct.TYPE_49__*, %struct.TYPE_33__**) #1

declare dso_local i64 @ELF64_R_TYPE(i32) #1

declare dso_local i64 @ELF64_R_SYM(i32) #1

declare dso_local %struct.TYPE_33__* @bfd_elf_get_elf_syms(i32*, %struct.TYPE_34__*, i64, i32, i32*, i32*, i32*) #1

declare dso_local i64 @alpha_get_tprel_base(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_39__* @bfd_section_from_elf_index(i32*, i64) #1

declare dso_local %struct.alpha_elf_link_hash_entry** @alpha_elf_sym_hashes(i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @elf64_alpha_relax_with_lituse(%struct.alpha_relax_info*, i64, %struct.TYPE_33__*) #1

declare dso_local i32 @elf64_alpha_relax_got_load(%struct.alpha_relax_info*, i64, %struct.TYPE_33__*, i64) #1

declare dso_local i32 @elf64_alpha_relax_tls_get_addr(%struct.alpha_relax_info*, i64, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
