; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_finish_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_finish_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_63__ = type { %struct.TYPE_64__* }
%struct.TYPE_64__ = type { i32, i32, i64, i32, %struct.TYPE_80__*, %struct.TYPE_73__* }
%struct.TYPE_80__ = type { i32, i32 }
%struct.TYPE_73__ = type { i32, i64 }
%struct.bfd_link_info = type { i32, i64 }
%struct.mips_got_info = type { i64, i64, i64, i64, %struct.mips_got_info*, %struct.TYPE_68__* }
%struct.TYPE_68__ = type { i64 }
%struct.mips_elf_link_hash_table = type { i32, i64, i32, %struct.TYPE_79__*, %struct.TYPE_75__* }
%struct.TYPE_79__ = type { i64 }
%struct.TYPE_75__ = type { i64, i64, %struct.TYPE_70__* }
%struct.TYPE_70__ = type { i64 }
%struct.TYPE_65__ = type { i32, %struct.TYPE_77__ }
%struct.TYPE_77__ = type { i32, i32 }
%struct.TYPE_66__ = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_74__ = type { i64, i32, %struct.TYPE_63__* }
%struct.TYPE_69__ = type { %struct.TYPE_67__ }
%struct.TYPE_67__ = type { %struct.mips_got_info* }
%struct.TYPE_71__ = type { %struct.TYPE_78__* }
%struct.TYPE_78__ = type { i32 (%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_80__*)*, i32 (%struct.TYPE_63__*, %struct.TYPE_80__*, %struct.TYPE_65__*)* }
%struct.TYPE_72__ = type { %struct.TYPE_76__ }
%struct.TYPE_76__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c".got\00", align 1
@RHF_NOTPOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c".dynsym\00", align 1
@DT_RELA = common dso_local global i64 0, align 8
@DF_TEXTREL = common dso_local global i32 0, align 4
@R_MIPS_REL32 = common dso_local global i32 0, align 4
@bfd_abs_section_ptr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c".compact_rel\00", align 1
@reldyn_sorting_bfd = common dso_local global %struct.TYPE_63__* null, align 8
@sort_dynamic_relocs_64 = common dso_local global i32 0, align 4
@sort_dynamic_relocs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_mips_elf_finish_dynamic_sections(%struct.TYPE_63__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_63__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_63__*, align 8
  %7 = alloca %struct.TYPE_64__*, align 8
  %8 = alloca %struct.TYPE_64__*, align 8
  %9 = alloca %struct.mips_got_info*, align 8
  %10 = alloca %struct.mips_got_info*, align 8
  %11 = alloca %struct.mips_elf_link_hash_table*, align 8
  %12 = alloca %struct.TYPE_80__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_65__, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_64__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca [3 x %struct.TYPE_80__], align 16
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_80__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_65__, align 4
  %27 = alloca %struct.TYPE_64__*, align 8
  %28 = alloca %struct.TYPE_64__*, align 8
  %29 = alloca %struct.TYPE_66__, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_63__* %0, %struct.TYPE_63__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %31 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %32 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %31)
  store %struct.mips_elf_link_hash_table* %32, %struct.mips_elf_link_hash_table** %11, align 8
  %33 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %34 = call %struct.TYPE_74__* @elf_hash_table(%struct.bfd_link_info* %33)
  %35 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_63__*, %struct.TYPE_63__** %35, align 8
  store %struct.TYPE_63__* %36, %struct.TYPE_63__** %6, align 8
  %37 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %38 = call %struct.TYPE_64__* @bfd_get_section_by_name(%struct.TYPE_63__* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_64__* %38, %struct.TYPE_64__** %7, align 8
  %39 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %40 = load i64, i64* @FALSE, align 8
  %41 = call %struct.TYPE_64__* @mips_elf_got_section(%struct.TYPE_63__* %39, i64 %40)
  store %struct.TYPE_64__* %41, %struct.TYPE_64__** %8, align 8
  %42 = load %struct.TYPE_64__*, %struct.TYPE_64__** %8, align 8
  %43 = icmp eq %struct.TYPE_64__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %2
  store %struct.mips_got_info* null, %struct.mips_got_info** %10, align 8
  store %struct.mips_got_info* null, %struct.mips_got_info** %9, align 8
  br label %67

45:                                               ; preds = %2
  %46 = load %struct.TYPE_64__*, %struct.TYPE_64__** %8, align 8
  %47 = call %struct.TYPE_69__* @mips_elf_section_data(%struct.TYPE_64__* %46)
  %48 = icmp ne %struct.TYPE_69__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @BFD_ASSERT(i32 %49)
  %51 = load %struct.TYPE_64__*, %struct.TYPE_64__** %8, align 8
  %52 = call %struct.TYPE_69__* @mips_elf_section_data(%struct.TYPE_64__* %51)
  %53 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %53, i32 0, i32 0
  %55 = load %struct.mips_got_info*, %struct.mips_got_info** %54, align 8
  store %struct.mips_got_info* %55, %struct.mips_got_info** %9, align 8
  %56 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %57 = icmp ne %struct.mips_got_info* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @BFD_ASSERT(i32 %58)
  %60 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %61 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %62 = call %struct.mips_got_info* @mips_elf_got_for_ibfd(%struct.mips_got_info* %60, %struct.TYPE_63__* %61)
  store %struct.mips_got_info* %62, %struct.mips_got_info** %10, align 8
  %63 = load %struct.mips_got_info*, %struct.mips_got_info** %10, align 8
  %64 = icmp ne %struct.mips_got_info* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @BFD_ASSERT(i32 %65)
  br label %67

67:                                               ; preds = %45, %44
  %68 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %69 = call %struct.TYPE_74__* @elf_hash_table(%struct.bfd_link_info* %68)
  %70 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %420

73:                                               ; preds = %67
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %74 = load %struct.TYPE_64__*, %struct.TYPE_64__** %7, align 8
  %75 = icmp ne %struct.TYPE_64__* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @BFD_ASSERT(i32 %76)
  %78 = load %struct.mips_got_info*, %struct.mips_got_info** %10, align 8
  %79 = icmp ne %struct.mips_got_info* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i32 @BFD_ASSERT(i32 %80)
  %82 = load %struct.TYPE_64__*, %struct.TYPE_64__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_80__*, %struct.TYPE_80__** %83, align 8
  store %struct.TYPE_80__* %84, %struct.TYPE_80__** %12, align 8
  br label %85

85:                                               ; preds = %402, %73
  %86 = load %struct.TYPE_80__*, %struct.TYPE_80__** %12, align 8
  %87 = load %struct.TYPE_64__*, %struct.TYPE_64__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_80__*, %struct.TYPE_80__** %88, align 8
  %90 = load %struct.TYPE_64__*, %struct.TYPE_64__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %89, i64 %93
  %95 = icmp ult %struct.TYPE_80__* %86, %94
  br i1 %95, label %96, label %408

96:                                               ; preds = %85
  %97 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %98 = call %struct.TYPE_71__* @get_elf_backend_data(%struct.TYPE_63__* %97)
  %99 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_78__*, %struct.TYPE_78__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %100, i32 0, i32 1
  %102 = load i32 (%struct.TYPE_63__*, %struct.TYPE_80__*, %struct.TYPE_65__*)*, i32 (%struct.TYPE_63__*, %struct.TYPE_80__*, %struct.TYPE_65__*)** %101, align 8
  %103 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %104 = load %struct.TYPE_80__*, %struct.TYPE_80__** %12, align 8
  %105 = call i32 %102(%struct.TYPE_63__* %103, %struct.TYPE_80__* %104, %struct.TYPE_65__* %15)
  %106 = load i64, i64* @TRUE, align 8
  store i64 %106, i64* %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %372 [
    i32 131, label %109
    i32 133, label %115
    i32 129, label %124
    i32 136, label %132
    i32 140, label %171
    i32 148, label %174
    i32 138, label %178
    i32 145, label %183
    i32 144, label %185
    i32 149, label %187
    i32 143, label %202
    i32 137, label %209
    i32 147, label %215
    i32 139, label %230
    i32 146, label %249
    i32 141, label %259
    i32 142, label %267
    i32 132, label %278
    i32 135, label %300
    i32 134, label %309
    i32 150, label %322
    i32 128, label %343
    i32 151, label %355
  ]

109:                                              ; preds = %96
  %110 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %111 = call i64 @MIPS_ELF_REL_SIZE(%struct.TYPE_63__* %110)
  %112 = trunc i64 %111 to i32
  %113 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  br label %374

115:                                              ; preds = %96
  %116 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %117 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @BFD_ASSERT(i32 %118)
  %120 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %121 = call i32 @MIPS_ELF_RELA_SIZE(%struct.TYPE_63__* %120)
  %122 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  br label %374

124:                                              ; preds = %96
  %125 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %126 = call %struct.TYPE_74__* @elf_hash_table(%struct.bfd_link_info* %125)
  %127 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @_bfd_elf_strtab_size(i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  br label %374

132:                                              ; preds = %96
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %133 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %134 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %132
  %138 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %139 = load i8*, i8** %16, align 8
  %140 = call %struct.TYPE_64__* @bfd_get_section_by_name(%struct.TYPE_63__* %138, i8* %139)
  store %struct.TYPE_64__* %140, %struct.TYPE_64__** %18, align 8
  %141 = load %struct.TYPE_64__*, %struct.TYPE_64__** %18, align 8
  %142 = icmp ne %struct.TYPE_64__* %141, null
  %143 = zext i1 %142 to i32
  %144 = call i32 @BFD_ASSERT(i32 %143)
  %145 = load %struct.TYPE_64__*, %struct.TYPE_64__** %18, align 8
  %146 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_73__*, %struct.TYPE_73__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_64__*, %struct.TYPE_64__** %18, align 8
  %151 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %149, %152
  %154 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  br label %170

156:                                              ; preds = %132
  %157 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %158 = load i8*, i8** %16, align 8
  %159 = call %struct.TYPE_64__* @bfd_get_section_by_name(%struct.TYPE_63__* %157, i8* %158)
  store %struct.TYPE_64__* %159, %struct.TYPE_64__** %18, align 8
  %160 = load %struct.TYPE_64__*, %struct.TYPE_64__** %18, align 8
  %161 = icmp ne %struct.TYPE_64__* %160, null
  %162 = zext i1 %161 to i32
  %163 = call i32 @BFD_ASSERT(i32 %162)
  %164 = load %struct.TYPE_64__*, %struct.TYPE_64__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %156, %137
  br label %374

171:                                              ; preds = %96
  %172 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 4
  br label %374

174:                                              ; preds = %96
  %175 = load i32, i32* @RHF_NOTPOT, align 4
  %176 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  br label %374

178:                                              ; preds = %96
  %179 = call i32 @time(i32* %20)
  %180 = load i32, i32* %20, align 4
  %181 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  br label %374

183:                                              ; preds = %96
  %184 = load i64, i64* @FALSE, align 8
  store i64 %184, i64* %19, align 8
  br label %374

185:                                              ; preds = %96
  %186 = load i64, i64* @FALSE, align 8
  store i64 %186, i64* %19, align 8
  br label %374

187:                                              ; preds = %96
  %188 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_64__*, %struct.TYPE_64__** %189, align 8
  store %struct.TYPE_64__* %190, %struct.TYPE_64__** %18, align 8
  %191 = load %struct.TYPE_64__*, %struct.TYPE_64__** %18, align 8
  %192 = icmp ne %struct.TYPE_64__* %191, null
  %193 = zext i1 %192 to i32
  %194 = call i32 @BFD_ASSERT(i32 %193)
  %195 = load %struct.TYPE_64__*, %struct.TYPE_64__** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = and i64 %197, -65536
  %199 = trunc i64 %198 to i32
  %200 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  br label %374

202:                                              ; preds = %96
  %203 = load %struct.mips_got_info*, %struct.mips_got_info** %10, align 8
  %204 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 4
  br label %374

209:                                              ; preds = %96
  %210 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %211 = call i32 @bfd_count_sections(%struct.TYPE_63__* %210)
  %212 = add nsw i32 %211, 1
  %213 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 4
  br label %374

215:                                              ; preds = %96
  %216 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %217 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %216, i32 0, i32 5
  %218 = load %struct.TYPE_68__*, %struct.TYPE_68__** %217, align 8
  %219 = icmp ne %struct.TYPE_68__* %218, null
  br i1 %219, label %220, label %229

220:                                              ; preds = %215
  %221 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %222 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %221, i32 0, i32 5
  %223 = load %struct.TYPE_68__*, %struct.TYPE_68__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = trunc i64 %225 to i32
  %227 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 4
  br label %374

229:                                              ; preds = %215
  br label %230

230:                                              ; preds = %96, %229
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  %231 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %232 = call i64 @MIPS_ELF_SYM_SIZE(%struct.TYPE_63__* %231)
  store i64 %232, i64* %17, align 8
  %233 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %234 = load i8*, i8** %16, align 8
  %235 = call %struct.TYPE_64__* @bfd_get_section_by_name(%struct.TYPE_63__* %233, i8* %234)
  store %struct.TYPE_64__* %235, %struct.TYPE_64__** %18, align 8
  %236 = load %struct.TYPE_64__*, %struct.TYPE_64__** %18, align 8
  %237 = icmp ne %struct.TYPE_64__* %236, null
  %238 = zext i1 %237 to i32
  %239 = call i32 @BFD_ASSERT(i32 %238)
  %240 = load %struct.TYPE_64__*, %struct.TYPE_64__** %18, align 8
  %241 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = load i64, i64* %17, align 8
  %245 = udiv i64 %243, %244
  %246 = trunc i64 %245 to i32
  %247 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 4
  br label %374

249:                                              ; preds = %96
  %250 = load %struct.mips_got_info*, %struct.mips_got_info** %10, align 8
  %251 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %254 = call i64 @MIPS_RESERVED_GOTNO(%struct.bfd_link_info* %253)
  %255 = sub nsw i64 %252, %254
  %256 = trunc i64 %255 to i32
  %257 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 4
  br label %374

259:                                              ; preds = %96
  %260 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %261 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %260)
  %262 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = trunc i64 %263 to i32
  %265 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  br label %374

267:                                              ; preds = %96
  %268 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %269 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %270 = call i8* @MIPS_ELF_OPTIONS_SECTION_NAME(%struct.TYPE_63__* %269)
  %271 = call %struct.TYPE_64__* @bfd_get_section_by_name(%struct.TYPE_63__* %268, i8* %270)
  store %struct.TYPE_64__* %271, %struct.TYPE_64__** %18, align 8
  %272 = load %struct.TYPE_64__*, %struct.TYPE_64__** %18, align 8
  %273 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = trunc i64 %274 to i32
  %276 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 4
  br label %374

278:                                              ; preds = %96
  %279 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %280 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @BFD_ASSERT(i32 %281)
  %283 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %284 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %283, i32 0, i32 4
  %285 = load %struct.TYPE_75__*, %struct.TYPE_75__** %284, align 8
  %286 = icmp ne %struct.TYPE_75__* %285, null
  br i1 %286, label %287, label %299

287:                                              ; preds = %278
  %288 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %289 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %288, i32 0, i32 4
  %290 = load %struct.TYPE_75__*, %struct.TYPE_75__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = sub nsw i64 %296, %292
  %298 = trunc i64 %297 to i32
  store i32 %298, i32* %294, align 4
  br label %299

299:                                              ; preds = %287, %278
  br label %374

300:                                              ; preds = %96
  %301 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %302 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @BFD_ASSERT(i32 %303)
  %305 = load i64, i64* @DT_RELA, align 8
  %306 = trunc i64 %305 to i32
  %307 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %307, i32 0, i32 0
  store i32 %306, i32* %308, align 4
  br label %374

309:                                              ; preds = %96
  %310 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %311 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @BFD_ASSERT(i32 %312)
  %314 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %315 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %314, i32 0, i32 4
  %316 = load %struct.TYPE_75__*, %struct.TYPE_75__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = trunc i64 %318 to i32
  %320 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 4
  br label %374

322:                                              ; preds = %96
  %323 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %324 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @BFD_ASSERT(i32 %325)
  %327 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %328 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %327, i32 0, i32 4
  %329 = load %struct.TYPE_75__*, %struct.TYPE_75__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %329, i32 0, i32 2
  %331 = load %struct.TYPE_70__*, %struct.TYPE_70__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %335 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %334, i32 0, i32 4
  %336 = load %struct.TYPE_75__*, %struct.TYPE_75__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = add nsw i64 %333, %338
  %340 = trunc i64 %339 to i32
  %341 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %341, i32 0, i32 0
  store i32 %340, i32* %342, align 4
  br label %374

343:                                              ; preds = %96
  %344 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %345 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @DF_TEXTREL, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %354, label %350

350:                                              ; preds = %343
  %351 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %352 = call i32 @MIPS_ELF_DYN_SIZE(%struct.TYPE_63__* %351)
  store i32 %352, i32* %13, align 4
  %353 = load i64, i64* @FALSE, align 8
  store i64 %353, i64* %19, align 8
  br label %354

354:                                              ; preds = %350, %343
  br label %374

355:                                              ; preds = %96
  %356 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %357 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @DF_TEXTREL, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %369, label %362

362:                                              ; preds = %355
  %363 = load i32, i32* @DF_TEXTREL, align 4
  %364 = xor i32 %363, -1
  %365 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %15, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = and i32 %367, %364
  store i32 %368, i32* %366, align 4
  br label %371

369:                                              ; preds = %355
  %370 = load i64, i64* @FALSE, align 8
  store i64 %370, i64* %19, align 8
  br label %371

371:                                              ; preds = %369, %362
  br label %374

372:                                              ; preds = %96
  %373 = load i64, i64* @FALSE, align 8
  store i64 %373, i64* %19, align 8
  br label %374

374:                                              ; preds = %372, %371, %354, %322, %309, %300, %299, %267, %259, %249, %230, %220, %209, %202, %187, %185, %183, %178, %174, %171, %170, %124, %115, %109
  %375 = load i64, i64* %19, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %380, label %377

377:                                              ; preds = %374
  %378 = load i32, i32* %14, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %394

380:                                              ; preds = %377, %374
  %381 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %382 = call %struct.TYPE_71__* @get_elf_backend_data(%struct.TYPE_63__* %381)
  %383 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %382, i32 0, i32 0
  %384 = load %struct.TYPE_78__*, %struct.TYPE_78__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %384, i32 0, i32 0
  %386 = load i32 (%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_80__*)*, i32 (%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_80__*)** %385, align 8
  %387 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %388 = load %struct.TYPE_80__*, %struct.TYPE_80__** %12, align 8
  %389 = load i32, i32* %14, align 4
  %390 = sext i32 %389 to i64
  %391 = sub i64 0, %390
  %392 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %388, i64 %391
  %393 = call i32 %386(%struct.TYPE_63__* %387, %struct.TYPE_65__* %15, %struct.TYPE_80__* %392)
  br label %394

394:                                              ; preds = %380, %377
  %395 = load i32, i32* %13, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %394
  %398 = load i32, i32* %13, align 4
  %399 = load i32, i32* %14, align 4
  %400 = add nsw i32 %399, %398
  store i32 %400, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %401

401:                                              ; preds = %397, %394
  br label %402

402:                                              ; preds = %401
  %403 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %404 = call i32 @MIPS_ELF_DYN_SIZE(%struct.TYPE_63__* %403)
  %405 = load %struct.TYPE_80__*, %struct.TYPE_80__** %12, align 8
  %406 = sext i32 %404 to i64
  %407 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %405, i64 %406
  store %struct.TYPE_80__* %407, %struct.TYPE_80__** %12, align 8
  br label %85

408:                                              ; preds = %85
  %409 = load i32, i32* %14, align 4
  %410 = icmp sgt i32 %409, 0
  br i1 %410, label %411, label %419

411:                                              ; preds = %408
  %412 = load %struct.TYPE_80__*, %struct.TYPE_80__** %12, align 8
  %413 = load i32, i32* %14, align 4
  %414 = sext i32 %413 to i64
  %415 = sub i64 0, %414
  %416 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %412, i64 %415
  %417 = load i32, i32* %14, align 4
  %418 = call i32 @memset(%struct.TYPE_80__* %416, i32 0, i32 %417)
  br label %419

419:                                              ; preds = %411, %408
  br label %420

420:                                              ; preds = %419, %67
  %421 = load %struct.TYPE_64__*, %struct.TYPE_64__** %8, align 8
  %422 = icmp ne %struct.TYPE_64__* %421, null
  br i1 %422, label %423, label %491

423:                                              ; preds = %420
  %424 = load %struct.TYPE_64__*, %struct.TYPE_64__** %8, align 8
  %425 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = icmp sgt i32 %426, 0
  br i1 %427, label %428, label %491

428:                                              ; preds = %423
  %429 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %430 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %467

433:                                              ; preds = %428
  %434 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %435 = load %struct.TYPE_64__*, %struct.TYPE_64__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.TYPE_64__*, %struct.TYPE_64__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %438, i32 0, i32 5
  %440 = load %struct.TYPE_73__*, %struct.TYPE_73__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = add nsw i32 %437, %442
  %444 = load %struct.TYPE_64__*, %struct.TYPE_64__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %444, i32 0, i32 4
  %446 = load %struct.TYPE_80__*, %struct.TYPE_80__** %445, align 8
  %447 = call i32 @MIPS_ELF_PUT_WORD(%struct.TYPE_63__* %434, i32 %443, %struct.TYPE_80__* %446)
  %448 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %449 = load %struct.TYPE_64__*, %struct.TYPE_64__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %449, i32 0, i32 4
  %451 = load %struct.TYPE_80__*, %struct.TYPE_80__** %450, align 8
  %452 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %453 = call i32 @MIPS_ELF_GOT_SIZE(%struct.TYPE_63__* %452)
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %451, i64 %454
  %456 = call i32 @MIPS_ELF_PUT_WORD(%struct.TYPE_63__* %448, i32 0, %struct.TYPE_80__* %455)
  %457 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %458 = load %struct.TYPE_64__*, %struct.TYPE_64__** %8, align 8
  %459 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %458, i32 0, i32 4
  %460 = load %struct.TYPE_80__*, %struct.TYPE_80__** %459, align 8
  %461 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %462 = call i32 @MIPS_ELF_GOT_SIZE(%struct.TYPE_63__* %461)
  %463 = mul nsw i32 2, %462
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %460, i64 %464
  %466 = call i32 @MIPS_ELF_PUT_WORD(%struct.TYPE_63__* %457, i32 0, %struct.TYPE_80__* %465)
  br label %482

467:                                              ; preds = %428
  %468 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %469 = load %struct.TYPE_64__*, %struct.TYPE_64__** %8, align 8
  %470 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %469, i32 0, i32 4
  %471 = load %struct.TYPE_80__*, %struct.TYPE_80__** %470, align 8
  %472 = call i32 @MIPS_ELF_PUT_WORD(%struct.TYPE_63__* %468, i32 0, %struct.TYPE_80__* %471)
  %473 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %474 = load %struct.TYPE_64__*, %struct.TYPE_64__** %8, align 8
  %475 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %474, i32 0, i32 4
  %476 = load %struct.TYPE_80__*, %struct.TYPE_80__** %475, align 8
  %477 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %478 = call i32 @MIPS_ELF_GOT_SIZE(%struct.TYPE_63__* %477)
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %476, i64 %479
  %481 = call i32 @MIPS_ELF_PUT_WORD(%struct.TYPE_63__* %473, i32 -2147483648, %struct.TYPE_80__* %480)
  br label %482

482:                                              ; preds = %467, %433
  %483 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %484 = call i32 @MIPS_ELF_GOT_SIZE(%struct.TYPE_63__* %483)
  %485 = load %struct.TYPE_64__*, %struct.TYPE_64__** %8, align 8
  %486 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %485, i32 0, i32 5
  %487 = load %struct.TYPE_73__*, %struct.TYPE_73__** %486, align 8
  %488 = call %struct.TYPE_72__* @elf_section_data(%struct.TYPE_73__* %487)
  %489 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %489, i32 0, i32 0
  store i32 %484, i32* %490, align 4
  br label %491

491:                                              ; preds = %482, %423, %420
  %492 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %493 = icmp ne %struct.mips_got_info* %492, null
  br i1 %493, label %494, label %604

494:                                              ; preds = %491
  %495 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %496 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %495, i32 0, i32 4
  %497 = load %struct.mips_got_info*, %struct.mips_got_info** %496, align 8
  %498 = icmp ne %struct.mips_got_info* %497, null
  br i1 %498, label %499, label %604

499:                                              ; preds = %494
  store i64 0, i64* %22, align 8
  %500 = getelementptr inbounds [3 x %struct.TYPE_80__], [3 x %struct.TYPE_80__]* %21, i64 0, i64 0
  %501 = call i32 @memset(%struct.TYPE_80__* %500, i32 0, i32 24)
  %502 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %503 = load i32, i32* @R_MIPS_REL32, align 4
  %504 = call i32 @ELF_R_INFO(%struct.TYPE_63__* %502, i32 0, i32 %503)
  %505 = getelementptr inbounds [3 x %struct.TYPE_80__], [3 x %struct.TYPE_80__]* %21, i64 0, i64 0
  %506 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %505, i32 0, i32 1
  store i32 %504, i32* %506, align 4
  %507 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %508 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %507, i32 0, i32 4
  %509 = load %struct.mips_got_info*, %struct.mips_got_info** %508, align 8
  store %struct.mips_got_info* %509, %struct.mips_got_info** %10, align 8
  br label %510

510:                                              ; preds = %599, %499
  %511 = load %struct.mips_got_info*, %struct.mips_got_info** %10, align 8
  %512 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %511, i32 0, i32 4
  %513 = load %struct.mips_got_info*, %struct.mips_got_info** %512, align 8
  %514 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %515 = icmp ne %struct.mips_got_info* %513, %514
  br i1 %515, label %516, label %603

516:                                              ; preds = %510
  %517 = load %struct.mips_got_info*, %struct.mips_got_info** %10, align 8
  %518 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %517, i32 0, i32 4
  %519 = load %struct.mips_got_info*, %struct.mips_got_info** %518, align 8
  %520 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %519, i32 0, i32 0
  %521 = load i64, i64* %520, align 8
  %522 = load %struct.mips_got_info*, %struct.mips_got_info** %10, align 8
  %523 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %522, i32 0, i32 4
  %524 = load %struct.mips_got_info*, %struct.mips_got_info** %523, align 8
  %525 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %524, i32 0, i32 1
  %526 = load i64, i64* %525, align 8
  %527 = add nsw i64 %521, %526
  %528 = load %struct.mips_got_info*, %struct.mips_got_info** %10, align 8
  %529 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %528, i32 0, i32 4
  %530 = load %struct.mips_got_info*, %struct.mips_got_info** %529, align 8
  %531 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %530, i32 0, i32 2
  %532 = load i64, i64* %531, align 8
  %533 = add nsw i64 %527, %532
  store i64 %533, i64* %23, align 8
  %534 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %535 = load %struct.TYPE_64__*, %struct.TYPE_64__** %8, align 8
  %536 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %535, i32 0, i32 4
  %537 = load %struct.TYPE_80__*, %struct.TYPE_80__** %536, align 8
  %538 = load i64, i64* %23, align 8
  %539 = add nsw i64 %538, 1
  store i64 %539, i64* %23, align 8
  %540 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %541 = call i32 @MIPS_ELF_GOT_SIZE(%struct.TYPE_63__* %540)
  %542 = sext i32 %541 to i64
  %543 = mul nsw i64 %538, %542
  %544 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %537, i64 %543
  %545 = call i32 @MIPS_ELF_PUT_WORD(%struct.TYPE_63__* %534, i32 0, %struct.TYPE_80__* %544)
  %546 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %547 = load %struct.TYPE_64__*, %struct.TYPE_64__** %8, align 8
  %548 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %547, i32 0, i32 4
  %549 = load %struct.TYPE_80__*, %struct.TYPE_80__** %548, align 8
  %550 = load i64, i64* %23, align 8
  %551 = add nsw i64 %550, 1
  store i64 %551, i64* %23, align 8
  %552 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %553 = call i32 @MIPS_ELF_GOT_SIZE(%struct.TYPE_63__* %552)
  %554 = sext i32 %553 to i64
  %555 = mul nsw i64 %550, %554
  %556 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %549, i64 %555
  %557 = call i32 @MIPS_ELF_PUT_WORD(%struct.TYPE_63__* %546, i32 -2147483648, %struct.TYPE_80__* %556)
  %558 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %559 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %558, i32 0, i32 1
  %560 = load i64, i64* %559, align 8
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %563, label %562

562:                                              ; preds = %516
  br label %599

563:                                              ; preds = %516
  br label %564

564:                                              ; preds = %593, %563
  %565 = load i64, i64* %23, align 8
  %566 = load %struct.mips_got_info*, %struct.mips_got_info** %10, align 8
  %567 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %566, i32 0, i32 3
  %568 = load i64, i64* %567, align 8
  %569 = icmp slt i64 %565, %568
  br i1 %569, label %570, label %598

570:                                              ; preds = %564
  %571 = load i64, i64* %23, align 8
  %572 = add nsw i64 %571, 1
  store i64 %572, i64* %23, align 8
  %573 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %574 = call i32 @MIPS_ELF_GOT_SIZE(%struct.TYPE_63__* %573)
  %575 = sext i32 %574 to i64
  %576 = mul nsw i64 %571, %575
  %577 = trunc i64 %576 to i32
  %578 = getelementptr inbounds [3 x %struct.TYPE_80__], [3 x %struct.TYPE_80__]* %21, i64 0, i64 2
  %579 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %578, i32 0, i32 0
  store i32 %577, i32* %579, align 16
  %580 = getelementptr inbounds [3 x %struct.TYPE_80__], [3 x %struct.TYPE_80__]* %21, i64 0, i64 1
  %581 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %580, i32 0, i32 0
  store i32 %577, i32* %581, align 8
  %582 = getelementptr inbounds [3 x %struct.TYPE_80__], [3 x %struct.TYPE_80__]* %21, i64 0, i64 0
  %583 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %582, i32 0, i32 0
  store i32 %577, i32* %583, align 16
  %584 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %585 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %586 = getelementptr inbounds [3 x %struct.TYPE_80__], [3 x %struct.TYPE_80__]* %21, i64 0, i64 0
  %587 = load i32, i32* @bfd_abs_section_ptr, align 4
  %588 = load %struct.TYPE_64__*, %struct.TYPE_64__** %8, align 8
  %589 = call i32 @mips_elf_create_dynamic_relocation(%struct.TYPE_63__* %584, %struct.bfd_link_info* %585, %struct.TYPE_80__* %586, i32* null, i32 %587, i32 0, i64* %22, %struct.TYPE_64__* %588)
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %593, label %591

591:                                              ; preds = %570
  %592 = load i64, i64* @FALSE, align 8
  store i64 %592, i64* %3, align 8
  br label %836

593:                                              ; preds = %570
  %594 = load i64, i64* %22, align 8
  %595 = icmp eq i64 %594, 0
  %596 = zext i1 %595 to i32
  %597 = call i32 @BFD_ASSERT(i32 %596)
  br label %564

598:                                              ; preds = %564
  br label %599

599:                                              ; preds = %598, %562
  %600 = load %struct.mips_got_info*, %struct.mips_got_info** %10, align 8
  %601 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %600, i32 0, i32 4
  %602 = load %struct.mips_got_info*, %struct.mips_got_info** %601, align 8
  store %struct.mips_got_info* %602, %struct.mips_got_info** %10, align 8
  br label %510

603:                                              ; preds = %510
  br label %604

604:                                              ; preds = %603, %494, %491
  %605 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %606 = call %struct.TYPE_74__* @elf_hash_table(%struct.bfd_link_info* %605)
  %607 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %606, i32 0, i32 0
  %608 = load i64, i64* %607, align 8
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %691

610:                                              ; preds = %604
  %611 = load %struct.TYPE_64__*, %struct.TYPE_64__** %7, align 8
  %612 = icmp ne %struct.TYPE_64__* %611, null
  %613 = zext i1 %612 to i32
  %614 = call i32 @BFD_ASSERT(i32 %613)
  %615 = load %struct.TYPE_64__*, %struct.TYPE_64__** %7, align 8
  %616 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %615, i32 0, i32 4
  %617 = load %struct.TYPE_80__*, %struct.TYPE_80__** %616, align 8
  store %struct.TYPE_80__* %617, %struct.TYPE_80__** %24, align 8
  br label %618

618:                                              ; preds = %684, %610
  %619 = load %struct.TYPE_80__*, %struct.TYPE_80__** %24, align 8
  %620 = load %struct.TYPE_64__*, %struct.TYPE_64__** %7, align 8
  %621 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %620, i32 0, i32 4
  %622 = load %struct.TYPE_80__*, %struct.TYPE_80__** %621, align 8
  %623 = load %struct.TYPE_64__*, %struct.TYPE_64__** %7, align 8
  %624 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %623, i32 0, i32 0
  %625 = load i32, i32* %624, align 8
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %622, i64 %626
  %628 = icmp ult %struct.TYPE_80__* %619, %627
  br i1 %628, label %629, label %690

629:                                              ; preds = %618
  %630 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %631 = call %struct.TYPE_71__* @get_elf_backend_data(%struct.TYPE_63__* %630)
  %632 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %631, i32 0, i32 0
  %633 = load %struct.TYPE_78__*, %struct.TYPE_78__** %632, align 8
  %634 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %633, i32 0, i32 1
  %635 = load i32 (%struct.TYPE_63__*, %struct.TYPE_80__*, %struct.TYPE_65__*)*, i32 (%struct.TYPE_63__*, %struct.TYPE_80__*, %struct.TYPE_65__*)** %634, align 8
  %636 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %637 = load %struct.TYPE_80__*, %struct.TYPE_80__** %24, align 8
  %638 = call i32 %635(%struct.TYPE_63__* %636, %struct.TYPE_80__* %637, %struct.TYPE_65__* %26)
  %639 = load i64, i64* @TRUE, align 8
  store i64 %639, i64* %25, align 8
  %640 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %26, i32 0, i32 0
  %641 = load i32, i32* %640, align 4
  switch i32 %641, label %668 [
    i32 130, label %642
  ]

642:                                              ; preds = %629
  %643 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %644 = load i64, i64* @FALSE, align 8
  %645 = call %struct.TYPE_64__* @mips_elf_rel_dyn_section(%struct.bfd_link_info* %643, i64 %644)
  store %struct.TYPE_64__* %645, %struct.TYPE_64__** %27, align 8
  %646 = load %struct.TYPE_64__*, %struct.TYPE_64__** %27, align 8
  %647 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %646, i32 0, i32 3
  %648 = load i32, i32* %647, align 8
  %649 = sext i32 %648 to i64
  %650 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %651 = call i64 @ABI_64_P(%struct.TYPE_63__* %650)
  %652 = icmp ne i64 %651, 0
  %653 = zext i1 %652 to i64
  %654 = select i1 %652, i64 4, i64 4
  %655 = mul i64 %649, %654
  %656 = trunc i64 %655 to i32
  %657 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %26, i32 0, i32 1
  %658 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %657, i32 0, i32 0
  store i32 %656, i32* %658, align 4
  %659 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %26, i32 0, i32 1
  %660 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %659, i32 0, i32 0
  %661 = load i32, i32* %660, align 4
  %662 = load %struct.TYPE_64__*, %struct.TYPE_64__** %27, align 8
  %663 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %662, i32 0, i32 5
  %664 = load %struct.TYPE_73__*, %struct.TYPE_73__** %663, align 8
  %665 = call %struct.TYPE_72__* @elf_section_data(%struct.TYPE_73__* %664)
  %666 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %665, i32 0, i32 0
  %667 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %666, i32 0, i32 1
  store i32 %661, i32* %667, align 4
  br label %670

668:                                              ; preds = %629
  %669 = load i64, i64* @FALSE, align 8
  store i64 %669, i64* %25, align 8
  br label %670

670:                                              ; preds = %668, %642
  %671 = load i64, i64* %25, align 8
  %672 = icmp ne i64 %671, 0
  br i1 %672, label %673, label %683

673:                                              ; preds = %670
  %674 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %675 = call %struct.TYPE_71__* @get_elf_backend_data(%struct.TYPE_63__* %674)
  %676 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %675, i32 0, i32 0
  %677 = load %struct.TYPE_78__*, %struct.TYPE_78__** %676, align 8
  %678 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %677, i32 0, i32 0
  %679 = load i32 (%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_80__*)*, i32 (%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_80__*)** %678, align 8
  %680 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %681 = load %struct.TYPE_80__*, %struct.TYPE_80__** %24, align 8
  %682 = call i32 %679(%struct.TYPE_63__* %680, %struct.TYPE_65__* %26, %struct.TYPE_80__* %681)
  br label %683

683:                                              ; preds = %673, %670
  br label %684

684:                                              ; preds = %683
  %685 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %686 = call i32 @MIPS_ELF_DYN_SIZE(%struct.TYPE_63__* %685)
  %687 = load %struct.TYPE_80__*, %struct.TYPE_80__** %24, align 8
  %688 = sext i32 %686 to i64
  %689 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %687, i64 %688
  store %struct.TYPE_80__* %689, %struct.TYPE_80__** %24, align 8
  br label %618

690:                                              ; preds = %618
  br label %691

691:                                              ; preds = %690, %604
  %692 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %693 = call i64 @SGI_COMPAT(%struct.TYPE_63__* %692)
  %694 = icmp ne i64 %693, 0
  br i1 %694, label %695, label %757

695:                                              ; preds = %691
  %696 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %697 = call %struct.TYPE_64__* @bfd_get_section_by_name(%struct.TYPE_63__* %696, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_64__* %697, %struct.TYPE_64__** %28, align 8
  %698 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %699 = icmp ne %struct.TYPE_64__* %698, null
  br i1 %699, label %700, label %756

700:                                              ; preds = %695
  %701 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %29, i32 0, i32 0
  store i32 1, i32* %701, align 8
  %702 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %703 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %702, i32 0, i32 3
  %704 = load i32, i32* %703, align 8
  %705 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %29, i32 0, i32 1
  store i32 %704, i32* %705, align 4
  %706 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %29, i32 0, i32 2
  store i32 2, i32* %706, align 8
  %707 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %708 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %707, i32 0, i32 5
  %709 = load %struct.TYPE_73__*, %struct.TYPE_73__** %708, align 8
  %710 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %709, i32 0, i32 1
  %711 = load i64, i64* %710, align 8
  %712 = add i64 %711, 4
  %713 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %29, i32 0, i32 5
  store i64 %712, i64* %713, align 8
  %714 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %29, i32 0, i32 4
  store i64 0, i64* %714, align 8
  %715 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %29, i32 0, i32 3
  store i64 0, i64* %715, align 8
  %716 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %717 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %718 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %717, i32 0, i32 4
  %719 = load %struct.TYPE_80__*, %struct.TYPE_80__** %718, align 8
  %720 = bitcast %struct.TYPE_80__* %719 to i32*
  %721 = call i32 @bfd_elf32_swap_compact_rel_out(%struct.TYPE_63__* %716, %struct.TYPE_66__* %29, i32* %720)
  %722 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %723 = load %struct.TYPE_63__*, %struct.TYPE_63__** %6, align 8
  %724 = call i8* @MIPS_ELF_STUB_SECTION_NAME(%struct.TYPE_63__* %723)
  %725 = call %struct.TYPE_64__* @bfd_get_section_by_name(%struct.TYPE_63__* %722, i8* %724)
  store %struct.TYPE_64__* %725, %struct.TYPE_64__** %28, align 8
  %726 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %727 = icmp ne %struct.TYPE_64__* %726, null
  br i1 %727, label %728, label %755

728:                                              ; preds = %700
  %729 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %730 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %729, i32 0, i32 0
  %731 = load i32, i32* %730, align 8
  %732 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %733 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %732, i32 0, i32 2
  %734 = load i32, i32* %733, align 8
  %735 = icmp sge i32 %731, %734
  %736 = zext i1 %735 to i32
  %737 = call i32 @BFD_ASSERT(i32 %736)
  %738 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %739 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %738, i32 0, i32 0
  %740 = load i32, i32* %739, align 8
  %741 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %742 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %741, i32 0, i32 2
  %743 = load i32, i32* %742, align 8
  %744 = sub nsw i32 %740, %743
  store i32 %744, i32* %30, align 4
  %745 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %746 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %745, i32 0, i32 4
  %747 = load %struct.TYPE_80__*, %struct.TYPE_80__** %746, align 8
  %748 = load i32, i32* %30, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %747, i64 %749
  %751 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %752 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %751, i32 0, i32 2
  %753 = load i32, i32* %752, align 8
  %754 = call i32 @memset(%struct.TYPE_80__* %750, i32 0, i32 %753)
  br label %755

755:                                              ; preds = %728, %700
  br label %756

756:                                              ; preds = %755, %695
  br label %757

757:                                              ; preds = %756, %691
  %758 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %759 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %758, i32 0, i32 0
  %760 = load i32, i32* %759, align 8
  %761 = icmp ne i32 %760, 0
  br i1 %761, label %808, label %762

762:                                              ; preds = %757
  %763 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %764 = load i64, i64* @FALSE, align 8
  %765 = call %struct.TYPE_64__* @mips_elf_rel_dyn_section(%struct.bfd_link_info* %763, i64 %764)
  store %struct.TYPE_64__* %765, %struct.TYPE_64__** %28, align 8
  %766 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %767 = icmp ne %struct.TYPE_64__* %766, null
  br i1 %767, label %768, label %807

768:                                              ; preds = %762
  %769 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %770 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %769, i32 0, i32 0
  %771 = load i32, i32* %770, align 8
  %772 = sext i32 %771 to i64
  %773 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %774 = call i64 @MIPS_ELF_REL_SIZE(%struct.TYPE_63__* %773)
  %775 = mul nsw i64 2, %774
  %776 = icmp sgt i64 %772, %775
  br i1 %776, label %777, label %807

777:                                              ; preds = %768
  %778 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  store %struct.TYPE_63__* %778, %struct.TYPE_63__** @reldyn_sorting_bfd, align 8
  %779 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %780 = call i64 @ABI_64_P(%struct.TYPE_63__* %779)
  %781 = icmp ne i64 %780, 0
  br i1 %781, label %782, label %794

782:                                              ; preds = %777
  %783 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %784 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %783, i32 0, i32 4
  %785 = load %struct.TYPE_80__*, %struct.TYPE_80__** %784, align 8
  %786 = bitcast %struct.TYPE_80__* %785 to i32*
  %787 = getelementptr inbounds i32, i32* %786, i64 1
  %788 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %789 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %788, i32 0, i32 3
  %790 = load i32, i32* %789, align 8
  %791 = sub nsw i32 %790, 1
  %792 = load i32, i32* @sort_dynamic_relocs_64, align 4
  %793 = call i32 @qsort(i32* %787, i32 %791, i32 4, i32 %792)
  br label %806

794:                                              ; preds = %777
  %795 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %796 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %795, i32 0, i32 4
  %797 = load %struct.TYPE_80__*, %struct.TYPE_80__** %796, align 8
  %798 = bitcast %struct.TYPE_80__* %797 to i32*
  %799 = getelementptr inbounds i32, i32* %798, i64 1
  %800 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %801 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %800, i32 0, i32 3
  %802 = load i32, i32* %801, align 8
  %803 = sub nsw i32 %802, 1
  %804 = load i32, i32* @sort_dynamic_relocs, align 4
  %805 = call i32 @qsort(i32* %799, i32 %803, i32 4, i32 %804)
  br label %806

806:                                              ; preds = %794, %782
  br label %807

807:                                              ; preds = %806, %768, %762
  br label %808

808:                                              ; preds = %807, %757
  %809 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %810 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %809, i32 0, i32 0
  %811 = load i32, i32* %810, align 8
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %813, label %834

813:                                              ; preds = %808
  %814 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %815 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %814, i32 0, i32 3
  %816 = load %struct.TYPE_79__*, %struct.TYPE_79__** %815, align 8
  %817 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %816, i32 0, i32 0
  %818 = load i64, i64* %817, align 8
  %819 = icmp sgt i64 %818, 0
  br i1 %819, label %820, label %834

820:                                              ; preds = %813
  %821 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %822 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %821, i32 0, i32 1
  %823 = load i64, i64* %822, align 8
  %824 = icmp ne i64 %823, 0
  br i1 %824, label %825, label %829

825:                                              ; preds = %820
  %826 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %827 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %828 = call i32 @mips_vxworks_finish_shared_plt(%struct.TYPE_63__* %826, %struct.bfd_link_info* %827)
  br label %833

829:                                              ; preds = %820
  %830 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %831 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %832 = call i32 @mips_vxworks_finish_exec_plt(%struct.TYPE_63__* %830, %struct.bfd_link_info* %831)
  br label %833

833:                                              ; preds = %829, %825
  br label %834

834:                                              ; preds = %833, %813, %808
  %835 = load i64, i64* @TRUE, align 8
  store i64 %835, i64* %3, align 8
  br label %836

836:                                              ; preds = %834, %591
  %837 = load i64, i64* %3, align 8
  ret i64 %837
}

declare dso_local %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_74__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_64__* @bfd_get_section_by_name(%struct.TYPE_63__*, i8*) #1

declare dso_local %struct.TYPE_64__* @mips_elf_got_section(%struct.TYPE_63__*, i64) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.TYPE_69__* @mips_elf_section_data(%struct.TYPE_64__*) #1

declare dso_local %struct.mips_got_info* @mips_elf_got_for_ibfd(%struct.mips_got_info*, %struct.TYPE_63__*) #1

declare dso_local %struct.TYPE_71__* @get_elf_backend_data(%struct.TYPE_63__*) #1

declare dso_local i64 @MIPS_ELF_REL_SIZE(%struct.TYPE_63__*) #1

declare dso_local i32 @MIPS_ELF_RELA_SIZE(%struct.TYPE_63__*) #1

declare dso_local i32 @_bfd_elf_strtab_size(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @bfd_count_sections(%struct.TYPE_63__*) #1

declare dso_local i64 @MIPS_ELF_SYM_SIZE(%struct.TYPE_63__*) #1

declare dso_local i64 @MIPS_RESERVED_GOTNO(%struct.bfd_link_info*) #1

declare dso_local i8* @MIPS_ELF_OPTIONS_SECTION_NAME(%struct.TYPE_63__*) #1

declare dso_local i32 @MIPS_ELF_DYN_SIZE(%struct.TYPE_63__*) #1

declare dso_local i32 @memset(%struct.TYPE_80__*, i32, i32) #1

declare dso_local i32 @MIPS_ELF_PUT_WORD(%struct.TYPE_63__*, i32, %struct.TYPE_80__*) #1

declare dso_local i32 @MIPS_ELF_GOT_SIZE(%struct.TYPE_63__*) #1

declare dso_local %struct.TYPE_72__* @elf_section_data(%struct.TYPE_73__*) #1

declare dso_local i32 @ELF_R_INFO(%struct.TYPE_63__*, i32, i32) #1

declare dso_local i32 @mips_elf_create_dynamic_relocation(%struct.TYPE_63__*, %struct.bfd_link_info*, %struct.TYPE_80__*, i32*, i32, i32, i64*, %struct.TYPE_64__*) #1

declare dso_local %struct.TYPE_64__* @mips_elf_rel_dyn_section(%struct.bfd_link_info*, i64) #1

declare dso_local i64 @ABI_64_P(%struct.TYPE_63__*) #1

declare dso_local i64 @SGI_COMPAT(%struct.TYPE_63__*) #1

declare dso_local i32 @bfd_elf32_swap_compact_rel_out(%struct.TYPE_63__*, %struct.TYPE_66__*, i32*) #1

declare dso_local i8* @MIPS_ELF_STUB_SECTION_NAME(%struct.TYPE_63__*) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

declare dso_local i32 @mips_vxworks_finish_shared_plt(%struct.TYPE_63__*, %struct.bfd_link_info*) #1

declare dso_local i32 @mips_vxworks_finish_exec_plt(%struct.TYPE_63__*, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
