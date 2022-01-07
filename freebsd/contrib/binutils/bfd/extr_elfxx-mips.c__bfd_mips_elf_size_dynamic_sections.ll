; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_size_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_size_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32, i32*, i64, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.bfd_link_info = type { i32, i64, i64, i64 }
%struct.mips_elf_link_hash_table = type { i64, i64, %struct.TYPE_21__*, i64, %struct.TYPE_21__*, i32 }
%struct.mips_got_info = type { i32, i32, i32, i32, i32, %struct.mips_got_info* }
%struct.mips_elf_set_global_got_offset_arg = type { i64, %struct.bfd_link_info*, i64, %struct.mips_got_info*, i32 }
%struct.mips_elf_count_tls_arg = type { i64, %struct.bfd_link_info*, i64, %struct.mips_got_info*, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_20__* }

@.str = private unnamed_addr constant [8 x i8] c".interp\00", align 1
@FALSE = common dso_local global i64 0, align 8
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".rel\00", align 1
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c".got\00", align 1
@mips_elf_set_global_got_offset = common dso_local global i32 0, align 4
@mips_elf_count_local_tls_relocs = common dso_local global i32 0, align 4
@mips_elf_count_global_tls_relocs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c".rld_map\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c".compact_rel\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c".init\00", align 1
@SEC_EXCLUDE = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@bfd_error_no_memory = common dso_local global i32 0, align 4
@DT_MIPS_RLD_MAP = common dso_local global i32 0, align 4
@DT_DEBUG = common dso_local global i32 0, align 4
@DF_TEXTREL = common dso_local global i32 0, align 4
@DT_TEXTREL = common dso_local global i32 0, align 4
@DT_PLTGOT = common dso_local global i32 0, align 4
@DT_RELA = common dso_local global i32 0, align 4
@DT_RELASZ = common dso_local global i32 0, align 4
@DT_RELAENT = common dso_local global i32 0, align 4
@DT_PLTREL = common dso_local global i32 0, align 4
@DT_JMPREL = common dso_local global i32 0, align 4
@DT_PLTRELSZ = common dso_local global i32 0, align 4
@DT_REL = common dso_local global i32 0, align 4
@DT_RELSZ = common dso_local global i32 0, align 4
@DT_RELENT = common dso_local global i32 0, align 4
@DT_MIPS_RLD_VERSION = common dso_local global i32 0, align 4
@DT_MIPS_FLAGS = common dso_local global i32 0, align 4
@DT_MIPS_BASE_ADDRESS = common dso_local global i32 0, align 4
@DT_MIPS_LOCAL_GOTNO = common dso_local global i32 0, align 4
@DT_MIPS_SYMTABNO = common dso_local global i32 0, align 4
@DT_MIPS_UNREFEXTNO = common dso_local global i32 0, align 4
@DT_MIPS_GOTSYM = common dso_local global i32 0, align 4
@ict_irix5 = common dso_local global i64 0, align 8
@DT_MIPS_HIPAGENO = common dso_local global i32 0, align 4
@ict_irix6 = common dso_local global i64 0, align 8
@DT_MIPS_OPTIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_mips_elf_size_dynamic_sections(%struct.TYPE_20__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mips_elf_link_hash_table*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.mips_got_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mips_got_info*, align 8
  %17 = alloca %struct.mips_got_info*, align 8
  %18 = alloca %struct.mips_elf_set_global_got_offset_arg, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.mips_elf_count_tls_arg, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %22 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %23 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %22)
  store %struct.mips_elf_link_hash_table* %23, %struct.mips_elf_link_hash_table** %10, align 8
  %24 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %25 = call %struct.TYPE_22__* @elf_hash_table(%struct.bfd_link_info* %24)
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %6, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = icmp ne %struct.TYPE_20__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @BFD_ASSERT(i32 %30)
  %32 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %33 = call %struct.TYPE_22__* @elf_hash_table(%struct.bfd_link_info* %32)
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %2
  %38 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %39 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %44 = call %struct.TYPE_21__* @bfd_get_section_by_name(%struct.TYPE_20__* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_21__* %44, %struct.TYPE_21__** %7, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %46 = icmp ne %struct.TYPE_21__* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @BFD_ASSERT(i32 %47)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %50 = call i64 @ELF_DYNAMIC_INTERPRETER(%struct.TYPE_20__* %49)
  %51 = call i64 @strlen(i64 %50)
  %52 = add nsw i64 %51, 1
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %56 = call i64 @ELF_DYNAMIC_INTERPRETER(%struct.TYPE_20__* %55)
  %57 = inttoptr i64 %56 to i32*
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 2
  store i32* %57, i32** %59, align 8
  br label %60

60:                                               ; preds = %42, %37
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i64, i64* @FALSE, align 8
  store i64 %62, i64* %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  store %struct.TYPE_21__* %65, %struct.TYPE_21__** %7, align 8
  br label %66

66:                                               ; preds = %445, %61
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %68 = icmp ne %struct.TYPE_21__* %67, null
  br i1 %68, label %69, label %449

69:                                               ; preds = %66
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %72 = call i8* @bfd_get_section_name(%struct.TYPE_20__* %70, %struct.TYPE_21__* %71)
  store i8* %72, i8** %11, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %445

80:                                               ; preds = %69
  %81 = load i8*, i8** %11, align 8
  %82 = call i64 @CONST_STRNEQ(i8* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %136

84:                                               ; preds = %80
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %135

89:                                               ; preds = %84
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  %94 = call i8* @bfd_get_section_name(%struct.TYPE_20__* %90, %struct.TYPE_21__* %93)
  store i8* %94, i8** %12, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  %98 = call %struct.TYPE_21__* @bfd_get_section_by_name(%struct.TYPE_20__* %95, i8* %97)
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %13, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %100 = icmp ne %struct.TYPE_21__* %99, null
  br i1 %100, label %101, label %115

101:                                              ; preds = %89
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SEC_READONLY, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SEC_ALLOC, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %108, %101, %89
  %116 = load i8*, i8** %12, align 8
  %117 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %118 = call i8* @MIPS_ELF_REL_DYN_NAME(%struct.bfd_link_info* %117)
  %119 = call i64 @strcmp(i8* %116, i8* %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115, %108
  %122 = load i64, i64* @TRUE, align 8
  store i64 %122, i64* %9, align 8
  br label %123

123:                                              ; preds = %121, %115
  %124 = load i8*, i8** %11, align 8
  %125 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %126 = call i8* @MIPS_ELF_REL_DYN_NAME(%struct.bfd_link_info* %125)
  %127 = call i64 @strcmp(i8* %124, i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %129, %123
  %133 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %134 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %133, i32 0, i32 3
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %132, %84
  br label %400

136:                                              ; preds = %80
  %137 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %10, align 8
  %138 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %136
  %142 = load i8*, i8** %11, align 8
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %168

145:                                              ; preds = %141
  %146 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %147 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %167

150:                                              ; preds = %145
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %152 = call %struct.mips_got_info* @mips_elf_got_info(%struct.TYPE_20__* %151, i32* null)
  store %struct.mips_got_info* %152, %struct.mips_got_info** %14, align 8
  %153 = load %struct.mips_got_info*, %struct.mips_got_info** %14, align 8
  %154 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.mips_got_info*, %struct.mips_got_info** %14, align 8
  %157 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add i32 %155, %158
  %160 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %161 = call i32 @MIPS_RESERVED_GOTNO(%struct.bfd_link_info* %160)
  %162 = sub i32 %159, %161
  store i32 %162, i32* %15, align 4
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %164 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @mips_elf_allocate_dynamic_relocations(%struct.TYPE_20__* %163, %struct.bfd_link_info* %164, i32 %165)
  br label %167

167:                                              ; preds = %150, %145
  br label %399

168:                                              ; preds = %141, %136
  %169 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %10, align 8
  %170 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %324, label %173

173:                                              ; preds = %168
  %174 = load i8*, i8** %11, align 8
  %175 = call i64 @CONST_STRNEQ(i8* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %324

177:                                              ; preds = %173
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %179 = call %struct.mips_got_info* @mips_elf_got_info(%struct.TYPE_20__* %178, i32* null)
  store %struct.mips_got_info* %179, %struct.mips_got_info** %16, align 8
  %180 = load %struct.mips_got_info*, %struct.mips_got_info** %16, align 8
  store %struct.mips_got_info* %180, %struct.mips_got_info** %17, align 8
  store i32 0, i32* %19, align 4
  %181 = load %struct.mips_got_info*, %struct.mips_got_info** %16, align 8
  %182 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %181, i32 0, i32 5
  %183 = load %struct.mips_got_info*, %struct.mips_got_info** %182, align 8
  %184 = icmp ne %struct.mips_got_info* %183, null
  br i1 %184, label %185, label %294

185:                                              ; preds = %177
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %187 = call i32 @MIPS_ELF_GOT_SIZE(%struct.TYPE_20__* %186)
  %188 = getelementptr inbounds %struct.mips_elf_set_global_got_offset_arg, %struct.mips_elf_set_global_got_offset_arg* %18, i32 0, i32 4
  store i32 %187, i32* %188, align 8
  %189 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %190 = getelementptr inbounds %struct.mips_elf_set_global_got_offset_arg, %struct.mips_elf_set_global_got_offset_arg* %18, i32 0, i32 1
  store %struct.bfd_link_info* %189, %struct.bfd_link_info** %190, align 8
  %191 = load %struct.mips_got_info*, %struct.mips_got_info** %16, align 8
  %192 = call i32 @mips_elf_resolve_final_got_entries(%struct.mips_got_info* %191)
  %193 = load %struct.mips_got_info*, %struct.mips_got_info** %16, align 8
  %194 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %193, i32 0, i32 5
  %195 = load %struct.mips_got_info*, %struct.mips_got_info** %194, align 8
  store %struct.mips_got_info* %195, %struct.mips_got_info** %17, align 8
  br label %196

196:                                              ; preds = %289, %185
  %197 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %198 = icmp ne %struct.mips_got_info* %197, null
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %201 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %200, i32 0, i32 5
  %202 = load %struct.mips_got_info*, %struct.mips_got_info** %201, align 8
  %203 = load %struct.mips_got_info*, %struct.mips_got_info** %16, align 8
  %204 = icmp ne %struct.mips_got_info* %202, %203
  br label %205

205:                                              ; preds = %199, %196
  %206 = phi i1 [ false, %196 ], [ %204, %199 ]
  br i1 %206, label %207, label %293

207:                                              ; preds = %205
  %208 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %209 = call i32 @mips_elf_resolve_final_got_entries(%struct.mips_got_info* %208)
  %210 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %211 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  store i32 %212, i32* %20, align 4
  %213 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %214 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %217 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  %218 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %219 = getelementptr inbounds %struct.mips_elf_set_global_got_offset_arg, %struct.mips_elf_set_global_got_offset_arg* %18, i32 0, i32 3
  store %struct.mips_got_info* %218, %struct.mips_got_info** %219, align 8
  %220 = getelementptr inbounds %struct.mips_elf_set_global_got_offset_arg, %struct.mips_elf_set_global_got_offset_arg* %18, i32 0, i32 2
  store i64 0, i64* %220, align 8
  %221 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %222 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @mips_elf_set_global_got_offset, align 4
  %225 = call i32 @htab_traverse(i32 %223, i32 %224, %struct.mips_elf_set_global_got_offset_arg* %18)
  %226 = getelementptr inbounds %struct.mips_elf_set_global_got_offset_arg, %struct.mips_elf_set_global_got_offset_arg* %18, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* %19, align 4
  %229 = zext i32 %228 to i64
  %230 = add nsw i64 %229, %227
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %19, align 4
  %232 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %233 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %236 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sub i32 %234, %237
  %239 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %240 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp ule i32 %238, %241
  %243 = zext i1 %242 to i32
  %244 = call i32 @BFD_ASSERT(i32 %243)
  %245 = load i32, i32* %20, align 4
  %246 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %247 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 8
  %248 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %249 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %288

252:                                              ; preds = %207
  %253 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %254 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %257 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = sub i32 %255, %258
  %260 = load i32, i32* %19, align 4
  %261 = add i32 %260, %259
  store i32 %261, i32* %19, align 4
  %262 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %263 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %266 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %265, i32 0, i32 5
  %267 = load %struct.mips_got_info*, %struct.mips_got_info** %266, align 8
  %268 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %271 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %270, i32 0, i32 5
  %272 = load %struct.mips_got_info*, %struct.mips_got_info** %271, align 8
  %273 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = add i32 %269, %274
  %276 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %277 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %276, i32 0, i32 5
  %278 = load %struct.mips_got_info*, %struct.mips_got_info** %277, align 8
  %279 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = add i32 %275, %280
  %282 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %283 = call i32 @MIPS_RESERVED_GOTNO(%struct.bfd_link_info* %282)
  %284 = add i32 %281, %283
  %285 = icmp eq i32 %264, %284
  %286 = zext i1 %285 to i32
  %287 = call i32 @BFD_ASSERT(i32 %286)
  br label %288

288:                                              ; preds = %252, %207
  br label %289

289:                                              ; preds = %288
  %290 = load %struct.mips_got_info*, %struct.mips_got_info** %17, align 8
  %291 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %290, i32 0, i32 5
  %292 = load %struct.mips_got_info*, %struct.mips_got_info** %291, align 8
  store %struct.mips_got_info* %292, %struct.mips_got_info** %17, align 8
  br label %196

293:                                              ; preds = %205
  br label %315

294:                                              ; preds = %177
  %295 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %296 = getelementptr inbounds %struct.mips_elf_count_tls_arg, %struct.mips_elf_count_tls_arg* %21, i32 0, i32 1
  store %struct.bfd_link_info* %295, %struct.bfd_link_info** %296, align 8
  %297 = getelementptr inbounds %struct.mips_elf_count_tls_arg, %struct.mips_elf_count_tls_arg* %21, i32 0, i32 0
  store i64 0, i64* %297, align 8
  %298 = load %struct.mips_got_info*, %struct.mips_got_info** %16, align 8
  %299 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @mips_elf_count_local_tls_relocs, align 4
  %302 = bitcast %struct.mips_elf_count_tls_arg* %21 to %struct.mips_elf_set_global_got_offset_arg*
  %303 = call i32 @htab_traverse(i32 %300, i32 %301, %struct.mips_elf_set_global_got_offset_arg* %302)
  %304 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %305 = call %struct.TYPE_22__* @elf_hash_table(%struct.bfd_link_info* %304)
  %306 = load i32, i32* @mips_elf_count_global_tls_relocs, align 4
  %307 = bitcast %struct.mips_elf_count_tls_arg* %21 to %struct.mips_elf_set_global_got_offset_arg*
  %308 = call i32 @elf_link_hash_traverse(%struct.TYPE_22__* %305, i32 %306, %struct.mips_elf_set_global_got_offset_arg* %307)
  %309 = getelementptr inbounds %struct.mips_elf_count_tls_arg, %struct.mips_elf_count_tls_arg* %21, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i32, i32* %19, align 4
  %312 = zext i32 %311 to i64
  %313 = add nsw i64 %312, %310
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %19, align 4
  br label %315

315:                                              ; preds = %294, %293
  %316 = load i32, i32* %19, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %315
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %320 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %321 = load i32, i32* %19, align 4
  %322 = call i32 @mips_elf_allocate_dynamic_relocations(%struct.TYPE_20__* %319, %struct.bfd_link_info* %320, i32 %321)
  br label %323

323:                                              ; preds = %318, %315
  br label %398

324:                                              ; preds = %173, %168
  %325 = load i8*, i8** %11, align 8
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %327 = call i8* @MIPS_ELF_STUB_SECTION_NAME(%struct.TYPE_20__* %326)
  %328 = call i64 @strcmp(i8* %325, i8* %327)
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %338

330:                                              ; preds = %324
  %331 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %10, align 8
  %332 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = add nsw i64 %336, %333
  store i64 %337, i64* %335, align 8
  br label %397

338:                                              ; preds = %324
  %339 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %340 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %339, i32 0, i32 2
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %360, label %343

343:                                              ; preds = %338
  %344 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %345 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %344)
  %346 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %345, i32 0, i32 5
  %347 = load i32, i32* %346, align 8
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %360, label %349

349:                                              ; preds = %343
  %350 = load i8*, i8** %11, align 8
  %351 = call i64 @CONST_STRNEQ(i8* %350, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %349
  %354 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %355 = call i64 @MIPS_ELF_RLD_MAP_SIZE(%struct.TYPE_20__* %354)
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = add nsw i64 %358, %355
  store i64 %359, i64* %357, align 8
  br label %396

360:                                              ; preds = %349, %343, %338
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %362 = call i64 @SGI_COMPAT(%struct.TYPE_20__* %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %377

364:                                              ; preds = %360
  %365 = load i8*, i8** %11, align 8
  %366 = call i64 @CONST_STRNEQ(i8* %365, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %377

368:                                              ; preds = %364
  %369 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %370 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %369)
  %371 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = add nsw i64 %375, %372
  store i64 %376, i64* %374, align 8
  br label %395

377:                                              ; preds = %364, %360
  %378 = load i8*, i8** %11, align 8
  %379 = call i64 @CONST_STRNEQ(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %394, label %381

381:                                              ; preds = %377
  %382 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %383 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %10, align 8
  %384 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %383, i32 0, i32 4
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %384, align 8
  %386 = icmp ne %struct.TYPE_21__* %382, %385
  br i1 %386, label %387, label %394

387:                                              ; preds = %381
  %388 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %389 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %10, align 8
  %390 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %389, i32 0, i32 2
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %390, align 8
  %392 = icmp ne %struct.TYPE_21__* %388, %391
  br i1 %392, label %393, label %394

393:                                              ; preds = %387
  br label %445

394:                                              ; preds = %387, %381, %377
  br label %395

395:                                              ; preds = %394, %368
  br label %396

396:                                              ; preds = %395, %353
  br label %397

397:                                              ; preds = %396, %330
  br label %398

398:                                              ; preds = %397, %323
  br label %399

399:                                              ; preds = %398, %167
  br label %400

400:                                              ; preds = %399, %135
  %401 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %405, label %411

405:                                              ; preds = %400
  %406 = load i32, i32* @SEC_EXCLUDE, align 4
  %407 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 8
  %410 = or i32 %409, %406
  store i32 %410, i32* %408, align 8
  br label %445

411:                                              ; preds = %400
  %412 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %416 = and i32 %414, %415
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %411
  br label %445

419:                                              ; preds = %411
  %420 = load i8*, i8** %11, align 8
  %421 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %422 = call i8* @MIPS_ELF_REL_DYN_NAME(%struct.bfd_link_info* %421)
  %423 = call i64 @strcmp(i8* %420, i8* %422)
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %425, label %427

425:                                              ; preds = %419
  %426 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %426, %struct.TYPE_21__** %8, align 8
  br label %445

427:                                              ; preds = %419
  %428 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %429 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %429, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = call i8* @bfd_zalloc(%struct.TYPE_20__* %428, i64 %431)
  %433 = bitcast i8* %432 to i32*
  %434 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %434, i32 0, i32 2
  store i32* %433, i32** %435, align 8
  %436 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %437 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %436, i32 0, i32 2
  %438 = load i32*, i32** %437, align 8
  %439 = icmp eq i32* %438, null
  br i1 %439, label %440, label %444

440:                                              ; preds = %427
  %441 = load i32, i32* @bfd_error_no_memory, align 4
  %442 = call i32 @bfd_set_error(i32 %441)
  %443 = load i64, i64* @FALSE, align 8
  store i64 %443, i64* %3, align 8
  br label %722

444:                                              ; preds = %427
  br label %445

445:                                              ; preds = %444, %425, %418, %405, %393, %79
  %446 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %447 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %446, i32 0, i32 5
  %448 = load %struct.TYPE_21__*, %struct.TYPE_21__** %447, align 8
  store %struct.TYPE_21__* %448, %struct.TYPE_21__** %7, align 8
  br label %66

449:                                              ; preds = %66
  %450 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %451 = icmp ne %struct.TYPE_21__* %450, null
  br i1 %451, label %452, label %470

452:                                              ; preds = %449
  %453 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %454 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %455 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = call i8* @bfd_zalloc(%struct.TYPE_20__* %453, i64 %456)
  %458 = bitcast i8* %457 to i32*
  %459 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %460 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %459, i32 0, i32 2
  store i32* %458, i32** %460, align 8
  %461 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %462 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %461, i32 0, i32 2
  %463 = load i32*, i32** %462, align 8
  %464 = icmp eq i32* %463, null
  br i1 %464, label %465, label %469

465:                                              ; preds = %452
  %466 = load i32, i32* @bfd_error_no_memory, align 4
  %467 = call i32 @bfd_set_error(i32 %466)
  %468 = load i64, i64* @FALSE, align 8
  store i64 %468, i64* %3, align 8
  br label %722

469:                                              ; preds = %452
  br label %470

470:                                              ; preds = %469, %449
  %471 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %472 = call %struct.TYPE_22__* @elf_hash_table(%struct.bfd_link_info* %471)
  %473 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %720

476:                                              ; preds = %470
  %477 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %478 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %477, i32 0, i32 2
  %479 = load i64, i64* %478, align 8
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %488, label %481

481:                                              ; preds = %476
  %482 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %483 = load i32, i32* @DT_MIPS_RLD_MAP, align 4
  %484 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %482, i32 %483, i32 0)
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %488, label %486

486:                                              ; preds = %481
  %487 = load i64, i64* @FALSE, align 8
  store i64 %487, i64* %3, align 8
  br label %722

488:                                              ; preds = %481, %476
  %489 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %490 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %489, i32 0, i32 1
  %491 = load i64, i64* %490, align 8
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %504

493:                                              ; preds = %488
  %494 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %495 = call i64 @SGI_COMPAT(%struct.TYPE_20__* %494)
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %504, label %497

497:                                              ; preds = %493
  %498 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %499 = load i32, i32* @DT_DEBUG, align 4
  %500 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %498, i32 %499, i32 0)
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %504, label %502

502:                                              ; preds = %497
  %503 = load i64, i64* @FALSE, align 8
  store i64 %503, i64* %3, align 8
  br label %722

504:                                              ; preds = %497, %493, %488
  %505 = load i64, i64* %9, align 8
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %522

507:                                              ; preds = %504
  %508 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %509 = call i64 @SGI_COMPAT(%struct.TYPE_20__* %508)
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %516, label %511

511:                                              ; preds = %507
  %512 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %10, align 8
  %513 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %512, i32 0, i32 3
  %514 = load i64, i64* %513, align 8
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %522

516:                                              ; preds = %511, %507
  %517 = load i32, i32* @DF_TEXTREL, align 4
  %518 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %519 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = or i32 %520, %517
  store i32 %521, i32* %519, align 8
  br label %522

522:                                              ; preds = %516, %511, %504
  %523 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %524 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 8
  %526 = load i32, i32* @DF_TEXTREL, align 4
  %527 = and i32 %525, %526
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %543

529:                                              ; preds = %522
  %530 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %531 = load i32, i32* @DT_TEXTREL, align 4
  %532 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %530, i32 %531, i32 0)
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %536, label %534

534:                                              ; preds = %529
  %535 = load i64, i64* @FALSE, align 8
  store i64 %535, i64* %3, align 8
  br label %722

536:                                              ; preds = %529
  %537 = load i32, i32* @DF_TEXTREL, align 4
  %538 = xor i32 %537, -1
  %539 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %540 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = and i32 %541, %538
  store i32 %542, i32* %540, align 8
  br label %543

543:                                              ; preds = %536, %522
  %544 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %545 = load i32, i32* @DT_PLTGOT, align 4
  %546 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %544, i32 %545, i32 0)
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %550, label %548

548:                                              ; preds = %543
  %549 = load i64, i64* @FALSE, align 8
  store i64 %549, i64* %3, align 8
  br label %722

550:                                              ; preds = %543
  %551 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %10, align 8
  %552 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %551, i32 0, i32 3
  %553 = load i64, i64* %552, align 8
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %612

555:                                              ; preds = %550
  %556 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %557 = load i64, i64* @FALSE, align 8
  %558 = call i64 @mips_elf_rel_dyn_section(%struct.bfd_link_info* %556, i64 %557)
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %582

560:                                              ; preds = %555
  %561 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %562 = load i32, i32* @DT_RELA, align 4
  %563 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %561, i32 %562, i32 0)
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %567, label %565

565:                                              ; preds = %560
  %566 = load i64, i64* @FALSE, align 8
  store i64 %566, i64* %3, align 8
  br label %722

567:                                              ; preds = %560
  %568 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %569 = load i32, i32* @DT_RELASZ, align 4
  %570 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %568, i32 %569, i32 0)
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %574, label %572

572:                                              ; preds = %567
  %573 = load i64, i64* @FALSE, align 8
  store i64 %573, i64* %3, align 8
  br label %722

574:                                              ; preds = %567
  %575 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %576 = load i32, i32* @DT_RELAENT, align 4
  %577 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %575, i32 %576, i32 0)
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %581, label %579

579:                                              ; preds = %574
  %580 = load i64, i64* @FALSE, align 8
  store i64 %580, i64* %3, align 8
  br label %722

581:                                              ; preds = %574
  br label %582

582:                                              ; preds = %581, %555
  %583 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %10, align 8
  %584 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %583, i32 0, i32 2
  %585 = load %struct.TYPE_21__*, %struct.TYPE_21__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %585, i32 0, i32 0
  %587 = load i64, i64* %586, align 8
  %588 = icmp sgt i64 %587, 0
  br i1 %588, label %589, label %611

589:                                              ; preds = %582
  %590 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %591 = load i32, i32* @DT_PLTREL, align 4
  %592 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %590, i32 %591, i32 0)
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %596, label %594

594:                                              ; preds = %589
  %595 = load i64, i64* @FALSE, align 8
  store i64 %595, i64* %3, align 8
  br label %722

596:                                              ; preds = %589
  %597 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %598 = load i32, i32* @DT_JMPREL, align 4
  %599 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %597, i32 %598, i32 0)
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %603, label %601

601:                                              ; preds = %596
  %602 = load i64, i64* @FALSE, align 8
  store i64 %602, i64* %3, align 8
  br label %722

603:                                              ; preds = %596
  %604 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %605 = load i32, i32* @DT_PLTRELSZ, align 4
  %606 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %604, i32 %605, i32 0)
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %610, label %608

608:                                              ; preds = %603
  %609 = load i64, i64* @FALSE, align 8
  store i64 %609, i64* %3, align 8
  br label %722

610:                                              ; preds = %603
  br label %611

611:                                              ; preds = %610, %582
  br label %719

612:                                              ; preds = %550
  %613 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %614 = load i64, i64* @FALSE, align 8
  %615 = call i64 @mips_elf_rel_dyn_section(%struct.bfd_link_info* %613, i64 %614)
  %616 = icmp ne i64 %615, 0
  br i1 %616, label %617, label %639

617:                                              ; preds = %612
  %618 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %619 = load i32, i32* @DT_REL, align 4
  %620 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %618, i32 %619, i32 0)
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %624, label %622

622:                                              ; preds = %617
  %623 = load i64, i64* @FALSE, align 8
  store i64 %623, i64* %3, align 8
  br label %722

624:                                              ; preds = %617
  %625 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %626 = load i32, i32* @DT_RELSZ, align 4
  %627 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %625, i32 %626, i32 0)
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %631, label %629

629:                                              ; preds = %624
  %630 = load i64, i64* @FALSE, align 8
  store i64 %630, i64* %3, align 8
  br label %722

631:                                              ; preds = %624
  %632 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %633 = load i32, i32* @DT_RELENT, align 4
  %634 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %632, i32 %633, i32 0)
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %638, label %636

636:                                              ; preds = %631
  %637 = load i64, i64* @FALSE, align 8
  store i64 %637, i64* %3, align 8
  br label %722

638:                                              ; preds = %631
  br label %639

639:                                              ; preds = %638, %612
  %640 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %641 = load i32, i32* @DT_MIPS_RLD_VERSION, align 4
  %642 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %640, i32 %641, i32 0)
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %646, label %644

644:                                              ; preds = %639
  %645 = load i64, i64* @FALSE, align 8
  store i64 %645, i64* %3, align 8
  br label %722

646:                                              ; preds = %639
  %647 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %648 = load i32, i32* @DT_MIPS_FLAGS, align 4
  %649 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %647, i32 %648, i32 0)
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %653, label %651

651:                                              ; preds = %646
  %652 = load i64, i64* @FALSE, align 8
  store i64 %652, i64* %3, align 8
  br label %722

653:                                              ; preds = %646
  %654 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %655 = load i32, i32* @DT_MIPS_BASE_ADDRESS, align 4
  %656 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %654, i32 %655, i32 0)
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %660, label %658

658:                                              ; preds = %653
  %659 = load i64, i64* @FALSE, align 8
  store i64 %659, i64* %3, align 8
  br label %722

660:                                              ; preds = %653
  %661 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %662 = load i32, i32* @DT_MIPS_LOCAL_GOTNO, align 4
  %663 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %661, i32 %662, i32 0)
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %667, label %665

665:                                              ; preds = %660
  %666 = load i64, i64* @FALSE, align 8
  store i64 %666, i64* %3, align 8
  br label %722

667:                                              ; preds = %660
  %668 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %669 = load i32, i32* @DT_MIPS_SYMTABNO, align 4
  %670 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %668, i32 %669, i32 0)
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %674, label %672

672:                                              ; preds = %667
  %673 = load i64, i64* @FALSE, align 8
  store i64 %673, i64* %3, align 8
  br label %722

674:                                              ; preds = %667
  %675 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %676 = load i32, i32* @DT_MIPS_UNREFEXTNO, align 4
  %677 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %675, i32 %676, i32 0)
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %681, label %679

679:                                              ; preds = %674
  %680 = load i64, i64* @FALSE, align 8
  store i64 %680, i64* %3, align 8
  br label %722

681:                                              ; preds = %674
  %682 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %683 = load i32, i32* @DT_MIPS_GOTSYM, align 4
  %684 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %682, i32 %683, i32 0)
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %688, label %686

686:                                              ; preds = %681
  %687 = load i64, i64* @FALSE, align 8
  store i64 %687, i64* %3, align 8
  br label %722

688:                                              ; preds = %681
  %689 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %690 = call i64 @IRIX_COMPAT(%struct.TYPE_20__* %689)
  %691 = load i64, i64* @ict_irix5, align 8
  %692 = icmp eq i64 %690, %691
  br i1 %692, label %693, label %700

693:                                              ; preds = %688
  %694 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %695 = load i32, i32* @DT_MIPS_HIPAGENO, align 4
  %696 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %694, i32 %695, i32 0)
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %700, label %698

698:                                              ; preds = %693
  %699 = load i64, i64* @FALSE, align 8
  store i64 %699, i64* %3, align 8
  br label %722

700:                                              ; preds = %693, %688
  %701 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %702 = call i64 @IRIX_COMPAT(%struct.TYPE_20__* %701)
  %703 = load i64, i64* @ict_irix6, align 8
  %704 = icmp eq i64 %702, %703
  br i1 %704, label %705, label %718

705:                                              ; preds = %700
  %706 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %707 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %708 = call i8* @MIPS_ELF_OPTIONS_SECTION_NAME(%struct.TYPE_20__* %707)
  %709 = call %struct.TYPE_21__* @bfd_get_section_by_name(%struct.TYPE_20__* %706, i8* %708)
  %710 = icmp ne %struct.TYPE_21__* %709, null
  br i1 %710, label %711, label %718

711:                                              ; preds = %705
  %712 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %713 = load i32, i32* @DT_MIPS_OPTIONS, align 4
  %714 = call i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info* %712, i32 %713, i32 0)
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %718, label %716

716:                                              ; preds = %711
  %717 = load i64, i64* @FALSE, align 8
  store i64 %717, i64* %3, align 8
  br label %722

718:                                              ; preds = %711, %705, %700
  br label %719

719:                                              ; preds = %718, %611
  br label %720

720:                                              ; preds = %719, %470
  %721 = load i64, i64* @TRUE, align 8
  store i64 %721, i64* %3, align 8
  br label %722

722:                                              ; preds = %720, %716, %698, %686, %679, %672, %665, %658, %651, %644, %636, %629, %622, %608, %601, %594, %579, %572, %565, %548, %534, %502, %486, %465, %440
  %723 = load i64, i64* %3, align 8
  ret i64 %723
}

declare dso_local %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_22__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.TYPE_21__* @bfd_get_section_by_name(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @ELF_DYNAMIC_INTERPRETER(%struct.TYPE_20__*) #1

declare dso_local i8* @bfd_get_section_name(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @MIPS_ELF_REL_DYN_NAME(%struct.bfd_link_info*) #1

declare dso_local %struct.mips_got_info* @mips_elf_got_info(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @MIPS_RESERVED_GOTNO(%struct.bfd_link_info*) #1

declare dso_local i32 @mips_elf_allocate_dynamic_relocations(%struct.TYPE_20__*, %struct.bfd_link_info*, i32) #1

declare dso_local i32 @MIPS_ELF_GOT_SIZE(%struct.TYPE_20__*) #1

declare dso_local i32 @mips_elf_resolve_final_got_entries(%struct.mips_got_info*) #1

declare dso_local i32 @htab_traverse(i32, i32, %struct.mips_elf_set_global_got_offset_arg*) #1

declare dso_local i32 @elf_link_hash_traverse(%struct.TYPE_22__*, i32, %struct.mips_elf_set_global_got_offset_arg*) #1

declare dso_local i8* @MIPS_ELF_STUB_SECTION_NAME(%struct.TYPE_20__*) #1

declare dso_local i64 @MIPS_ELF_RLD_MAP_SIZE(%struct.TYPE_20__*) #1

declare dso_local i64 @SGI_COMPAT(%struct.TYPE_20__*) #1

declare dso_local i8* @bfd_zalloc(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @MIPS_ELF_ADD_DYNAMIC_ENTRY(%struct.bfd_link_info*, i32, i32) #1

declare dso_local i64 @mips_elf_rel_dyn_section(%struct.bfd_link_info*, i64) #1

declare dso_local i64 @IRIX_COMPAT(%struct.TYPE_20__*) #1

declare dso_local i8* @MIPS_ELF_OPTIONS_SECTION_NAME(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
