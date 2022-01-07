; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_create_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_create_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.elf_link_hash_entry = type { i32, i8*, i64 }
%struct.bfd_link_hash_entry = type { i32 }
%struct.mips_elf_link_hash_table = type { i32, i32, i32, i32*, i32*, i32*, i32*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@ict_irix5 = common dso_local global i64 0, align 8
@ict_none = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c".rld_map\00", align 1
@mips_elf_dynsym_rtproc_names = common dso_local global i8** null, align 8
@BSF_GLOBAL = common dso_local global i32 0, align 4
@bfd_und_section_ptr = common dso_local global i32* null, align 8
@STT_SECTION = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c".hash\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".dynsym\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c".dynstr\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c".reginfo\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"_DYNAMIC_LINK\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"_DYNAMIC_LINKING\00", align 1
@bfd_abs_section_ptr = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"__rld_map\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"__RLD_MAP\00", align 1
@STT_OBJECT = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c".dynbss\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c".rela.bss\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c".rela.plt\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@mips_vxworks_shared_plt0_entry = common dso_local global i32 0, align 4
@mips_vxworks_shared_plt_entry = common dso_local global i32 0, align 4
@mips_vxworks_exec_plt0_entry = common dso_local global i32 0, align 4
@mips_vxworks_exec_plt_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_mips_elf_create_dynamic_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.elf_link_hash_entry*, align 8
  %7 = alloca %struct.bfd_link_hash_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.mips_elf_link_hash_table*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %13 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %14 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %13)
  store %struct.mips_elf_link_hash_table* %14, %struct.mips_elf_link_hash_table** %11, align 8
  %15 = load i32, i32* @SEC_ALLOC, align 4
  %16 = load i32, i32* @SEC_LOAD, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SEC_IN_MEMORY, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SEC_READONLY, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %27 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = call i32* @bfd_get_section_by_name(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @bfd_set_section_flags(i32* %36, i32* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %424

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @mips_elf_create_got_section(i32* %46, %struct.bfd_link_info* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %424

53:                                               ; preds = %45
  %54 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @mips_elf_rel_dyn_section(%struct.bfd_link_info* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %3, align 4
  br label %424

60:                                               ; preds = %53
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i8* @MIPS_ELF_STUB_SECTION_NAME(i32* %62)
  %64 = call i32* @bfd_get_section_by_name(i32* %61, i8* %63)
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i8* @MIPS_ELF_STUB_SECTION_NAME(i32* %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @SEC_CODE, align 4
  %72 = or i32 %70, %71
  %73 = call i32* @bfd_make_section_with_flags(i32* %67, i8* %69, i32 %72)
  store i32* %73, i32** %9, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %66
  %77 = load i32*, i32** %4, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @MIPS_ELF_LOG_FILE_ALIGN(i32* %79)
  %81 = call i32 @bfd_set_section_alignment(i32* %77, i32* %78, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %76, %66
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %3, align 4
  br label %424

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %60
  %87 = load i32*, i32** %4, align 8
  %88 = call i64 @IRIX_COMPAT(i32* %87)
  %89 = load i64, i64* @ict_irix5, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i32*, i32** %4, align 8
  %93 = call i64 @IRIX_COMPAT(i32* %92)
  %94 = load i64, i64* @ict_none, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %91, %86
  %97 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %98 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %124, label %101

101:                                              ; preds = %96
  %102 = load i32*, i32** %4, align 8
  %103 = call i32* @bfd_get_section_by_name(i32* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %124

105:                                              ; preds = %101
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @SEC_READONLY, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  %111 = call i32* @bfd_make_section_with_flags(i32* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  store i32* %111, i32** %9, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %105
  %115 = load i32*, i32** %4, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @MIPS_ELF_LOG_FILE_ALIGN(i32* %117)
  %119 = call i32 @bfd_set_section_alignment(i32* %115, i32* %116, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %114, %105
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %3, align 4
  br label %424

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %101, %96, %91
  %125 = load i32*, i32** %4, align 8
  %126 = call i64 @IRIX_COMPAT(i32* %125)
  %127 = load i64, i64* @ict_irix5, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %239

129:                                              ; preds = %124
  %130 = load i8**, i8*** @mips_elf_dynsym_rtproc_names, align 8
  store i8** %130, i8*** %10, align 8
  br label %131

131:                                              ; preds = %168, %129
  %132 = load i8**, i8*** %10, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %171

135:                                              ; preds = %131
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %7, align 8
  %136 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %137 = load i32*, i32** %4, align 8
  %138 = load i8**, i8*** %10, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* @BSF_GLOBAL, align 4
  %141 = load i32*, i32** @bfd_und_section_ptr, align 8
  %142 = load i32, i32* @FALSE, align 4
  %143 = load i32*, i32** %4, align 8
  %144 = call %struct.TYPE_2__* @get_elf_backend_data(i32* %143)
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info* %136, i32* %137, i8* %139, i32 %140, i32* %141, i32 0, i32* null, i32 %142, i32 %146, %struct.bfd_link_hash_entry** %7)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %135
  %150 = load i32, i32* @FALSE, align 4
  store i32 %150, i32* %3, align 4
  br label %424

151:                                              ; preds = %135
  %152 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %7, align 8
  %153 = bitcast %struct.bfd_link_hash_entry* %152 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %153, %struct.elf_link_hash_entry** %6, align 8
  %154 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %155 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %154, i32 0, i32 2
  store i64 0, i64* %155, align 8
  %156 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %157 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  %158 = load i8*, i8** @STT_SECTION, align 8
  %159 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %160 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %162 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %163 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %161, %struct.elf_link_hash_entry* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %151
  %166 = load i32, i32* @FALSE, align 4
  store i32 %166, i32* %3, align 4
  br label %424

167:                                              ; preds = %151
  br label %168

168:                                              ; preds = %167
  %169 = load i8**, i8*** %10, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i32 1
  store i8** %170, i8*** %10, align 8
  br label %131

171:                                              ; preds = %131
  %172 = load i32*, i32** %4, align 8
  %173 = call i64 @SGI_COMPAT(i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %171
  %176 = load i32*, i32** %4, align 8
  %177 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %178 = call i32 @mips_elf_create_compact_rel_section(i32* %176, %struct.bfd_link_info* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* @FALSE, align 4
  store i32 %181, i32* %3, align 4
  br label %424

182:                                              ; preds = %175
  br label %183

183:                                              ; preds = %182, %171
  %184 = load i32*, i32** %4, align 8
  %185 = call i32* @bfd_get_section_by_name(i32* %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32* %185, i32** %9, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load i32*, i32** %4, align 8
  %190 = load i32*, i32** %9, align 8
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @MIPS_ELF_LOG_FILE_ALIGN(i32* %191)
  %193 = call i32 @bfd_set_section_alignment(i32* %189, i32* %190, i32 %192)
  br label %194

194:                                              ; preds = %188, %183
  %195 = load i32*, i32** %4, align 8
  %196 = call i32* @bfd_get_section_by_name(i32* %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32* %196, i32** %9, align 8
  %197 = load i32*, i32** %9, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load i32*, i32** %4, align 8
  %201 = load i32*, i32** %9, align 8
  %202 = load i32*, i32** %4, align 8
  %203 = call i32 @MIPS_ELF_LOG_FILE_ALIGN(i32* %202)
  %204 = call i32 @bfd_set_section_alignment(i32* %200, i32* %201, i32 %203)
  br label %205

205:                                              ; preds = %199, %194
  %206 = load i32*, i32** %4, align 8
  %207 = call i32* @bfd_get_section_by_name(i32* %206, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32* %207, i32** %9, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load i32*, i32** %4, align 8
  %212 = load i32*, i32** %9, align 8
  %213 = load i32*, i32** %4, align 8
  %214 = call i32 @MIPS_ELF_LOG_FILE_ALIGN(i32* %213)
  %215 = call i32 @bfd_set_section_alignment(i32* %211, i32* %212, i32 %214)
  br label %216

216:                                              ; preds = %210, %205
  %217 = load i32*, i32** %4, align 8
  %218 = call i32* @bfd_get_section_by_name(i32* %217, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32* %218, i32** %9, align 8
  %219 = load i32*, i32** %9, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %227

221:                                              ; preds = %216
  %222 = load i32*, i32** %4, align 8
  %223 = load i32*, i32** %9, align 8
  %224 = load i32*, i32** %4, align 8
  %225 = call i32 @MIPS_ELF_LOG_FILE_ALIGN(i32* %224)
  %226 = call i32 @bfd_set_section_alignment(i32* %222, i32* %223, i32 %225)
  br label %227

227:                                              ; preds = %221, %216
  %228 = load i32*, i32** %4, align 8
  %229 = call i32* @bfd_get_section_by_name(i32* %228, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %229, i32** %9, align 8
  %230 = load i32*, i32** %9, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load i32*, i32** %4, align 8
  %234 = load i32*, i32** %9, align 8
  %235 = load i32*, i32** %4, align 8
  %236 = call i32 @MIPS_ELF_LOG_FILE_ALIGN(i32* %235)
  %237 = call i32 @bfd_set_section_alignment(i32* %233, i32* %234, i32 %236)
  br label %238

238:                                              ; preds = %232, %227
  br label %239

239:                                              ; preds = %238, %124
  %240 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %241 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %330, label %244

244:                                              ; preds = %239
  %245 = load i32*, i32** %4, align 8
  %246 = call i64 @SGI_COMPAT(i32* %245)
  %247 = icmp ne i64 %246, 0
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0)
  store i8* %249, i8** %12, align 8
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %7, align 8
  %250 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %251 = load i32*, i32** %4, align 8
  %252 = load i8*, i8** %12, align 8
  %253 = load i32, i32* @BSF_GLOBAL, align 4
  %254 = load i32*, i32** @bfd_abs_section_ptr, align 8
  %255 = load i32, i32* @FALSE, align 4
  %256 = load i32*, i32** %4, align 8
  %257 = call %struct.TYPE_2__* @get_elf_backend_data(i32* %256)
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info* %250, i32* %251, i8* %252, i32 %253, i32* %254, i32 0, i32* null, i32 %255, i32 %259, %struct.bfd_link_hash_entry** %7)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %244
  %263 = load i32, i32* @FALSE, align 4
  store i32 %263, i32* %3, align 4
  br label %424

264:                                              ; preds = %244
  %265 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %7, align 8
  %266 = bitcast %struct.bfd_link_hash_entry* %265 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %266, %struct.elf_link_hash_entry** %6, align 8
  %267 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %268 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %267, i32 0, i32 2
  store i64 0, i64* %268, align 8
  %269 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %270 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %269, i32 0, i32 0
  store i32 1, i32* %270, align 8
  %271 = load i8*, i8** @STT_SECTION, align 8
  %272 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %273 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %272, i32 0, i32 1
  store i8* %271, i8** %273, align 8
  %274 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %275 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %276 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %274, %struct.elf_link_hash_entry* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %264
  %279 = load i32, i32* @FALSE, align 4
  store i32 %279, i32* %3, align 4
  br label %424

280:                                              ; preds = %264
  %281 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %282 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %281)
  %283 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %282, i32 0, i32 8
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %329, label %286

286:                                              ; preds = %280
  %287 = load i32*, i32** %4, align 8
  %288 = call i32* @bfd_get_section_by_name(i32* %287, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* %288, i32** %9, align 8
  %289 = load i32*, i32** %9, align 8
  %290 = icmp ne i32* %289, null
  %291 = zext i1 %290 to i32
  %292 = call i32 @BFD_ASSERT(i32 %291)
  %293 = load i32*, i32** %4, align 8
  %294 = call i64 @SGI_COMPAT(i32* %293)
  %295 = icmp ne i64 %294, 0
  %296 = zext i1 %295 to i64
  %297 = select i1 %295, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)
  store i8* %297, i8** %12, align 8
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %7, align 8
  %298 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %299 = load i32*, i32** %4, align 8
  %300 = load i8*, i8** %12, align 8
  %301 = load i32, i32* @BSF_GLOBAL, align 4
  %302 = load i32*, i32** %9, align 8
  %303 = load i32, i32* @FALSE, align 4
  %304 = load i32*, i32** %4, align 8
  %305 = call %struct.TYPE_2__* @get_elf_backend_data(i32* %304)
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info* %298, i32* %299, i8* %300, i32 %301, i32* %302, i32 0, i32* null, i32 %303, i32 %307, %struct.bfd_link_hash_entry** %7)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %286
  %311 = load i32, i32* @FALSE, align 4
  store i32 %311, i32* %3, align 4
  br label %424

312:                                              ; preds = %286
  %313 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %7, align 8
  %314 = bitcast %struct.bfd_link_hash_entry* %313 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %314, %struct.elf_link_hash_entry** %6, align 8
  %315 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %316 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %315, i32 0, i32 2
  store i64 0, i64* %316, align 8
  %317 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %318 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %317, i32 0, i32 0
  store i32 1, i32* %318, align 8
  %319 = load i8*, i8** @STT_OBJECT, align 8
  %320 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %321 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %320, i32 0, i32 1
  store i8* %319, i8** %321, align 8
  %322 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %323 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %324 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %322, %struct.elf_link_hash_entry* %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %328, label %326

326:                                              ; preds = %312
  %327 = load i32, i32* @FALSE, align 4
  store i32 %327, i32* %3, align 4
  br label %424

328:                                              ; preds = %312
  br label %329

329:                                              ; preds = %328, %280
  br label %330

330:                                              ; preds = %329, %239
  %331 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %332 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %331, i32 0, i32 7
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %422

335:                                              ; preds = %330
  %336 = load i32*, i32** %4, align 8
  %337 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %338 = call i32 @_bfd_elf_create_dynamic_sections(i32* %336, %struct.bfd_link_info* %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %342, label %340

340:                                              ; preds = %335
  %341 = load i32, i32* @FALSE, align 4
  store i32 %341, i32* %3, align 4
  br label %424

342:                                              ; preds = %335
  %343 = load i32*, i32** %4, align 8
  %344 = call i32* @bfd_get_section_by_name(i32* %343, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %345 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %346 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %345, i32 0, i32 6
  store i32* %344, i32** %346, align 8
  %347 = load i32*, i32** %4, align 8
  %348 = call i32* @bfd_get_section_by_name(i32* %347, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %349 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %350 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %349, i32 0, i32 5
  store i32* %348, i32** %350, align 8
  %351 = load i32*, i32** %4, align 8
  %352 = call i32* @bfd_get_section_by_name(i32* %351, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %353 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %354 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %353, i32 0, i32 4
  store i32* %352, i32** %354, align 8
  %355 = load i32*, i32** %4, align 8
  %356 = call i32* @bfd_get_section_by_name(i32* %355, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %357 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %358 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %357, i32 0, i32 3
  store i32* %356, i32** %358, align 8
  %359 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %360 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %359, i32 0, i32 6
  %361 = load i32*, i32** %360, align 8
  %362 = icmp ne i32* %361, null
  br i1 %362, label %363, label %383

363:                                              ; preds = %342
  %364 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %365 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %364, i32 0, i32 5
  %366 = load i32*, i32** %365, align 8
  %367 = icmp ne i32* %366, null
  br i1 %367, label %373, label %368

368:                                              ; preds = %363
  %369 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %370 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %383

373:                                              ; preds = %368, %363
  %374 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %375 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %374, i32 0, i32 4
  %376 = load i32*, i32** %375, align 8
  %377 = icmp ne i32* %376, null
  br i1 %377, label %378, label %383

378:                                              ; preds = %373
  %379 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %380 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %379, i32 0, i32 3
  %381 = load i32*, i32** %380, align 8
  %382 = icmp ne i32* %381, null
  br i1 %382, label %385, label %383

383:                                              ; preds = %378, %373, %368, %342
  %384 = call i32 (...) @abort() #3
  unreachable

385:                                              ; preds = %378
  %386 = load i32*, i32** %4, align 8
  %387 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %388 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %389 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %388, i32 0, i32 2
  %390 = call i32 @elf_vxworks_create_dynamic_sections(i32* %386, %struct.bfd_link_info* %387, i32* %389)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %394, label %392

392:                                              ; preds = %385
  %393 = load i32, i32* @FALSE, align 4
  store i32 %393, i32* %3, align 4
  br label %424

394:                                              ; preds = %385
  %395 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %396 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %410

399:                                              ; preds = %394
  %400 = load i32, i32* @mips_vxworks_shared_plt0_entry, align 4
  %401 = call i32 @ARRAY_SIZE(i32 %400)
  %402 = mul nsw i32 4, %401
  %403 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %404 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %403, i32 0, i32 0
  store i32 %402, i32* %404, align 8
  %405 = load i32, i32* @mips_vxworks_shared_plt_entry, align 4
  %406 = call i32 @ARRAY_SIZE(i32 %405)
  %407 = mul nsw i32 4, %406
  %408 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %409 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %408, i32 0, i32 1
  store i32 %407, i32* %409, align 4
  br label %421

410:                                              ; preds = %394
  %411 = load i32, i32* @mips_vxworks_exec_plt0_entry, align 4
  %412 = call i32 @ARRAY_SIZE(i32 %411)
  %413 = mul nsw i32 4, %412
  %414 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %415 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %414, i32 0, i32 0
  store i32 %413, i32* %415, align 8
  %416 = load i32, i32* @mips_vxworks_exec_plt_entry, align 4
  %417 = call i32 @ARRAY_SIZE(i32 %416)
  %418 = mul nsw i32 4, %417
  %419 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %420 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %419, i32 0, i32 1
  store i32 %418, i32* %420, align 4
  br label %421

421:                                              ; preds = %410, %399
  br label %422

422:                                              ; preds = %421, %330
  %423 = load i32, i32* @TRUE, align 4
  store i32 %423, i32* %3, align 4
  br label %424

424:                                              ; preds = %422, %392, %340, %326, %310, %278, %262, %180, %165, %149, %121, %83, %58, %51, %41
  %425 = load i32, i32* %3, align 4
  ret i32 %425
}

declare dso_local %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @bfd_set_section_flags(i32*, i32*, i32) #1

declare dso_local i32 @mips_elf_create_got_section(i32*, %struct.bfd_link_info*, i32) #1

declare dso_local i32 @mips_elf_rel_dyn_section(%struct.bfd_link_info*, i32) #1

declare dso_local i8* @MIPS_ELF_STUB_SECTION_NAME(i32*) #1

declare dso_local i32* @bfd_make_section_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, i32*, i32) #1

declare dso_local i32 @MIPS_ELF_LOG_FILE_ALIGN(i32*) #1

declare dso_local i64 @IRIX_COMPAT(i32*) #1

declare dso_local i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info*, i32*, i8*, i32, i32*, i32, i32*, i32, i32, %struct.bfd_link_hash_entry**) #1

declare dso_local %struct.TYPE_2__* @get_elf_backend_data(i32*) #1

declare dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @SGI_COMPAT(i32*) #1

declare dso_local i32 @mips_elf_create_compact_rel_section(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @_bfd_elf_create_dynamic_sections(i32*, %struct.bfd_link_info*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @elf_vxworks_create_dynamic_sections(i32*, %struct.bfd_link_info*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
