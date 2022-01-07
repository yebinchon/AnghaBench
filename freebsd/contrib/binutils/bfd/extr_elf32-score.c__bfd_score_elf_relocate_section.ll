; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c__bfd_score_elf_relocate_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c__bfd_score_elf_relocate_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64, %struct.TYPE_78__*, i64, i64 }
%struct.TYPE_78__ = type { i32 (%struct.bfd_link_info*, i8*, i8*, %struct.TYPE_63__*, %struct.TYPE_64__*, i32)*, i32 (%struct.bfd_link_info*, i8*, %struct.TYPE_63__*, %struct.TYPE_64__*, i32, i32)*, i32 (%struct.bfd_link_info*, i32*, i8*, i32, i32, %struct.TYPE_63__*, %struct.TYPE_64__*, i32)* }
%struct.TYPE_63__ = type { %struct.TYPE_64__* }
%struct.TYPE_64__ = type { i32, i32, i32, %struct.TYPE_70__*, %struct.TYPE_64__* }
%struct.TYPE_70__ = type { i32 }
%struct.TYPE_68__ = type { i32, i64, i64 }
%struct.TYPE_66__ = type { i32, i32 }
%struct.TYPE_67__ = type { i64 }
%struct.elf_link_hash_entry = type { i32 }
%struct.elf_backend_data = type { i32 (%struct.TYPE_63__*, %struct.bfd_link_info.0*, %struct.TYPE_64__*)* }
%struct.bfd_link_info.0 = type opaque
%struct.TYPE_79__ = type { i64, i32, i32 }
%struct.score_elf_link_hash_entry = type { %struct.TYPE_77__ }
%struct.TYPE_77__ = type { %struct.TYPE_76__, i32 }
%struct.TYPE_76__ = type { i64, %struct.TYPE_75__, %struct.TYPE_74__ }
%struct.TYPE_75__ = type { i8* }
%struct.TYPE_74__ = type { %struct.TYPE_73__, %struct.TYPE_69__ }
%struct.TYPE_73__ = type { i32, %struct.TYPE_64__* }
%struct.TYPE_69__ = type { i64 }
%struct.TYPE_65__ = type { %struct.TYPE_79__* }
%struct.TYPE_72__ = type { i64 }
%struct.TYPE_71__ = type { %struct.TYPE_67__ }

@FALSE = common dso_local global i32 0, align 4
@SEC_EXCLUDE = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_MERGE = common dso_local global i32 0, align 4
@STT_SECTION = common dso_local global i64 0, align 8
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@GP_DISP_LABEL = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@RM_IGNORE = common dso_local global i64 0, align 8
@STV_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"_DYNAMIC_LINK\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@RM_GENERATE_ERROR = common dso_local global i64 0, align 8
@bfd_reloc_ok = common dso_local global i32 0, align 4
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"internal error: out of range error\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"internal error: unsupported relocation error\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"internal error: dangerous error\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"internal error: unknown error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_63__*, %struct.bfd_link_info*, %struct.TYPE_63__*, %struct.TYPE_64__*, i32*, %struct.TYPE_68__*, %struct.TYPE_66__*, %struct.TYPE_64__**)* @_bfd_score_elf_relocate_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bfd_score_elf_relocate_section(%struct.TYPE_63__* %0, %struct.bfd_link_info* %1, %struct.TYPE_63__* %2, %struct.TYPE_64__* %3, i32* %4, %struct.TYPE_68__* %5, %struct.TYPE_66__* %6, %struct.TYPE_64__** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_63__*, align 8
  %11 = alloca %struct.bfd_link_info*, align 8
  %12 = alloca %struct.TYPE_63__*, align 8
  %13 = alloca %struct.TYPE_64__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_68__*, align 8
  %16 = alloca %struct.TYPE_66__*, align 8
  %17 = alloca %struct.TYPE_64__**, align 8
  %18 = alloca %struct.TYPE_67__*, align 8
  %19 = alloca %struct.elf_link_hash_entry**, align 8
  %20 = alloca %struct.TYPE_68__*, align 8
  %21 = alloca %struct.TYPE_68__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_64__*, align 8
  %32 = alloca %struct.elf_backend_data*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_79__*, align 8
  %35 = alloca i64, align 8
  %36 = alloca %struct.TYPE_66__*, align 8
  %37 = alloca %struct.TYPE_64__*, align 8
  %38 = alloca %struct.score_elf_link_hash_entry*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.TYPE_65__, align 8
  %42 = alloca %struct.TYPE_64__*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i8*, align 8
  store %struct.TYPE_63__* %0, %struct.TYPE_63__** %10, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %11, align 8
  store %struct.TYPE_63__* %2, %struct.TYPE_63__** %12, align 8
  store %struct.TYPE_64__* %3, %struct.TYPE_64__** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.TYPE_68__* %5, %struct.TYPE_68__** %15, align 8
  store %struct.TYPE_66__* %6, %struct.TYPE_66__** %16, align 8
  store %struct.TYPE_64__** %7, %struct.TYPE_64__*** %17, align 8
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %29, align 4
  %48 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %49 = call %struct.TYPE_72__* @elf_hash_table(%struct.bfd_link_info* %48)
  %50 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %109

53:                                               ; preds = %8
  store i64 0, i64* %30, align 8
  %54 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %55 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %100

58:                                               ; preds = %53
  %59 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %60 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_63__* %59)
  store %struct.elf_backend_data* %60, %struct.elf_backend_data** %32, align 8
  %61 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_64__*, %struct.TYPE_64__** %62, align 8
  store %struct.TYPE_64__* %63, %struct.TYPE_64__** %31, align 8
  br label %64

64:                                               ; preds = %95, %58
  %65 = load %struct.TYPE_64__*, %struct.TYPE_64__** %31, align 8
  %66 = icmp ne %struct.TYPE_64__* %65, null
  br i1 %66, label %67, label %99

67:                                               ; preds = %64
  %68 = load %struct.TYPE_64__*, %struct.TYPE_64__** %31, align 8
  %69 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SEC_EXCLUDE, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %67
  %75 = load %struct.TYPE_64__*, %struct.TYPE_64__** %31, align 8
  %76 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SEC_ALLOC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = load %struct.elf_backend_data*, %struct.elf_backend_data** %32, align 8
  %83 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %82, i32 0, i32 0
  %84 = load i32 (%struct.TYPE_63__*, %struct.bfd_link_info.0*, %struct.TYPE_64__*)*, i32 (%struct.TYPE_63__*, %struct.bfd_link_info.0*, %struct.TYPE_64__*)** %83, align 8
  %85 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %86 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %87 = bitcast %struct.bfd_link_info* %86 to %struct.bfd_link_info.0*
  %88 = load %struct.TYPE_64__*, %struct.TYPE_64__** %31, align 8
  %89 = call i32 %84(%struct.TYPE_63__* %85, %struct.bfd_link_info.0* %87, %struct.TYPE_64__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %81
  %92 = load i64, i64* %30, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %30, align 8
  br label %94

94:                                               ; preds = %91, %81, %74, %67
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.TYPE_64__*, %struct.TYPE_64__** %31, align 8
  %97 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_64__*, %struct.TYPE_64__** %97, align 8
  store %struct.TYPE_64__* %98, %struct.TYPE_64__** %31, align 8
  br label %64

99:                                               ; preds = %64
  br label %100

100:                                              ; preds = %99, %53
  %101 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %102 = load i64, i64* %30, align 8
  %103 = add nsw i64 %102, 1
  %104 = call i32 @score_elf_sort_hash_table(%struct.bfd_link_info* %101, i64 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %9, align 4
  br label %841

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %8
  %110 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %111 = call %struct.TYPE_71__* @elf_tdata(%struct.TYPE_63__* %110)
  %112 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %111, i32 0, i32 0
  store %struct.TYPE_67__* %112, %struct.TYPE_67__** %18, align 8
  %113 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %114 = call i64 @elf_bad_symtab(%struct.TYPE_63__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %121

117:                                              ; preds = %109
  %118 = load %struct.TYPE_67__*, %struct.TYPE_67__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  br label %121

121:                                              ; preds = %117, %116
  %122 = phi i64 [ 0, %116 ], [ %120, %117 ]
  store i64 %122, i64* %28, align 8
  %123 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %124 = call %struct.elf_link_hash_entry** @elf_sym_hashes(%struct.TYPE_63__* %123)
  store %struct.elf_link_hash_entry** %124, %struct.elf_link_hash_entry*** %19, align 8
  %125 = load %struct.TYPE_68__*, %struct.TYPE_68__** %15, align 8
  store %struct.TYPE_68__* %125, %struct.TYPE_68__** %20, align 8
  %126 = load %struct.TYPE_68__*, %struct.TYPE_68__** %15, align 8
  %127 = load %struct.TYPE_64__*, %struct.TYPE_64__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %126, i64 %130
  store %struct.TYPE_68__* %131, %struct.TYPE_68__** %21, align 8
  br label %132

132:                                              ; preds = %836, %121
  %133 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %134 = load %struct.TYPE_68__*, %struct.TYPE_68__** %21, align 8
  %135 = icmp ult %struct.TYPE_68__* %133, %134
  br i1 %135, label %136, label %839

136:                                              ; preds = %132
  store i32 0, i32* %39, align 4
  %137 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @ELF32_R_SYM(i64 %139)
  store i64 %140, i64* %35, align 8
  %141 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @ELF32_R_TYPE(i64 %143)
  store i32 %144, i32* %33, align 4
  %145 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %146 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %147 = call i32 @_bfd_score_info_to_howto(%struct.TYPE_63__* %145, %struct.TYPE_65__* %41, %struct.TYPE_68__* %146)
  %148 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %41, i32 0, i32 0
  %149 = load %struct.TYPE_79__*, %struct.TYPE_79__** %148, align 8
  store %struct.TYPE_79__* %149, %struct.TYPE_79__** %34, align 8
  store %struct.score_elf_link_hash_entry* null, %struct.score_elf_link_hash_entry** %38, align 8
  store %struct.TYPE_66__* null, %struct.TYPE_66__** %36, align 8
  store %struct.TYPE_64__* null, %struct.TYPE_64__** %37, align 8
  %150 = load i64, i64* %35, align 8
  %151 = load i64, i64* %28, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %460

153:                                              ; preds = %136
  %154 = load %struct.TYPE_66__*, %struct.TYPE_66__** %16, align 8
  %155 = load i64, i64* %35, align 8
  %156 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %154, i64 %155
  store %struct.TYPE_66__* %156, %struct.TYPE_66__** %36, align 8
  %157 = load %struct.TYPE_64__**, %struct.TYPE_64__*** %17, align 8
  %158 = load i64, i64* %35, align 8
  %159 = getelementptr inbounds %struct.TYPE_64__*, %struct.TYPE_64__** %157, i64 %158
  %160 = load %struct.TYPE_64__*, %struct.TYPE_64__** %159, align 8
  store %struct.TYPE_64__* %160, %struct.TYPE_64__** %37, align 8
  %161 = load %struct.TYPE_64__*, %struct.TYPE_64__** %37, align 8
  %162 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_70__*, %struct.TYPE_70__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_64__*, %struct.TYPE_64__** %37, align 8
  %167 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %165, %168
  %170 = load %struct.TYPE_66__*, %struct.TYPE_66__** %36, align 8
  %171 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %169, %172
  store i32 %173, i32* %39, align 4
  %174 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %175 = load %struct.TYPE_67__*, %struct.TYPE_67__** %18, align 8
  %176 = load %struct.TYPE_66__*, %struct.TYPE_66__** %36, align 8
  %177 = load %struct.TYPE_64__*, %struct.TYPE_64__** %37, align 8
  %178 = call i8* @bfd_elf_sym_name(%struct.TYPE_63__* %174, %struct.TYPE_67__* %175, %struct.TYPE_66__* %176, %struct.TYPE_64__* %177)
  store i8* %178, i8** %22, align 8
  %179 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %180 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %459, label %183

183:                                              ; preds = %153
  %184 = load %struct.TYPE_64__*, %struct.TYPE_64__** %37, align 8
  %185 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @SEC_MERGE, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %459

190:                                              ; preds = %183
  %191 = load %struct.TYPE_66__*, %struct.TYPE_66__** %36, align 8
  %192 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @ELF_ST_TYPE(i32 %193)
  %195 = load i64, i64* @STT_SECTION, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %459

197:                                              ; preds = %190
  %198 = load i32, i32* %33, align 4
  switch i32 %198, label %382 [
    i32 134, label %199
    i32 133, label %200
    i32 135, label %318
  ]

199:                                              ; preds = %197
  br label %458

200:                                              ; preds = %197
  %201 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %202 = load i32*, i32** %14, align 8
  %203 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %204 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  %208 = getelementptr inbounds i32, i32* %207, i64 -4
  %209 = call i8* @bfd_get_32(%struct.TYPE_63__* %201, i32* %208)
  %210 = ptrtoint i8* %209 to i64
  store i64 %210, i64* %24, align 8
  %211 = load i64, i64* %24, align 8
  %212 = lshr i64 %211, 16
  %213 = and i64 %212, 3
  %214 = shl i64 %213, 15
  %215 = load i64, i64* %24, align 8
  %216 = and i64 %215, 32767
  %217 = or i64 %214, %216
  %218 = lshr i64 %217, 1
  store i64 %218, i64* %25, align 8
  %219 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %220 = load i32*, i32** %14, align 8
  %221 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %222 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %220, i64 %224
  %226 = call i8* @bfd_get_32(%struct.TYPE_63__* %219, i32* %225)
  %227 = ptrtoint i8* %226 to i32
  store i32 %227, i32* %44, align 4
  %228 = load i32, i32* %44, align 4
  %229 = ashr i32 %228, 16
  %230 = and i32 %229, 3
  %231 = shl i32 %230, 15
  %232 = load i32, i32* %44, align 4
  %233 = and i32 %232, 32767
  %234 = or i32 %231, %233
  %235 = ashr i32 %234, 1
  %236 = sext i32 %235 to i64
  store i64 %236, i64* %23, align 8
  %237 = load i64, i64* %25, align 8
  %238 = shl i64 %237, 16
  %239 = load i64, i64* %23, align 8
  %240 = and i64 %239, 65535
  %241 = or i64 %238, %240
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %43, align 4
  %243 = load %struct.TYPE_64__*, %struct.TYPE_64__** %37, align 8
  store %struct.TYPE_64__* %243, %struct.TYPE_64__** %42, align 8
  %244 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %245 = load %struct.TYPE_66__*, %struct.TYPE_66__** %36, align 8
  %246 = load i32, i32* %43, align 4
  %247 = call i32 @_bfd_elf_rel_local_sym(%struct.TYPE_63__* %244, %struct.TYPE_66__* %245, %struct.TYPE_64__** %42, i32 %246)
  store i32 %247, i32* %43, align 4
  %248 = load i32, i32* %39, align 4
  %249 = load i32, i32* %43, align 4
  %250 = sub nsw i32 %249, %248
  store i32 %250, i32* %43, align 4
  %251 = load %struct.TYPE_64__*, %struct.TYPE_64__** %42, align 8
  %252 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %251, i32 0, i32 3
  %253 = load %struct.TYPE_70__*, %struct.TYPE_70__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_64__*, %struct.TYPE_64__** %42, align 8
  %257 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = add nsw i32 %255, %258
  %260 = load i32, i32* %43, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %43, align 4
  %262 = load i32, i32* %43, align 4
  %263 = sext i32 %262 to i64
  store i64 %263, i64* %27, align 8
  %264 = load i64, i64* %27, align 8
  %265 = lshr i64 %264, 16
  %266 = shl i64 %265, 1
  store i64 %266, i64* %25, align 8
  %267 = load i64, i64* %24, align 8
  %268 = load %struct.TYPE_79__*, %struct.TYPE_79__** %34, align 8
  %269 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = xor i64 %270, -1
  %272 = and i64 %267, %271
  %273 = load i64, i64* %25, align 8
  %274 = and i64 %273, 32767
  %275 = or i64 %272, %274
  %276 = load i64, i64* %25, align 8
  %277 = shl i64 %276, 1
  %278 = and i64 %277, 196608
  %279 = or i64 %275, %278
  store i64 %279, i64* %26, align 8
  %280 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %281 = load i64, i64* %26, align 8
  %282 = trunc i64 %281 to i32
  %283 = load i32*, i32** %14, align 8
  %284 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %285 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %283, i64 %287
  %289 = getelementptr inbounds i32, i32* %288, i64 -4
  %290 = call i32 @bfd_put_32(%struct.TYPE_63__* %280, i32 %282, i32* %289)
  %291 = load i64, i64* %27, align 8
  %292 = and i64 %291, 65535
  %293 = shl i64 %292, 1
  store i64 %293, i64* %23, align 8
  %294 = load i32, i32* %44, align 4
  %295 = sext i32 %294 to i64
  %296 = load %struct.TYPE_79__*, %struct.TYPE_79__** %34, align 8
  %297 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = xor i64 %298, -1
  %300 = and i64 %295, %299
  %301 = load i64, i64* %23, align 8
  %302 = and i64 %301, 32767
  %303 = or i64 %300, %302
  %304 = load i64, i64* %23, align 8
  %305 = shl i64 %304, 1
  %306 = and i64 %305, 196608
  %307 = or i64 %303, %306
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %44, align 4
  %309 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %310 = load i32, i32* %44, align 4
  %311 = load i32*, i32** %14, align 8
  %312 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %313 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %311, i64 %315
  %317 = call i32 @bfd_put_32(%struct.TYPE_63__* %309, i32 %310, i32* %316)
  br label %458

318:                                              ; preds = %197
  %319 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %320 = load i32*, i32** %14, align 8
  %321 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %322 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %320, i64 %324
  %326 = call i8* @bfd_get_32(%struct.TYPE_63__* %319, i32* %325)
  %327 = ptrtoint i8* %326 to i32
  store i32 %327, i32* %44, align 4
  %328 = load i32, i32* %44, align 4
  %329 = ashr i32 %328, 16
  %330 = and i32 %329, 3
  %331 = shl i32 %330, 14
  %332 = load i32, i32* %44, align 4
  %333 = and i32 %332, 32767
  %334 = ashr i32 %333, 1
  %335 = or i32 %331, %334
  store i32 %335, i32* %43, align 4
  %336 = load %struct.TYPE_64__*, %struct.TYPE_64__** %37, align 8
  store %struct.TYPE_64__* %336, %struct.TYPE_64__** %42, align 8
  %337 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %338 = load %struct.TYPE_66__*, %struct.TYPE_66__** %36, align 8
  %339 = load i32, i32* %43, align 4
  %340 = call i32 @_bfd_elf_rel_local_sym(%struct.TYPE_63__* %337, %struct.TYPE_66__* %338, %struct.TYPE_64__** %42, i32 %339)
  %341 = load i32, i32* %39, align 4
  %342 = sub nsw i32 %340, %341
  store i32 %342, i32* %43, align 4
  %343 = load %struct.TYPE_64__*, %struct.TYPE_64__** %42, align 8
  %344 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %343, i32 0, i32 3
  %345 = load %struct.TYPE_70__*, %struct.TYPE_70__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_64__*, %struct.TYPE_64__** %42, align 8
  %349 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = add nsw i32 %347, %350
  %352 = load i32, i32* %43, align 4
  %353 = add nsw i32 %352, %351
  store i32 %353, i32* %43, align 4
  %354 = load i32, i32* %44, align 4
  %355 = sext i32 %354 to i64
  %356 = load %struct.TYPE_79__*, %struct.TYPE_79__** %34, align 8
  %357 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = xor i64 %358, -1
  %360 = and i64 %355, %359
  %361 = load i32, i32* %43, align 4
  %362 = and i32 %361, 16383
  %363 = shl i32 %362, 1
  %364 = sext i32 %363 to i64
  %365 = or i64 %360, %364
  %366 = load i32, i32* %43, align 4
  %367 = ashr i32 %366, 14
  %368 = and i32 %367, 3
  %369 = shl i32 %368, 16
  %370 = sext i32 %369 to i64
  %371 = or i64 %365, %370
  %372 = trunc i64 %371 to i32
  store i32 %372, i32* %44, align 4
  %373 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %374 = load i32, i32* %44, align 4
  %375 = load i32*, i32** %14, align 8
  %376 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %377 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %375, i64 %379
  %381 = call i32 @bfd_put_32(%struct.TYPE_63__* %373, i32 %374, i32* %380)
  br label %458

382:                                              ; preds = %197
  %383 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %384 = load i32*, i32** %14, align 8
  %385 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %386 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %384, i64 %388
  %390 = call i8* @bfd_get_32(%struct.TYPE_63__* %383, i32* %389)
  %391 = ptrtoint i8* %390 to i32
  store i32 %391, i32* %44, align 4
  %392 = load i32, i32* %44, align 4
  %393 = load %struct.TYPE_79__*, %struct.TYPE_79__** %34, align 8
  %394 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = and i32 %392, %395
  store i32 %396, i32* %43, align 4
  %397 = load i32, i32* %43, align 4
  %398 = load %struct.TYPE_79__*, %struct.TYPE_79__** %34, align 8
  %399 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = add nsw i32 %400, 1
  %402 = ashr i32 %401, 1
  %403 = and i32 %397, %402
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %415

405:                                              ; preds = %382
  store i32 -1, i32* %45, align 4
  %406 = load %struct.TYPE_79__*, %struct.TYPE_79__** %34, align 8
  %407 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = xor i32 %408, -1
  %410 = load i32, i32* %45, align 4
  %411 = and i32 %410, %409
  store i32 %411, i32* %45, align 4
  %412 = load i32, i32* %45, align 4
  %413 = load i32, i32* %43, align 4
  %414 = or i32 %413, %412
  store i32 %414, i32* %43, align 4
  br label %415

415:                                              ; preds = %405, %382
  %416 = load %struct.TYPE_64__*, %struct.TYPE_64__** %37, align 8
  store %struct.TYPE_64__* %416, %struct.TYPE_64__** %42, align 8
  %417 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %418 = load %struct.TYPE_66__*, %struct.TYPE_66__** %36, align 8
  %419 = load i32, i32* %43, align 4
  %420 = call i32 @_bfd_elf_rel_local_sym(%struct.TYPE_63__* %417, %struct.TYPE_66__* %418, %struct.TYPE_64__** %42, i32 %419)
  %421 = load i32, i32* %39, align 4
  %422 = sub nsw i32 %420, %421
  store i32 %422, i32* %43, align 4
  %423 = load %struct.TYPE_64__*, %struct.TYPE_64__** %42, align 8
  %424 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %423, i32 0, i32 3
  %425 = load %struct.TYPE_70__*, %struct.TYPE_70__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.TYPE_64__*, %struct.TYPE_64__** %42, align 8
  %429 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = add nsw i32 %427, %430
  %432 = load i32, i32* %43, align 4
  %433 = add nsw i32 %432, %431
  store i32 %433, i32* %43, align 4
  %434 = load i32, i32* %44, align 4
  %435 = sext i32 %434 to i64
  %436 = load %struct.TYPE_79__*, %struct.TYPE_79__** %34, align 8
  %437 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = xor i64 %438, -1
  %440 = and i64 %435, %439
  %441 = load i32, i32* %43, align 4
  %442 = sext i32 %441 to i64
  %443 = load %struct.TYPE_79__*, %struct.TYPE_79__** %34, align 8
  %444 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = and i64 %442, %445
  %447 = or i64 %440, %446
  %448 = trunc i64 %447 to i32
  store i32 %448, i32* %44, align 4
  %449 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %450 = load i32, i32* %44, align 4
  %451 = load i32*, i32** %14, align 8
  %452 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %453 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %451, i64 %455
  %457 = call i32 @bfd_put_32(%struct.TYPE_63__* %449, i32 %450, i32* %456)
  br label %458

458:                                              ; preds = %415, %318, %200, %199
  br label %459

459:                                              ; preds = %458, %190, %183, %153
  br label %669

460:                                              ; preds = %136
  %461 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %462 = call %struct.elf_link_hash_entry** @elf_sym_hashes(%struct.TYPE_63__* %461)
  %463 = load i64, i64* %35, align 8
  %464 = load i64, i64* %28, align 8
  %465 = sub i64 %463, %464
  %466 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %462, i64 %465
  %467 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %466, align 8
  %468 = bitcast %struct.elf_link_hash_entry* %467 to %struct.score_elf_link_hash_entry*
  store %struct.score_elf_link_hash_entry* %468, %struct.score_elf_link_hash_entry** %38, align 8
  br label %469

469:                                              ; preds = %487, %460
  %470 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %471 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = load i64, i64* @bfd_link_hash_indirect, align 8
  %476 = icmp eq i64 %474, %475
  br i1 %476, label %485, label %477

477:                                              ; preds = %469
  %478 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %479 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %480, i32 0, i32 0
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @bfd_link_hash_warning, align 8
  %484 = icmp eq i64 %482, %483
  br label %485

485:                                              ; preds = %477, %469
  %486 = phi i1 [ true, %469 ], [ %484, %477 ]
  br i1 %486, label %487, label %496

487:                                              ; preds = %485
  %488 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %489 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = inttoptr i64 %494 to %struct.score_elf_link_hash_entry*
  store %struct.score_elf_link_hash_entry* %495, %struct.score_elf_link_hash_entry** %38, align 8
  br label %469

496:                                              ; preds = %485
  %497 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %498 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %500, i32 0, i32 0
  %502 = load i8*, i8** %501, align 8
  store i8* %502, i8** %22, align 8
  %503 = load i8*, i8** %22, align 8
  %504 = load i8*, i8** @GP_DISP_LABEL, align 8
  %505 = call i64 @strcmp(i8* %503, i8* %504)
  %506 = icmp eq i64 %505, 0
  br i1 %506, label %507, label %516

507:                                              ; preds = %496
  %508 = load i32, i32* %33, align 4
  %509 = icmp ne i32 %508, 134
  br i1 %509, label %510, label %514

510:                                              ; preds = %507
  %511 = load i32, i32* %33, align 4
  %512 = icmp ne i32 %511, 133
  br i1 %512, label %513, label %514

513:                                              ; preds = %510
  store i32 131, i32* %9, align 4
  br label %841

514:                                              ; preds = %510, %507
  %515 = load i32, i32* @TRUE, align 4
  store i32 %515, i32* %29, align 4
  br label %668

516:                                              ; preds = %496
  %517 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %518 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %519, i32 0, i32 0
  %521 = load i64, i64* %520, align 8
  %522 = load i64, i64* @bfd_link_hash_defined, align 8
  %523 = icmp eq i64 %521, %522
  br i1 %523, label %532, label %524

524:                                              ; preds = %516
  %525 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %526 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %527, i32 0, i32 0
  %529 = load i64, i64* %528, align 8
  %530 = load i64, i64* @bfd_link_hash_defweak, align 8
  %531 = icmp eq i64 %529, %530
  br i1 %531, label %532, label %580

532:                                              ; preds = %524, %516
  %533 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %534 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %535, i32 0, i32 2
  %537 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %537, i32 0, i32 1
  %539 = load %struct.TYPE_64__*, %struct.TYPE_64__** %538, align 8
  %540 = icmp ne %struct.TYPE_64__* %539, null
  br i1 %540, label %541, label %580

541:                                              ; preds = %532
  %542 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %543 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %544, i32 0, i32 2
  %546 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %546, i32 0, i32 1
  %548 = load %struct.TYPE_64__*, %struct.TYPE_64__** %547, align 8
  store %struct.TYPE_64__* %548, %struct.TYPE_64__** %37, align 8
  %549 = load %struct.TYPE_64__*, %struct.TYPE_64__** %37, align 8
  %550 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %549, i32 0, i32 3
  %551 = load %struct.TYPE_70__*, %struct.TYPE_70__** %550, align 8
  %552 = icmp ne %struct.TYPE_70__* %551, null
  br i1 %552, label %553, label %571

553:                                              ; preds = %541
  %554 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %555 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %556, i32 0, i32 2
  %558 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %557, i32 0, i32 0
  %559 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = load %struct.TYPE_64__*, %struct.TYPE_64__** %37, align 8
  %562 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %561, i32 0, i32 3
  %563 = load %struct.TYPE_70__*, %struct.TYPE_70__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 4
  %566 = add nsw i32 %560, %565
  %567 = load %struct.TYPE_64__*, %struct.TYPE_64__** %37, align 8
  %568 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %567, i32 0, i32 2
  %569 = load i32, i32* %568, align 8
  %570 = add nsw i32 %566, %569
  store i32 %570, i32* %39, align 4
  br label %579

571:                                              ; preds = %541
  %572 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %573 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %574, i32 0, i32 2
  %576 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %575, i32 0, i32 0
  %577 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  store i32 %578, i32* %39, align 4
  br label %579

579:                                              ; preds = %571, %553
  br label %667

580:                                              ; preds = %532, %524
  %581 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %582 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %583, i32 0, i32 0
  %585 = load i64, i64* %584, align 8
  %586 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %587 = icmp eq i64 %585, %586
  br i1 %587, label %588, label %589

588:                                              ; preds = %580
  store i32 0, i32* %39, align 4
  br label %666

589:                                              ; preds = %580
  %590 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %591 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %590, i32 0, i32 0
  %592 = load i64, i64* %591, align 8
  %593 = load i64, i64* @RM_IGNORE, align 8
  %594 = icmp eq i64 %592, %593
  br i1 %594, label %595, label %604

595:                                              ; preds = %589
  %596 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %597 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %596, i32 0, i32 0
  %598 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %597, i32 0, i32 1
  %599 = load i32, i32* %598, align 8
  %600 = call i64 @ELF_ST_VISIBILITY(i32 %599)
  %601 = load i64, i64* @STV_DEFAULT, align 8
  %602 = icmp eq i64 %600, %601
  br i1 %602, label %603, label %604

603:                                              ; preds = %595
  store i32 0, i32* %39, align 4
  br label %665

604:                                              ; preds = %595, %589
  %605 = load i8*, i8** %22, align 8
  %606 = call i64 @strcmp(i8* %605, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %607 = icmp eq i64 %606, 0
  br i1 %607, label %608, label %621

608:                                              ; preds = %604
  %609 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %610 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %609, i32 0, i32 3
  %611 = load i64, i64* %610, align 8
  %612 = icmp ne i64 %611, 0
  %613 = xor i1 %612, true
  %614 = zext i1 %613 to i32
  %615 = call i32 @BFD_ASSERT(i32 %614)
  %616 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %617 = call i32* @bfd_get_section_by_name(%struct.TYPE_63__* %616, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %618 = icmp eq i32* %617, null
  %619 = zext i1 %618 to i32
  %620 = call i32 @BFD_ASSERT(i32 %619)
  store i32 0, i32* %39, align 4
  br label %664

621:                                              ; preds = %604
  %622 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %623 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %622, i32 0, i32 2
  %624 = load i64, i64* %623, align 8
  %625 = icmp ne i64 %624, 0
  br i1 %625, label %663, label %626

626:                                              ; preds = %621
  %627 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %628 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %627, i32 0, i32 1
  %629 = load %struct.TYPE_78__*, %struct.TYPE_78__** %628, align 8
  %630 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %629, i32 0, i32 1
  %631 = load i32 (%struct.bfd_link_info*, i8*, %struct.TYPE_63__*, %struct.TYPE_64__*, i32, i32)*, i32 (%struct.bfd_link_info*, i8*, %struct.TYPE_63__*, %struct.TYPE_64__*, i32, i32)** %630, align 8
  %632 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %633 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %634 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %633, i32 0, i32 0
  %635 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %634, i32 0, i32 0
  %636 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %635, i32 0, i32 1
  %637 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %636, i32 0, i32 0
  %638 = load i8*, i8** %637, align 8
  %639 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %640 = load %struct.TYPE_64__*, %struct.TYPE_64__** %13, align 8
  %641 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %642 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %641, i32 0, i32 0
  %643 = load i32, i32* %642, align 8
  %644 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %645 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %644, i32 0, i32 0
  %646 = load i64, i64* %645, align 8
  %647 = load i64, i64* @RM_GENERATE_ERROR, align 8
  %648 = icmp eq i64 %646, %647
  br i1 %648, label %656, label %649

649:                                              ; preds = %626
  %650 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %651 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %650, i32 0, i32 0
  %652 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %651, i32 0, i32 1
  %653 = load i32, i32* %652, align 8
  %654 = call i64 @ELF_ST_VISIBILITY(i32 %653)
  %655 = icmp ne i64 %654, 0
  br label %656

656:                                              ; preds = %649, %626
  %657 = phi i1 [ true, %626 ], [ %655, %649 ]
  %658 = zext i1 %657 to i32
  %659 = call i32 %631(%struct.bfd_link_info* %632, i8* %638, %struct.TYPE_63__* %639, %struct.TYPE_64__* %640, i32 %643, i32 %658)
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %662, label %661

661:                                              ; preds = %656
  store i32 128, i32* %9, align 4
  br label %841

662:                                              ; preds = %656
  store i32 0, i32* %39, align 4
  br label %663

663:                                              ; preds = %662, %621
  br label %664

664:                                              ; preds = %663, %608
  br label %665

665:                                              ; preds = %664, %603
  br label %666

666:                                              ; preds = %665, %588
  br label %667

667:                                              ; preds = %666, %579
  br label %668

668:                                              ; preds = %667, %514
  br label %669

669:                                              ; preds = %668, %459
  %670 = load %struct.TYPE_64__*, %struct.TYPE_64__** %37, align 8
  %671 = icmp ne %struct.TYPE_64__* %670, null
  br i1 %671, label %672, label %690

672:                                              ; preds = %669
  %673 = load %struct.TYPE_64__*, %struct.TYPE_64__** %37, align 8
  %674 = call i64 @elf_discarded_section(%struct.TYPE_64__* %673)
  %675 = icmp ne i64 %674, 0
  br i1 %675, label %676, label %690

676:                                              ; preds = %672
  %677 = load %struct.TYPE_79__*, %struct.TYPE_79__** %34, align 8
  %678 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %679 = load i32*, i32** %14, align 8
  %680 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %681 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %680, i32 0, i32 0
  %682 = load i32, i32* %681, align 8
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i32, i32* %679, i64 %683
  %685 = call i32 @_bfd_clear_contents(%struct.TYPE_79__* %677, %struct.TYPE_63__* %678, i32* %684)
  %686 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %687 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %686, i32 0, i32 2
  store i64 0, i64* %687, align 8
  %688 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %689 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %688, i32 0, i32 1
  store i64 0, i64* %689, align 8
  br label %836

690:                                              ; preds = %672, %669
  %691 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %692 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %691, i32 0, i32 2
  %693 = load i64, i64* %692, align 8
  %694 = icmp ne i64 %693, 0
  br i1 %694, label %695, label %719

695:                                              ; preds = %690
  %696 = load %struct.TYPE_66__*, %struct.TYPE_66__** %36, align 8
  %697 = icmp ne %struct.TYPE_66__* %696, null
  br i1 %697, label %698, label %718

698:                                              ; preds = %695
  %699 = load %struct.TYPE_66__*, %struct.TYPE_66__** %36, align 8
  %700 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %699, i32 0, i32 1
  %701 = load i32, i32* %700, align 4
  %702 = call i64 @ELF_ST_TYPE(i32 %701)
  %703 = load i64, i64* @STT_SECTION, align 8
  %704 = icmp eq i64 %702, %703
  br i1 %704, label %705, label %718

705:                                              ; preds = %698
  %706 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %707 = load i32*, i32** %14, align 8
  %708 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %709 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %708, i32 0, i32 0
  %710 = load i32, i32* %709, align 8
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds i32, i32* %707, i64 %711
  %713 = load %struct.TYPE_79__*, %struct.TYPE_79__** %34, align 8
  %714 = load %struct.TYPE_64__*, %struct.TYPE_64__** %37, align 8
  %715 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %714, i32 0, i32 2
  %716 = load i32, i32* %715, align 8
  %717 = call i32 @score_elf_add_to_rel(%struct.TYPE_63__* %706, i32* %712, %struct.TYPE_79__* %713, i32 %716)
  br label %718

718:                                              ; preds = %705, %698, %695
  br label %836

719:                                              ; preds = %690
  %720 = load %struct.TYPE_79__*, %struct.TYPE_79__** %34, align 8
  %721 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %722 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %723 = load %struct.TYPE_64__*, %struct.TYPE_64__** %13, align 8
  %724 = load i32*, i32** %14, align 8
  %725 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %726 = load %struct.TYPE_68__*, %struct.TYPE_68__** %15, align 8
  %727 = load i32, i32* %39, align 4
  %728 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %729 = load i8*, i8** %22, align 8
  %730 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %731 = icmp ne %struct.score_elf_link_hash_entry* %730, null
  br i1 %731, label %732, label %740

732:                                              ; preds = %719
  %733 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %734 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %733, i32 0, i32 0
  %735 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %734, i32 0, i32 0
  %736 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %735, i32 0, i32 0
  %737 = load i64, i64* %736, align 8
  %738 = trunc i64 %737 to i32
  %739 = call i64 @ELF_ST_TYPE(i32 %738)
  br label %745

740:                                              ; preds = %719
  %741 = load %struct.TYPE_66__*, %struct.TYPE_66__** %36, align 8
  %742 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %741, i32 0, i32 1
  %743 = load i32, i32* %742, align 4
  %744 = call i64 @ELF_ST_TYPE(i32 %743)
  br label %745

745:                                              ; preds = %740, %732
  %746 = phi i64 [ %739, %732 ], [ %744, %740 ]
  %747 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %748 = load %struct.TYPE_64__**, %struct.TYPE_64__*** %17, align 8
  %749 = load i32, i32* %29, align 4
  %750 = call i32 @score_elf_final_link_relocate(%struct.TYPE_79__* %720, %struct.TYPE_63__* %721, %struct.TYPE_63__* %722, %struct.TYPE_64__* %723, i32* %724, %struct.TYPE_68__* %725, %struct.TYPE_68__* %726, i32 %727, %struct.bfd_link_info* %728, i8* %729, i64 %746, %struct.score_elf_link_hash_entry* %747, %struct.TYPE_64__** %748, i32 %749)
  store i32 %750, i32* %40, align 4
  %751 = load i32, i32* %40, align 4
  %752 = load i32, i32* @bfd_reloc_ok, align 4
  %753 = icmp ne i32 %751, %752
  br i1 %753, label %754, label %835

754:                                              ; preds = %745
  store i8* null, i8** %46, align 8
  %755 = load i32, i32* %40, align 4
  switch i32 %755, label %813 [
    i32 129, label %756
    i32 128, label %788
    i32 130, label %807
    i32 131, label %809
    i32 132, label %811
  ]

756:                                              ; preds = %754
  %757 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %758 = icmp ne %struct.score_elf_link_hash_entry* %757, null
  br i1 %758, label %759, label %767

759:                                              ; preds = %756
  %760 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %38, align 8
  %761 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %760, i32 0, i32 0
  %762 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %761, i32 0, i32 0
  %763 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %762, i32 0, i32 0
  %764 = load i64, i64* %763, align 8
  %765 = load i64, i64* @bfd_link_hash_undefined, align 8
  %766 = icmp ne i64 %764, %765
  br i1 %766, label %767, label %787

767:                                              ; preds = %759, %756
  %768 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %769 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %768, i32 0, i32 1
  %770 = load %struct.TYPE_78__*, %struct.TYPE_78__** %769, align 8
  %771 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %770, i32 0, i32 2
  %772 = load i32 (%struct.bfd_link_info*, i32*, i8*, i32, i32, %struct.TYPE_63__*, %struct.TYPE_64__*, i32)*, i32 (%struct.bfd_link_info*, i32*, i8*, i32, i32, %struct.TYPE_63__*, %struct.TYPE_64__*, i32)** %771, align 8
  %773 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %774 = load i8*, i8** %22, align 8
  %775 = load %struct.TYPE_79__*, %struct.TYPE_79__** %34, align 8
  %776 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %775, i32 0, i32 2
  %777 = load i32, i32* %776, align 4
  %778 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %779 = load %struct.TYPE_64__*, %struct.TYPE_64__** %13, align 8
  %780 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %781 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %780, i32 0, i32 0
  %782 = load i32, i32* %781, align 8
  %783 = call i32 %772(%struct.bfd_link_info* %773, i32* null, i8* %774, i32 %777, i32 0, %struct.TYPE_63__* %778, %struct.TYPE_64__* %779, i32 %782)
  %784 = icmp ne i32 %783, 0
  br i1 %784, label %787, label %785

785:                                              ; preds = %767
  %786 = load i32, i32* @FALSE, align 4
  store i32 %786, i32* %9, align 4
  br label %841

787:                                              ; preds = %767, %759
  br label %834

788:                                              ; preds = %754
  %789 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %790 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %789, i32 0, i32 1
  %791 = load %struct.TYPE_78__*, %struct.TYPE_78__** %790, align 8
  %792 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %791, i32 0, i32 1
  %793 = load i32 (%struct.bfd_link_info*, i8*, %struct.TYPE_63__*, %struct.TYPE_64__*, i32, i32)*, i32 (%struct.bfd_link_info*, i8*, %struct.TYPE_63__*, %struct.TYPE_64__*, i32, i32)** %792, align 8
  %794 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %795 = load i8*, i8** %22, align 8
  %796 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %797 = load %struct.TYPE_64__*, %struct.TYPE_64__** %13, align 8
  %798 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %799 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %798, i32 0, i32 0
  %800 = load i32, i32* %799, align 8
  %801 = load i32, i32* @TRUE, align 4
  %802 = call i32 %793(%struct.bfd_link_info* %794, i8* %795, %struct.TYPE_63__* %796, %struct.TYPE_64__* %797, i32 %800, i32 %801)
  %803 = icmp ne i32 %802, 0
  br i1 %803, label %806, label %804

804:                                              ; preds = %788
  %805 = load i32, i32* @FALSE, align 4
  store i32 %805, i32* %9, align 4
  br label %841

806:                                              ; preds = %788
  br label %834

807:                                              ; preds = %754
  %808 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i8* %808, i8** %46, align 8
  br label %815

809:                                              ; preds = %754
  %810 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  store i8* %810, i8** %46, align 8
  br label %815

811:                                              ; preds = %754
  %812 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i8* %812, i8** %46, align 8
  br label %815

813:                                              ; preds = %754
  %814 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i8* %814, i8** %46, align 8
  br label %815

815:                                              ; preds = %813, %811, %809, %807
  %816 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %817 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %816, i32 0, i32 1
  %818 = load %struct.TYPE_78__*, %struct.TYPE_78__** %817, align 8
  %819 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %818, i32 0, i32 0
  %820 = load i32 (%struct.bfd_link_info*, i8*, i8*, %struct.TYPE_63__*, %struct.TYPE_64__*, i32)*, i32 (%struct.bfd_link_info*, i8*, i8*, %struct.TYPE_63__*, %struct.TYPE_64__*, i32)** %819, align 8
  %821 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %822 = load i8*, i8** %46, align 8
  %823 = load i8*, i8** %22, align 8
  %824 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %825 = load %struct.TYPE_64__*, %struct.TYPE_64__** %13, align 8
  %826 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %827 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %826, i32 0, i32 0
  %828 = load i32, i32* %827, align 8
  %829 = call i32 %820(%struct.bfd_link_info* %821, i8* %822, i8* %823, %struct.TYPE_63__* %824, %struct.TYPE_64__* %825, i32 %828)
  %830 = icmp ne i32 %829, 0
  br i1 %830, label %833, label %831

831:                                              ; preds = %815
  %832 = load i32, i32* @FALSE, align 4
  store i32 %832, i32* %9, align 4
  br label %841

833:                                              ; preds = %815
  br label %834

834:                                              ; preds = %833, %806, %787
  br label %835

835:                                              ; preds = %834, %745
  br label %836

836:                                              ; preds = %835, %718, %676
  %837 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %838 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %837, i32 1
  store %struct.TYPE_68__* %838, %struct.TYPE_68__** %20, align 8
  br label %132

839:                                              ; preds = %132
  %840 = load i32, i32* @TRUE, align 4
  store i32 %840, i32* %9, align 4
  br label %841

841:                                              ; preds = %839, %831, %804, %785, %661, %513, %106
  %842 = load i32, i32* %9, align 4
  ret i32 %842
}

declare dso_local %struct.TYPE_72__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_63__*) #1

declare dso_local i32 @score_elf_sort_hash_table(%struct.bfd_link_info*, i64) #1

declare dso_local %struct.TYPE_71__* @elf_tdata(%struct.TYPE_63__*) #1

declare dso_local i64 @elf_bad_symtab(%struct.TYPE_63__*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(%struct.TYPE_63__*) #1

declare dso_local i64 @ELF32_R_SYM(i64) #1

declare dso_local i32 @ELF32_R_TYPE(i64) #1

declare dso_local i32 @_bfd_score_info_to_howto(%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_68__*) #1

declare dso_local i8* @bfd_elf_sym_name(%struct.TYPE_63__*, %struct.TYPE_67__*, %struct.TYPE_66__*, %struct.TYPE_64__*) #1

declare dso_local i64 @ELF_ST_TYPE(i32) #1

declare dso_local i8* @bfd_get_32(%struct.TYPE_63__*, i32*) #1

declare dso_local i32 @_bfd_elf_rel_local_sym(%struct.TYPE_63__*, %struct.TYPE_66__*, %struct.TYPE_64__**, i32) #1

declare dso_local i32 @bfd_put_32(%struct.TYPE_63__*, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32* @bfd_get_section_by_name(%struct.TYPE_63__*, i8*) #1

declare dso_local i64 @elf_discarded_section(%struct.TYPE_64__*) #1

declare dso_local i32 @_bfd_clear_contents(%struct.TYPE_79__*, %struct.TYPE_63__*, i32*) #1

declare dso_local i32 @score_elf_add_to_rel(%struct.TYPE_63__*, i32*, %struct.TYPE_79__*, i32) #1

declare dso_local i32 @score_elf_final_link_relocate(%struct.TYPE_79__*, %struct.TYPE_63__*, %struct.TYPE_63__*, %struct.TYPE_64__*, i32*, %struct.TYPE_68__*, %struct.TYPE_68__*, i32, %struct.bfd_link_info*, i8*, i64, %struct.score_elf_link_hash_entry*, %struct.TYPE_64__**, i32) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
