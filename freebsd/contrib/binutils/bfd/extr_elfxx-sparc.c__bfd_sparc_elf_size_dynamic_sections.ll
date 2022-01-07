; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_size_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_size_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { %struct.TYPE_26__*, %struct.TYPE_39__* }
%struct.TYPE_26__ = type { i32, i8*, i32, i64, i32, %struct.TYPE_26__*, %struct.TYPE_26__* }
%struct.bfd_link_info = type { i32, %struct.TYPE_37__*, i64, i64, %struct.TYPE_39__* }
%struct.TYPE_37__ = type { i32 }
%struct._bfd_sparc_elf_link_hash_table = type { i32, %struct._bfd_sparc_elf_app_reg*, %struct.TYPE_30__, %struct.TYPE_36__*, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, %struct.TYPE_31__, %struct.TYPE_26__*, i64 }
%struct._bfd_sparc_elf_app_reg = type { i8*, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_39__* }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_31__ = type { i64, i32 }
%struct.TYPE_27__ = type { i32 }
%struct._bfd_sparc_elf_dyn_relocs = type { i32, %struct.TYPE_26__*, %struct._bfd_sparc_elf_dyn_relocs* }
%struct.elf_strtab_hash = type { i32 }
%struct.elf_link_hash_table = type { i32, %struct.elf_link_local_dynamic_entry*, %struct.elf_strtab_hash*, i64, %struct.TYPE_35__* }
%struct.elf_link_local_dynamic_entry = type { i32, %struct.elf_link_local_dynamic_entry*, %struct.TYPE_39__*, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_26__*, %struct._bfd_sparc_elf_dyn_relocs* }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }

@.str = private unnamed_addr constant [8 x i8] c".interp\00", align 1
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@SEC_READONLY = common dso_local global i32 0, align 4
@DF_TEXTREL = common dso_local global i32 0, align 4
@GOT_TLS_GD = common dso_local global i8 0, align 1
@GOT_TLS_IE = common dso_local global i8 0, align 1
@allocate_dynrelocs = common dso_local global i32 0, align 4
@SPARC_INSN_BYTES = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c".rela\00", align 1
@SEC_EXCLUDE = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DT_DEBUG = common dso_local global i32 0, align 4
@DT_PLTGOT = common dso_local global i32 0, align 4
@DT_PLTRELSZ = common dso_local global i32 0, align 4
@DT_PLTREL = common dso_local global i32 0, align 4
@DT_RELA = common dso_local global i32 0, align 4
@DT_JMPREL = common dso_local global i32 0, align 4
@DT_RELASZ = common dso_local global i32 0, align 4
@DT_RELAENT = common dso_local global i32 0, align 4
@readonly_dynrelocs = common dso_local global i32 0, align 4
@DT_TEXTREL = common dso_local global i32 0, align 4
@DT_SPARC_REGISTER = common dso_local global i32 0, align 4
@STT_REGISTER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_sparc_elf_size_dynamic_sections(%struct.TYPE_39__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_39__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct._bfd_sparc_elf_link_hash_table*, align 8
  %7 = alloca %struct.TYPE_39__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_39__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca %struct._bfd_sparc_elf_dyn_relocs*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct._bfd_sparc_elf_app_reg*, align 8
  %19 = alloca %struct.elf_strtab_hash*, align 8
  %20 = alloca %struct.elf_link_hash_table*, align 8
  %21 = alloca %struct.elf_link_local_dynamic_entry*, align 8
  %22 = alloca %struct.elf_link_local_dynamic_entry*, align 8
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %23 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %24 = call %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info* %23)
  store %struct._bfd_sparc_elf_link_hash_table* %24, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %25 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %26 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  store %struct.TYPE_39__* %28, %struct.TYPE_39__** %7, align 8
  %29 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %30 = icmp ne %struct.TYPE_39__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @BFD_ASSERT(i32 %31)
  %33 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %34 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %33)
  %35 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %2
  %39 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %40 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %45 = call %struct.TYPE_26__* @bfd_get_section_by_name(%struct.TYPE_39__* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_26__* %45, %struct.TYPE_26__** %8, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %47 = icmp ne %struct.TYPE_26__* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @BFD_ASSERT(i32 %48)
  %50 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %51 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %56 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %55, i32 0, i32 11
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %43, %38
  br label %62

62:                                               ; preds = %61, %2
  %63 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %64 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %63, i32 0, i32 4
  %65 = load %struct.TYPE_39__*, %struct.TYPE_39__** %64, align 8
  store %struct.TYPE_39__* %65, %struct.TYPE_39__** %9, align 8
  br label %66

66:                                               ; preds = %249, %62
  %67 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %68 = icmp ne %struct.TYPE_39__* %67, null
  br i1 %68, label %69, label %253

69:                                               ; preds = %66
  %70 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %71 = call i64 @bfd_get_flavour(%struct.TYPE_39__* %70)
  %72 = load i64, i64* @bfd_target_elf_flavour, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %249

75:                                               ; preds = %69
  %76 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %77, align 8
  store %struct.TYPE_26__* %78, %struct.TYPE_26__** %8, align 8
  br label %79

79:                                               ; preds = %151, %75
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %81 = icmp ne %struct.TYPE_26__* %80, null
  br i1 %81, label %82, label %155

82:                                               ; preds = %79
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %84 = call %struct.TYPE_29__* @elf_section_data(%struct.TYPE_26__* %83)
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 1
  %86 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %85, align 8
  store %struct._bfd_sparc_elf_dyn_relocs* %86, %struct._bfd_sparc_elf_dyn_relocs** %16, align 8
  br label %87

87:                                               ; preds = %146, %82
  %88 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %16, align 8
  %89 = icmp ne %struct._bfd_sparc_elf_dyn_relocs* %88, null
  br i1 %89, label %90, label %150

90:                                               ; preds = %87
  %91 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %16, align 8
  %92 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %91, i32 0, i32 1
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %92, align 8
  %94 = call i64 @bfd_is_abs_section(%struct.TYPE_26__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %90
  %97 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %16, align 8
  %98 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %97, i32 0, i32 1
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %100, align 8
  %102 = call i64 @bfd_is_abs_section(%struct.TYPE_26__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %145

105:                                              ; preds = %96, %90
  %106 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %16, align 8
  %107 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %144

110:                                              ; preds = %105
  %111 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %16, align 8
  %112 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %111, i32 0, i32 1
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %112, align 8
  %114 = call %struct.TYPE_29__* @elf_section_data(%struct.TYPE_26__* %113)
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %115, align 8
  store %struct.TYPE_26__* %116, %struct.TYPE_26__** %15, align 8
  %117 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %16, align 8
  %118 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %121 = call i32 @SPARC_ELF_RELA_BYTES(%struct._bfd_sparc_elf_link_hash_table* %120)
  %122 = mul nsw i32 %119, %121
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %16, align 8
  %128 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %127, i32 0, i32 1
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 6
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SEC_READONLY, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %110
  %138 = load i32, i32* @DF_TEXTREL, align 4
  %139 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %140 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %110
  br label %144

144:                                              ; preds = %143, %105
  br label %145

145:                                              ; preds = %144, %104
  br label %146

146:                                              ; preds = %145
  %147 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %16, align 8
  %148 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %147, i32 0, i32 2
  %149 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %148, align 8
  store %struct._bfd_sparc_elf_dyn_relocs* %149, %struct._bfd_sparc_elf_dyn_relocs** %16, align 8
  br label %87

150:                                              ; preds = %87
  br label %151

151:                                              ; preds = %150
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 5
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %153, align 8
  store %struct.TYPE_26__* %154, %struct.TYPE_26__** %8, align 8
  br label %79

155:                                              ; preds = %79
  %156 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %157 = call i64* @elf_local_got_refcounts(%struct.TYPE_39__* %156)
  store i64* %157, i64** %10, align 8
  %158 = load i64*, i64** %10, align 8
  %159 = icmp ne i64* %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  br label %249

161:                                              ; preds = %155
  %162 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %163 = call %struct.TYPE_28__* @elf_tdata(%struct.TYPE_39__* %162)
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 0
  store %struct.TYPE_27__* %164, %struct.TYPE_27__** %14, align 8
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %13, align 4
  %168 = load i64*, i64** %10, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  store i64* %171, i64** %11, align 8
  %172 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %173 = call i8* @_bfd_sparc_elf_local_got_tls_type(%struct.TYPE_39__* %172)
  store i8* %173, i8** %12, align 8
  %174 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %175 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %174, i32 0, i32 6
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %175, align 8
  store %struct.TYPE_26__* %176, %struct.TYPE_26__** %8, align 8
  %177 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %178 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %177, i32 0, i32 10
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %178, align 8
  store %struct.TYPE_26__* %179, %struct.TYPE_26__** %15, align 8
  br label %180

180:                                              ; preds = %243, %161
  %181 = load i64*, i64** %10, align 8
  %182 = load i64*, i64** %11, align 8
  %183 = icmp ult i64* %181, %182
  br i1 %183, label %184, label %248

184:                                              ; preds = %180
  %185 = load i64*, i64** %10, align 8
  %186 = load i64, i64* %185, align 8
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %188, label %240

188:                                              ; preds = %184
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = load i64*, i64** %10, align 8
  store i64 %192, i64* %193, align 8
  %194 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %195 = call i32 @SPARC_ELF_WORD_BYTES(%struct._bfd_sparc_elf_link_hash_table* %194)
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, %195
  store i32 %199, i32* %197, align 8
  %200 = load i8*, i8** %12, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = load i8, i8* @GOT_TLS_GD, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %188
  %207 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %208 = call i32 @SPARC_ELF_WORD_BYTES(%struct._bfd_sparc_elf_link_hash_table* %207)
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %206, %188
  %214 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %215 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %232, label %218

218:                                              ; preds = %213
  %219 = load i8*, i8** %12, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = load i8, i8* @GOT_TLS_GD, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %232, label %225

225:                                              ; preds = %218
  %226 = load i8*, i8** %12, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = load i8, i8* @GOT_TLS_IE, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %228, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %225, %218, %213
  %233 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %234 = call i32 @SPARC_ELF_RELA_BYTES(%struct._bfd_sparc_elf_link_hash_table* %233)
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = add nsw i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %232, %225
  br label %242

240:                                              ; preds = %184
  %241 = load i64*, i64** %10, align 8
  store i64 -1, i64* %241, align 8
  br label %242

242:                                              ; preds = %240, %239
  br label %243

243:                                              ; preds = %242
  %244 = load i64*, i64** %10, align 8
  %245 = getelementptr inbounds i64, i64* %244, i32 1
  store i64* %245, i64** %10, align 8
  %246 = load i8*, i8** %12, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %12, align 8
  br label %180

248:                                              ; preds = %180
  br label %249

249:                                              ; preds = %248, %160, %74
  %250 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_39__*, %struct.TYPE_39__** %251, align 8
  store %struct.TYPE_39__* %252, %struct.TYPE_39__** %9, align 8
  br label %66

253:                                              ; preds = %66
  %254 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %255 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %254, i32 0, i32 9
  %256 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp sgt i64 %257, 0
  br i1 %258, label %259, label %285

259:                                              ; preds = %253
  %260 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %261 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %260, i32 0, i32 6
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %266 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %265, i32 0, i32 9
  %267 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %266, i32 0, i32 1
  store i32 %264, i32* %267, align 8
  %268 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %269 = call i32 @SPARC_ELF_WORD_BYTES(%struct._bfd_sparc_elf_link_hash_table* %268)
  %270 = mul nsw i32 2, %269
  %271 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %272 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %271, i32 0, i32 6
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, %270
  store i32 %276, i32* %274, align 8
  %277 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %278 = call i32 @SPARC_ELF_RELA_BYTES(%struct._bfd_sparc_elf_link_hash_table* %277)
  %279 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %280 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %279, i32 0, i32 10
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = add nsw i32 %283, %278
  store i32 %284, i32* %282, align 8
  br label %289

285:                                              ; preds = %253
  %286 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %287 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %286, i32 0, i32 9
  %288 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %287, i32 0, i32 1
  store i32 -1, i32* %288, align 8
  br label %289

289:                                              ; preds = %285, %259
  %290 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %291 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %290, i32 0, i32 2
  %292 = load i32, i32* @allocate_dynrelocs, align 4
  %293 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %294 = ptrtoint %struct.bfd_link_info* %293 to i32
  %295 = call i32 @elf_link_hash_traverse(%struct.TYPE_30__* %291, i32 %292, i32 %294)
  %296 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %297 = call i64 @ABI_64_P(%struct.TYPE_39__* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %354, label %299

299:                                              ; preds = %289
  %300 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %301 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %300, i32 0, i32 8
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %354, label %304

304:                                              ; preds = %299
  %305 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %306 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %305)
  %307 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %306, i32 0, i32 3
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %354

310:                                              ; preds = %304
  %311 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %312 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %311, i32 0, i32 7
  %313 = load %struct.TYPE_26__*, %struct.TYPE_26__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = icmp sgt i32 %315, 0
  br i1 %316, label %317, label %326

317:                                              ; preds = %310
  %318 = load i32, i32* @SPARC_INSN_BYTES, align 4
  %319 = mul nsw i32 1, %318
  %320 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %321 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %320, i32 0, i32 7
  %322 = load %struct.TYPE_26__*, %struct.TYPE_26__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = add nsw i32 %324, %319
  store i32 %325, i32* %323, align 8
  br label %326

326:                                              ; preds = %317, %310
  %327 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %328 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %327, i32 0, i32 6
  %329 = load %struct.TYPE_26__*, %struct.TYPE_26__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp sge i32 %331, 4096
  br i1 %332, label %333, label %353

333:                                              ; preds = %326
  %334 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %335 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %334)
  %336 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %335, i32 0, i32 4
  %337 = load %struct.TYPE_35__*, %struct.TYPE_35__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %353

344:                                              ; preds = %333
  %345 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %346 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %345)
  %347 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %346, i32 0, i32 4
  %348 = load %struct.TYPE_35__*, %struct.TYPE_35__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %351, i32 0, i32 0
  store i32 4096, i32* %352, align 4
  br label %353

353:                                              ; preds = %344, %333, %326
  br label %354

354:                                              ; preds = %353, %304, %299, %289
  %355 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_26__*, %struct.TYPE_26__** %356, align 8
  store %struct.TYPE_26__* %357, %struct.TYPE_26__** %8, align 8
  br label %358

358:                                              ; preds = %447, %354
  %359 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %360 = icmp ne %struct.TYPE_26__* %359, null
  br i1 %360, label %361, label %451

361:                                              ; preds = %358
  %362 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %366 = and i32 %364, %365
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %361
  br label %447

369:                                              ; preds = %361
  %370 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %371 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %372 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %371, i32 0, i32 7
  %373 = load %struct.TYPE_26__*, %struct.TYPE_26__** %372, align 8
  %374 = icmp eq %struct.TYPE_26__* %370, %373
  br i1 %374, label %393, label %375

375:                                              ; preds = %369
  %376 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %377 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %378 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %377, i32 0, i32 6
  %379 = load %struct.TYPE_26__*, %struct.TYPE_26__** %378, align 8
  %380 = icmp eq %struct.TYPE_26__* %376, %379
  br i1 %380, label %393, label %381

381:                                              ; preds = %375
  %382 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %383 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %384 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %383, i32 0, i32 5
  %385 = load %struct.TYPE_26__*, %struct.TYPE_26__** %384, align 8
  %386 = icmp eq %struct.TYPE_26__* %382, %385
  br i1 %386, label %393, label %387

387:                                              ; preds = %381
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %389 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %390 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %389, i32 0, i32 4
  %391 = load %struct.TYPE_26__*, %struct.TYPE_26__** %390, align 8
  %392 = icmp eq %struct.TYPE_26__* %388, %391
  br i1 %392, label %393, label %394

393:                                              ; preds = %387, %381, %375, %369
  br label %411

394:                                              ; preds = %387
  %395 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %395, i32 0, i32 4
  %397 = load i32, i32* %396, align 8
  %398 = call i64 @CONST_STRNEQ(i32 %397, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %409

400:                                              ; preds = %394
  %401 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %408

405:                                              ; preds = %400
  %406 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %406, i32 0, i32 3
  store i64 0, i64* %407, align 8
  br label %408

408:                                              ; preds = %405, %400
  br label %410

409:                                              ; preds = %394
  br label %447

410:                                              ; preds = %408
  br label %411

411:                                              ; preds = %410, %393
  %412 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %413 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %422

416:                                              ; preds = %411
  %417 = load i32, i32* @SEC_EXCLUDE, align 4
  %418 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = or i32 %420, %417
  store i32 %421, i32* %419, align 8
  br label %447

422:                                              ; preds = %411
  %423 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %424 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %427 = and i32 %425, %426
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %422
  br label %447

430:                                              ; preds = %422
  %431 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %432 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %433 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = sext i32 %434 to i64
  %436 = call i64 @bfd_zalloc(%struct.TYPE_39__* %431, i64 %435)
  %437 = inttoptr i64 %436 to i8*
  %438 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %439 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %438, i32 0, i32 1
  store i8* %437, i8** %439, align 8
  %440 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %441 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %440, i32 0, i32 1
  %442 = load i8*, i8** %441, align 8
  %443 = icmp eq i8* %442, null
  br i1 %443, label %444, label %446

444:                                              ; preds = %430
  %445 = load i32, i32* @FALSE, align 4
  store i32 %445, i32* %3, align 4
  br label %705

446:                                              ; preds = %430
  br label %447

447:                                              ; preds = %446, %429, %416, %409, %368
  %448 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %448, i32 0, i32 5
  %450 = load %struct.TYPE_26__*, %struct.TYPE_26__** %449, align 8
  store %struct.TYPE_26__* %450, %struct.TYPE_26__** %8, align 8
  br label %358

451:                                              ; preds = %358
  %452 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %453 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %452)
  %454 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %453, i32 0, i32 3
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %703

457:                                              ; preds = %451
  %458 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %459 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %458, i32 0, i32 2
  %460 = load i64, i64* %459, align 8
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %470

462:                                              ; preds = %457
  %463 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %464 = load i32, i32* @DT_DEBUG, align 4
  %465 = call i32 (%struct.bfd_link_info*, i32, i32, ...) bitcast (i32 (...)* @_bfd_elf_add_dynamic_entry to i32 (%struct.bfd_link_info*, i32, i32, ...)*)(%struct.bfd_link_info* %463, i32 %464, i32 0)
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %469, label %467

467:                                              ; preds = %462
  %468 = load i32, i32* @FALSE, align 4
  store i32 %468, i32* %3, align 4
  br label %705

469:                                              ; preds = %462
  br label %470

470:                                              ; preds = %469, %457
  %471 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %472 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %471, i32 0, i32 3
  %473 = load %struct.TYPE_36__*, %struct.TYPE_36__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %473, i32 0, i32 0
  %475 = load i64, i64* %474, align 8
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %501

477:                                              ; preds = %470
  %478 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %479 = load i32, i32* @DT_PLTGOT, align 4
  %480 = call i32 (%struct.bfd_link_info*, i32, i32, ...) bitcast (i32 (...)* @_bfd_elf_add_dynamic_entry to i32 (%struct.bfd_link_info*, i32, i32, ...)*)(%struct.bfd_link_info* %478, i32 %479, i32 0)
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %498

482:                                              ; preds = %477
  %483 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %484 = load i32, i32* @DT_PLTRELSZ, align 4
  %485 = call i32 (%struct.bfd_link_info*, i32, i32, ...) bitcast (i32 (...)* @_bfd_elf_add_dynamic_entry to i32 (%struct.bfd_link_info*, i32, i32, ...)*)(%struct.bfd_link_info* %483, i32 %484, i32 0)
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %498

487:                                              ; preds = %482
  %488 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %489 = load i32, i32* @DT_PLTREL, align 4
  %490 = load i32, i32* @DT_RELA, align 4
  %491 = call i32 (%struct.bfd_link_info*, i32, i32, ...) bitcast (i32 (...)* @_bfd_elf_add_dynamic_entry to i32 (%struct.bfd_link_info*, i32, i32, ...)*)(%struct.bfd_link_info* %488, i32 %489, i32 %490)
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %498

493:                                              ; preds = %487
  %494 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %495 = load i32, i32* @DT_JMPREL, align 4
  %496 = call i32 (%struct.bfd_link_info*, i32, i32, ...) bitcast (i32 (...)* @_bfd_elf_add_dynamic_entry to i32 (%struct.bfd_link_info*, i32, i32, ...)*)(%struct.bfd_link_info* %494, i32 %495, i32 0)
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %500, label %498

498:                                              ; preds = %493, %487, %482, %477
  %499 = load i32, i32* @FALSE, align 4
  store i32 %499, i32* %3, align 4
  br label %705

500:                                              ; preds = %493
  br label %501

501:                                              ; preds = %500, %470
  %502 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %503 = load i32, i32* @DT_RELA, align 4
  %504 = call i32 (%struct.bfd_link_info*, i32, i32, ...) bitcast (i32 (...)* @_bfd_elf_add_dynamic_entry to i32 (%struct.bfd_link_info*, i32, i32, ...)*)(%struct.bfd_link_info* %502, i32 %503, i32 0)
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %518

506:                                              ; preds = %501
  %507 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %508 = load i32, i32* @DT_RELASZ, align 4
  %509 = call i32 (%struct.bfd_link_info*, i32, i32, ...) bitcast (i32 (...)* @_bfd_elf_add_dynamic_entry to i32 (%struct.bfd_link_info*, i32, i32, ...)*)(%struct.bfd_link_info* %507, i32 %508, i32 0)
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %518

511:                                              ; preds = %506
  %512 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %513 = load i32, i32* @DT_RELAENT, align 4
  %514 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %515 = call i32 @SPARC_ELF_RELA_BYTES(%struct._bfd_sparc_elf_link_hash_table* %514)
  %516 = call i32 (%struct.bfd_link_info*, i32, i32, ...) bitcast (i32 (...)* @_bfd_elf_add_dynamic_entry to i32 (%struct.bfd_link_info*, i32, i32, ...)*)(%struct.bfd_link_info* %512, i32 %513, i32 %515)
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %520, label %518

518:                                              ; preds = %511, %506, %501
  %519 = load i32, i32* @FALSE, align 4
  store i32 %519, i32* %3, align 4
  br label %705

520:                                              ; preds = %511
  %521 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %522 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 8
  %524 = load i32, i32* @DF_TEXTREL, align 4
  %525 = and i32 %523, %524
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %527, label %534

527:                                              ; preds = %520
  %528 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %529 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %528, i32 0, i32 2
  %530 = load i32, i32* @readonly_dynrelocs, align 4
  %531 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %532 = ptrtoint %struct.bfd_link_info* %531 to i32
  %533 = call i32 @elf_link_hash_traverse(%struct.TYPE_30__* %529, i32 %530, i32 %532)
  br label %534

534:                                              ; preds = %527, %520
  %535 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %536 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = load i32, i32* @DF_TEXTREL, align 4
  %539 = and i32 %537, %538
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %549

541:                                              ; preds = %534
  %542 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %543 = load i32, i32* @DT_TEXTREL, align 4
  %544 = call i32 (%struct.bfd_link_info*, i32, i32, ...) bitcast (i32 (...)* @_bfd_elf_add_dynamic_entry to i32 (%struct.bfd_link_info*, i32, i32, ...)*)(%struct.bfd_link_info* %542, i32 %543, i32 0)
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %548, label %546

546:                                              ; preds = %541
  %547 = load i32, i32* @FALSE, align 4
  store i32 %547, i32* %3, align 4
  br label %705

548:                                              ; preds = %541
  br label %549

549:                                              ; preds = %548, %534
  %550 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %551 = call i64 @ABI_64_P(%struct.TYPE_39__* %550)
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %702

553:                                              ; preds = %549
  %554 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %555 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %554)
  store %struct.elf_link_hash_table* %555, %struct.elf_link_hash_table** %20, align 8
  %556 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %557 = call %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info* %556)
  %558 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %557, i32 0, i32 1
  %559 = load %struct._bfd_sparc_elf_app_reg*, %struct._bfd_sparc_elf_app_reg** %558, align 8
  store %struct._bfd_sparc_elf_app_reg* %559, %struct._bfd_sparc_elf_app_reg** %18, align 8
  %560 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %20, align 8
  %561 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %560, i32 0, i32 2
  %562 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %561, align 8
  store %struct.elf_strtab_hash* %562, %struct.elf_strtab_hash** %19, align 8
  store i32 0, i32* %17, align 4
  br label %563

563:                                              ; preds = %698, %553
  %564 = load i32, i32* %17, align 4
  %565 = icmp slt i32 %564, 4
  br i1 %565, label %566, label %701

566:                                              ; preds = %563
  %567 = load %struct._bfd_sparc_elf_app_reg*, %struct._bfd_sparc_elf_app_reg** %18, align 8
  %568 = load i32, i32* %17, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct._bfd_sparc_elf_app_reg, %struct._bfd_sparc_elf_app_reg* %567, i64 %569
  %571 = getelementptr inbounds %struct._bfd_sparc_elf_app_reg, %struct._bfd_sparc_elf_app_reg* %570, i32 0, i32 0
  %572 = load i8*, i8** %571, align 8
  %573 = icmp ne i8* %572, null
  br i1 %573, label %574, label %697

574:                                              ; preds = %566
  %575 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %576 = load i32, i32* @DT_SPARC_REGISTER, align 4
  %577 = call i32 (%struct.bfd_link_info*, i32, i32, ...) bitcast (i32 (...)* @_bfd_elf_add_dynamic_entry to i32 (%struct.bfd_link_info*, i32, i32, ...)*)(%struct.bfd_link_info* %575, i32 %576, i32 0)
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %581, label %579

579:                                              ; preds = %574
  %580 = load i32, i32* @FALSE, align 4
  store i32 %580, i32* %3, align 4
  br label %705

581:                                              ; preds = %574
  %582 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %583 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %582, i32 0, i32 1
  %584 = load %struct.TYPE_37__*, %struct.TYPE_37__** %583, align 8
  %585 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %584, i32 0, i32 0
  %586 = call i64 @bfd_hash_allocate(i32* %585, i32 64)
  %587 = inttoptr i64 %586 to %struct.elf_link_local_dynamic_entry*
  store %struct.elf_link_local_dynamic_entry* %587, %struct.elf_link_local_dynamic_entry** %21, align 8
  %588 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %21, align 8
  %589 = icmp eq %struct.elf_link_local_dynamic_entry* %588, null
  br i1 %589, label %590, label %592

590:                                              ; preds = %581
  %591 = load i32, i32* @FALSE, align 4
  store i32 %591, i32* %3, align 4
  br label %705

592:                                              ; preds = %581
  %593 = load i32, i32* %17, align 4
  %594 = icmp slt i32 %593, 2
  br i1 %594, label %595, label %598

595:                                              ; preds = %592
  %596 = load i32, i32* %17, align 4
  %597 = add nsw i32 %596, 2
  br label %601

598:                                              ; preds = %592
  %599 = load i32, i32* %17, align 4
  %600 = add nsw i32 %599, 4
  br label %601

601:                                              ; preds = %598, %595
  %602 = phi i32 [ %597, %595 ], [ %600, %598 ]
  %603 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %21, align 8
  %604 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %603, i32 0, i32 3
  %605 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %604, i32 0, i32 0
  store i32 %602, i32* %605, align 8
  %606 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %21, align 8
  %607 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %606, i32 0, i32 3
  %608 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %607, i32 0, i32 5
  store i64 0, i64* %608, align 8
  %609 = load %struct._bfd_sparc_elf_app_reg*, %struct._bfd_sparc_elf_app_reg** %18, align 8
  %610 = load i32, i32* %17, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds %struct._bfd_sparc_elf_app_reg, %struct._bfd_sparc_elf_app_reg* %609, i64 %611
  %613 = getelementptr inbounds %struct._bfd_sparc_elf_app_reg, %struct._bfd_sparc_elf_app_reg* %612, i32 0, i32 0
  %614 = load i8*, i8** %613, align 8
  %615 = load i8, i8* %614, align 1
  %616 = sext i8 %615 to i32
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %631

618:                                              ; preds = %601
  %619 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %19, align 8
  %620 = load %struct._bfd_sparc_elf_app_reg*, %struct._bfd_sparc_elf_app_reg** %18, align 8
  %621 = load i32, i32* %17, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct._bfd_sparc_elf_app_reg, %struct._bfd_sparc_elf_app_reg* %620, i64 %622
  %624 = getelementptr inbounds %struct._bfd_sparc_elf_app_reg, %struct._bfd_sparc_elf_app_reg* %623, i32 0, i32 0
  %625 = load i8*, i8** %624, align 8
  %626 = load i32, i32* @FALSE, align 4
  %627 = call i64 @_bfd_elf_strtab_add(%struct.elf_strtab_hash* %619, i8* %625, i32 %626)
  %628 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %21, align 8
  %629 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %628, i32 0, i32 3
  %630 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %629, i32 0, i32 4
  store i64 %627, i64* %630, align 8
  br label %635

631:                                              ; preds = %601
  %632 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %21, align 8
  %633 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %632, i32 0, i32 3
  %634 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %633, i32 0, i32 4
  store i64 0, i64* %634, align 8
  br label %635

635:                                              ; preds = %631, %618
  %636 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %21, align 8
  %637 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %636, i32 0, i32 3
  %638 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %637, i32 0, i32 3
  store i64 0, i64* %638, align 8
  %639 = load %struct._bfd_sparc_elf_app_reg*, %struct._bfd_sparc_elf_app_reg** %18, align 8
  %640 = load i32, i32* %17, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds %struct._bfd_sparc_elf_app_reg, %struct._bfd_sparc_elf_app_reg* %639, i64 %641
  %643 = getelementptr inbounds %struct._bfd_sparc_elf_app_reg, %struct._bfd_sparc_elf_app_reg* %642, i32 0, i32 2
  %644 = load i32, i32* %643, align 4
  %645 = load i32, i32* @STT_REGISTER, align 4
  %646 = call i32 @ELF_ST_INFO(i32 %644, i32 %645)
  %647 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %21, align 8
  %648 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %647, i32 0, i32 3
  %649 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %648, i32 0, i32 2
  store i32 %646, i32* %649, align 8
  %650 = load %struct._bfd_sparc_elf_app_reg*, %struct._bfd_sparc_elf_app_reg** %18, align 8
  %651 = load i32, i32* %17, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds %struct._bfd_sparc_elf_app_reg, %struct._bfd_sparc_elf_app_reg* %650, i64 %652
  %654 = getelementptr inbounds %struct._bfd_sparc_elf_app_reg, %struct._bfd_sparc_elf_app_reg* %653, i32 0, i32 1
  %655 = load i32, i32* %654, align 8
  %656 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %21, align 8
  %657 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %656, i32 0, i32 3
  %658 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %657, i32 0, i32 1
  store i32 %655, i32* %658, align 4
  %659 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %21, align 8
  %660 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %659, i32 0, i32 1
  store %struct.elf_link_local_dynamic_entry* null, %struct.elf_link_local_dynamic_entry** %660, align 8
  %661 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %662 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %21, align 8
  %663 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %662, i32 0, i32 2
  store %struct.TYPE_39__* %661, %struct.TYPE_39__** %663, align 8
  %664 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %21, align 8
  %665 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %664, i32 0, i32 0
  store i32 -1, i32* %665, align 8
  %666 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %20, align 8
  %667 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %666, i32 0, i32 1
  %668 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %667, align 8
  %669 = icmp eq %struct.elf_link_local_dynamic_entry* %668, null
  br i1 %669, label %670, label %674

670:                                              ; preds = %635
  %671 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %21, align 8
  %672 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %20, align 8
  %673 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %672, i32 0, i32 1
  store %struct.elf_link_local_dynamic_entry* %671, %struct.elf_link_local_dynamic_entry** %673, align 8
  br label %692

674:                                              ; preds = %635
  %675 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %20, align 8
  %676 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %675, i32 0, i32 1
  %677 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %676, align 8
  store %struct.elf_link_local_dynamic_entry* %677, %struct.elf_link_local_dynamic_entry** %22, align 8
  br label %678

678:                                              ; preds = %684, %674
  %679 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %22, align 8
  %680 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %679, i32 0, i32 1
  %681 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %680, align 8
  %682 = icmp ne %struct.elf_link_local_dynamic_entry* %681, null
  br i1 %682, label %683, label %688

683:                                              ; preds = %678
  br label %684

684:                                              ; preds = %683
  %685 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %22, align 8
  %686 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %685, i32 0, i32 1
  %687 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %686, align 8
  store %struct.elf_link_local_dynamic_entry* %687, %struct.elf_link_local_dynamic_entry** %22, align 8
  br label %678

688:                                              ; preds = %678
  %689 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %21, align 8
  %690 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %22, align 8
  %691 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %690, i32 0, i32 1
  store %struct.elf_link_local_dynamic_entry* %689, %struct.elf_link_local_dynamic_entry** %691, align 8
  br label %692

692:                                              ; preds = %688, %670
  %693 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %20, align 8
  %694 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %693, i32 0, i32 0
  %695 = load i32, i32* %694, align 8
  %696 = add nsw i32 %695, 1
  store i32 %696, i32* %694, align 8
  br label %697

697:                                              ; preds = %692, %566
  br label %698

698:                                              ; preds = %697
  %699 = load i32, i32* %17, align 4
  %700 = add nsw i32 %699, 1
  store i32 %700, i32* %17, align 4
  br label %563

701:                                              ; preds = %563
  br label %702

702:                                              ; preds = %701, %549
  br label %703

703:                                              ; preds = %702, %451
  %704 = load i32, i32* @TRUE, align 4
  store i32 %704, i32* %3, align 4
  br label %705

705:                                              ; preds = %703, %590, %579, %546, %518, %498, %467, %444
  %706 = load i32, i32* %3, align 4
  ret i32 %706
}

declare dso_local %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_26__* @bfd_get_section_by_name(%struct.TYPE_39__*, i8*) #1

declare dso_local i64 @bfd_get_flavour(%struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_29__* @elf_section_data(%struct.TYPE_26__*) #1

declare dso_local i64 @bfd_is_abs_section(%struct.TYPE_26__*) #1

declare dso_local i32 @SPARC_ELF_RELA_BYTES(%struct._bfd_sparc_elf_link_hash_table*) #1

declare dso_local i64* @elf_local_got_refcounts(%struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_28__* @elf_tdata(%struct.TYPE_39__*) #1

declare dso_local i8* @_bfd_sparc_elf_local_got_tls_type(%struct.TYPE_39__*) #1

declare dso_local i32 @SPARC_ELF_WORD_BYTES(%struct._bfd_sparc_elf_link_hash_table*) #1

declare dso_local i32 @elf_link_hash_traverse(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i64 @ABI_64_P(%struct.TYPE_39__*) #1

declare dso_local i64 @CONST_STRNEQ(i32, i8*) #1

declare dso_local i64 @bfd_zalloc(%struct.TYPE_39__*, i64) #1

declare dso_local i32 @_bfd_elf_add_dynamic_entry(...) #1

declare dso_local i64 @bfd_hash_allocate(i32*, i32) #1

declare dso_local i64 @_bfd_elf_strtab_add(%struct.elf_strtab_hash*, i8*, i32) #1

declare dso_local i32 @ELF_ST_INFO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
