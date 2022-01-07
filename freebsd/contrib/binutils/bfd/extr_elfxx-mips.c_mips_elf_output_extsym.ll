; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_mips_elf_output_extsym.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_mips_elf_output_extsym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_elf_link_hash_entry = type { i32, %struct.TYPE_18__, %struct.TYPE_27__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_22__, i64, i64, i64, i64 }
%struct.TYPE_22__ = type { i64, i64, i8*, i32, i64 }
%struct.TYPE_27__ = type { i32, i64, %struct.TYPE_26__, %struct.TYPE_21__, i64, i32, i32, i64, i64 }
%struct.TYPE_26__ = type { i64, %struct.TYPE_23__, %struct.TYPE_25__ }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_25__ = type { %struct.TYPE_20__, %struct.TYPE_24__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.extsym_info = type { i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@bfd_link_hash_new = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@strip_all = common dso_local global i64 0, align 8
@strip_some = common dso_local global i64 0, align 8
@ifdNil = common dso_local global i32 0, align 4
@stGlobal = common dso_local global i8* null, align 8
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@mips_elf_dynsym_rtproc_names = common dso_local global i8** null, align 8
@scData = common dso_local global i8* null, align 8
@stLabel = common dso_local global i8* null, align 8
@scAbs = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"_gp_disp\00", align 1
@scUndefined = common dso_local global i8* null, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@scText = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@scSData = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c".rodata\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c".rdata\00", align 1
@scRData = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@scBss = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c".sbss\00", align 1
@scSBss = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c".init\00", align 1
@scInit = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c".fini\00", align 1
@scFini = common dso_local global i64 0, align 8
@indexNil = common dso_local global i32 0, align 4
@bfd_link_hash_common = common dso_local global i64 0, align 8
@scCommon = common dso_local global i64 0, align 8
@scSCommon = common dso_local global i64 0, align 8
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@stProc = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mips_elf_link_hash_entry*, i8*)* @mips_elf_output_extsym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_elf_output_extsym(%struct.mips_elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mips_elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.extsym_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mips_elf_link_hash_entry*, align 8
  %13 = alloca i32, align 4
  store %struct.mips_elf_link_hash_entry* %0, %struct.mips_elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.extsym_info*
  store %struct.extsym_info* %15, %struct.extsym_info** %6, align 8
  %16 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %17 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @bfd_link_hash_warning, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %25 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %31, %struct.mips_elf_link_hash_entry** %4, align 8
  br label %32

32:                                               ; preds = %23, %2
  %33 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %34 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, -2
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %7, align 4
  br label %111

40:                                               ; preds = %32
  %41 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %42 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %40
  %47 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %48 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %54 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @bfd_link_hash_new, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %52, %46, %40
  %60 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %61 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %59
  %66 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %67 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %7, align 4
  br label %110

73:                                               ; preds = %65, %59, %52
  %74 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %75 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %74, i32 0, i32 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @strip_all, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %105, label %81

81:                                               ; preds = %73
  %82 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %83 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %82, i32 0, i32 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @strip_some, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %81
  %90 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %91 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %90, i32 0, i32 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %96 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* @FALSE, align 4
  %102 = load i32, i32* @FALSE, align 4
  %103 = call i32* @bfd_hash_lookup(i32 %94, i8* %100, i32 %101, i32 %102)
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %89, %73
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %7, align 4
  br label %109

107:                                              ; preds = %89, %81
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %107, %105
  br label %110

110:                                              ; preds = %109, %71
  br label %111

111:                                              ; preds = %110, %38
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @TRUE, align 4
  store i32 %115, i32* %3, align 4
  br label %658

116:                                              ; preds = %111
  %117 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %118 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, -2
  br i1 %121, label %122, label %430

122:                                              ; preds = %116
  %123 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %124 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 5
  store i64 0, i64* %125, align 8
  %126 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %127 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 4
  store i64 0, i64* %128, align 8
  %129 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %130 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %133 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 2
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* @ifdNil, align 4
  %136 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %137 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %140 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  %143 = load i8*, i8** @stGlobal, align 8
  %144 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %145 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 2
  store i8* %143, i8** %147, align 8
  %148 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %149 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @bfd_link_hash_undefined, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %163, label %155

155:                                              ; preds = %122
  %156 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %157 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %268

163:                                              ; preds = %155, %122
  %164 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %165 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  store i8* %169, i8** %10, align 8
  %170 = load i8*, i8** %10, align 8
  %171 = load i8**, i8*** @mips_elf_dynsym_rtproc_names, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i64 @strcmp(i8* %170, i8* %173)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %163
  %177 = load i8*, i8** %10, align 8
  %178 = load i8**, i8*** @mips_elf_dynsym_rtproc_names, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @strcmp(i8* %177, i8* %180)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %199

183:                                              ; preds = %176, %163
  %184 = load i8*, i8** @scData, align 8
  %185 = ptrtoint i8* %184 to i64
  %186 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %187 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  store i64 %185, i64* %189, align 8
  %190 = load i8*, i8** @stLabel, align 8
  %191 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %192 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 2
  store i8* %190, i8** %194, align 8
  %195 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %196 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 1
  store i64 0, i64* %198, align 8
  br label %267

199:                                              ; preds = %176
  %200 = load i8*, i8** %10, align 8
  %201 = load i8**, i8*** @mips_elf_dynsym_rtproc_names, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 2
  %203 = load i8*, i8** %202, align 8
  %204 = call i64 @strcmp(i8* %200, i8* %203)
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %228

206:                                              ; preds = %199
  %207 = load i8*, i8** @scAbs, align 8
  %208 = ptrtoint i8* %207 to i64
  %209 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %210 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  store i64 %208, i64* %212, align 8
  %213 = load i8*, i8** @stLabel, align 8
  %214 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %215 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 2
  store i8* %213, i8** %217, align 8
  %218 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %219 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %218, i32 0, i32 4
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = call %struct.TYPE_16__* @mips_elf_hash_table(%struct.TYPE_17__* %220)
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %225 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 1
  store i64 %223, i64* %227, align 8
  br label %266

228:                                              ; preds = %199
  %229 = load i8*, i8** %10, align 8
  %230 = call i64 @strcmp(i8* %229, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %258

232:                                              ; preds = %228
  %233 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %234 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @NEWABI_P(i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %258, label %238

238:                                              ; preds = %232
  %239 = load i8*, i8** @scAbs, align 8
  %240 = ptrtoint i8* %239 to i64
  %241 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %242 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 0
  store i64 %240, i64* %244, align 8
  %245 = load i8*, i8** @stLabel, align 8
  %246 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %247 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 2
  store i8* %245, i8** %249, align 8
  %250 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %251 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = call i64 @elf_gp(i32 %252)
  %254 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %255 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 1
  store i64 %253, i64* %257, align 8
  br label %265

258:                                              ; preds = %232, %228
  %259 = load i8*, i8** @scUndefined, align 8
  %260 = ptrtoint i8* %259 to i64
  %261 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %262 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 0
  store i64 %260, i64* %264, align 8
  br label %265

265:                                              ; preds = %258, %238
  br label %266

266:                                              ; preds = %265, %206
  br label %267

267:                                              ; preds = %266, %183
  br label %420

268:                                              ; preds = %155
  %269 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %270 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @bfd_link_hash_defined, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %291

276:                                              ; preds = %268
  %277 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %278 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @bfd_link_hash_defweak, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %291

284:                                              ; preds = %276
  %285 = load i8*, i8** @scAbs, align 8
  %286 = ptrtoint i8* %285 to i64
  %287 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %288 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 0
  store i64 %286, i64* %290, align 8
  br label %419

291:                                              ; preds = %276, %268
  %292 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %293 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %297, align 8
  store %struct.TYPE_15__* %298, %struct.TYPE_15__** %8, align 8
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %300, align 8
  store %struct.TYPE_15__* %301, %struct.TYPE_15__** %9, align 8
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %303 = icmp eq %struct.TYPE_15__* %302, null
  br i1 %303, label %304, label %311

304:                                              ; preds = %291
  %305 = load i8*, i8** @scUndefined, align 8
  %306 = ptrtoint i8* %305 to i64
  %307 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %308 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 0
  store i64 %306, i64* %310, align 8
  br label %418

311:                                              ; preds = %291
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %316 = call i8* @bfd_section_name(i32 %314, %struct.TYPE_15__* %315)
  store i8* %316, i8** %11, align 8
  %317 = load i8*, i8** %11, align 8
  %318 = call i64 @strcmp(i8* %317, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %311
  %321 = load i64, i64* @scText, align 8
  %322 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %323 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 0
  store i64 %321, i64* %325, align 8
  br label %417

326:                                              ; preds = %311
  %327 = load i8*, i8** %11, align 8
  %328 = call i64 @strcmp(i8* %327, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %326
  %331 = load i8*, i8** @scData, align 8
  %332 = ptrtoint i8* %331 to i64
  %333 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %334 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %335, i32 0, i32 0
  store i64 %332, i64* %336, align 8
  br label %416

337:                                              ; preds = %326
  %338 = load i8*, i8** %11, align 8
  %339 = call i64 @strcmp(i8* %338, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %337
  %342 = load i64, i64* @scSData, align 8
  %343 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %344 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %345, i32 0, i32 0
  store i64 %342, i64* %346, align 8
  br label %415

347:                                              ; preds = %337
  %348 = load i8*, i8** %11, align 8
  %349 = call i64 @strcmp(i8* %348, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %355, label %351

351:                                              ; preds = %347
  %352 = load i8*, i8** %11, align 8
  %353 = call i64 @strcmp(i8* %352, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %351, %347
  %356 = load i64, i64* @scRData, align 8
  %357 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %358 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %359, i32 0, i32 0
  store i64 %356, i64* %360, align 8
  br label %414

361:                                              ; preds = %351
  %362 = load i8*, i8** %11, align 8
  %363 = call i64 @strcmp(i8* %362, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %372

365:                                              ; preds = %361
  %366 = load i8*, i8** @scBss, align 8
  %367 = ptrtoint i8* %366 to i64
  %368 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %369 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 0
  store i64 %367, i64* %371, align 8
  br label %413

372:                                              ; preds = %361
  %373 = load i8*, i8** %11, align 8
  %374 = call i64 @strcmp(i8* %373, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %383

376:                                              ; preds = %372
  %377 = load i8*, i8** @scSBss, align 8
  %378 = ptrtoint i8* %377 to i64
  %379 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %380 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %381, i32 0, i32 0
  store i64 %378, i64* %382, align 8
  br label %412

383:                                              ; preds = %372
  %384 = load i8*, i8** %11, align 8
  %385 = call i64 @strcmp(i8* %384, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %383
  %388 = load i64, i64* @scInit, align 8
  %389 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %390 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %391, i32 0, i32 0
  store i64 %388, i64* %392, align 8
  br label %411

393:                                              ; preds = %383
  %394 = load i8*, i8** %11, align 8
  %395 = call i64 @strcmp(i8* %394, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %403

397:                                              ; preds = %393
  %398 = load i64, i64* @scFini, align 8
  %399 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %400 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 0
  store i64 %398, i64* %402, align 8
  br label %410

403:                                              ; preds = %393
  %404 = load i8*, i8** @scAbs, align 8
  %405 = ptrtoint i8* %404 to i64
  %406 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %407 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %408, i32 0, i32 0
  store i64 %405, i64* %409, align 8
  br label %410

410:                                              ; preds = %403, %397
  br label %411

411:                                              ; preds = %410, %387
  br label %412

412:                                              ; preds = %411, %376
  br label %413

413:                                              ; preds = %412, %365
  br label %414

414:                                              ; preds = %413, %355
  br label %415

415:                                              ; preds = %414, %341
  br label %416

416:                                              ; preds = %415, %330
  br label %417

417:                                              ; preds = %416, %320
  br label %418

418:                                              ; preds = %417, %304
  br label %419

419:                                              ; preds = %418, %284
  br label %420

420:                                              ; preds = %419, %267
  %421 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %422 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 4
  store i64 0, i64* %424, align 8
  %425 = load i32, i32* @indexNil, align 4
  %426 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %427 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %428, i32 0, i32 3
  store i32 %425, i32* %429, align 8
  br label %430

430:                                              ; preds = %420, %116
  %431 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %432 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %432, i32 0, i32 2
  %434 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = load i64, i64* @bfd_link_hash_common, align 8
  %437 = icmp eq i64 %435, %436
  br i1 %437, label %438, label %450

438:                                              ; preds = %430
  %439 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %440 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %439, i32 0, i32 2
  %441 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %440, i32 0, i32 2
  %442 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %441, i32 0, i32 2
  %443 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %442, i32 0, i32 2
  %444 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %447 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %448, i32 0, i32 1
  store i64 %445, i64* %449, align 8
  br label %631

450:                                              ; preds = %430
  %451 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %452 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %452, i32 0, i32 2
  %454 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* @bfd_link_hash_defined, align 8
  %457 = icmp eq i64 %455, %456
  br i1 %457, label %466, label %458

458:                                              ; preds = %450
  %459 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %460 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %459, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %460, i32 0, i32 2
  %462 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = load i64, i64* @bfd_link_hash_defweak, align 8
  %465 = icmp eq i64 %463, %464
  br i1 %465, label %466, label %536

466:                                              ; preds = %458, %450
  %467 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %468 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %469, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = load i64, i64* @scCommon, align 8
  %473 = icmp eq i64 %471, %472
  br i1 %473, label %474, label %481

474:                                              ; preds = %466
  %475 = load i8*, i8** @scBss, align 8
  %476 = ptrtoint i8* %475 to i64
  %477 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %478 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %478, i32 0, i32 1
  %480 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %479, i32 0, i32 0
  store i64 %476, i64* %480, align 8
  br label %497

481:                                              ; preds = %466
  %482 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %483 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* @scSCommon, align 8
  %488 = icmp eq i64 %486, %487
  br i1 %488, label %489, label %496

489:                                              ; preds = %481
  %490 = load i8*, i8** @scSBss, align 8
  %491 = ptrtoint i8* %490 to i64
  %492 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %493 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %493, i32 0, i32 1
  %495 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %494, i32 0, i32 0
  store i64 %491, i64* %495, align 8
  br label %496

496:                                              ; preds = %489, %481
  br label %497

497:                                              ; preds = %496, %474
  %498 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %499 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %498, i32 0, i32 2
  %500 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %499, i32 0, i32 2
  %501 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %500, i32 0, i32 2
  %502 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %502, i32 0, i32 0
  %504 = load %struct.TYPE_15__*, %struct.TYPE_15__** %503, align 8
  store %struct.TYPE_15__* %504, %struct.TYPE_15__** %8, align 8
  %505 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %506 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %505, i32 0, i32 2
  %507 = load %struct.TYPE_15__*, %struct.TYPE_15__** %506, align 8
  store %struct.TYPE_15__* %507, %struct.TYPE_15__** %9, align 8
  %508 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %509 = icmp ne %struct.TYPE_15__* %508, null
  br i1 %509, label %510, label %530

510:                                              ; preds = %497
  %511 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %512 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %511, i32 0, i32 2
  %513 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %512, i32 0, i32 2
  %514 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %513, i32 0, i32 2
  %515 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %515, i32 0, i32 1
  %517 = load i64, i64* %516, align 8
  %518 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %519 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %518, i32 0, i32 1
  %520 = load i64, i64* %519, align 8
  %521 = add nsw i64 %517, %520
  %522 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %523 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %522, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = add nsw i64 %521, %524
  %526 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %527 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %527, i32 0, i32 1
  %529 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %528, i32 0, i32 1
  store i64 %525, i64* %529, align 8
  br label %535

530:                                              ; preds = %497
  %531 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %532 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %531, i32 0, i32 1
  %533 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %533, i32 0, i32 1
  store i64 0, i64* %534, align 8
  br label %535

535:                                              ; preds = %530, %510
  br label %630

536:                                              ; preds = %458
  %537 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %538 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %537, i32 0, i32 2
  %539 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %538, i32 0, i32 4
  %540 = load i64, i64* %539, align 8
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %542, label %629

542:                                              ; preds = %536
  %543 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  store %struct.mips_elf_link_hash_entry* %543, %struct.mips_elf_link_hash_entry** %12, align 8
  %544 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %545 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  store i32 %546, i32* %13, align 4
  br label %547

547:                                              ; preds = %571, %542
  %548 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %12, align 8
  %549 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %548, i32 0, i32 2
  %550 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %549, i32 0, i32 2
  %551 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %550, i32 0, i32 0
  %552 = load i64, i64* %551, align 8
  %553 = load i64, i64* @bfd_link_hash_indirect, align 8
  %554 = icmp eq i64 %552, %553
  br i1 %554, label %555, label %574

555:                                              ; preds = %547
  %556 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %557 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %556, i32 0, i32 2
  %558 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %557, i32 0, i32 2
  %559 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %558, i32 0, i32 2
  %560 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %559, i32 0, i32 1
  %561 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %560, i32 0, i32 0
  %562 = load i64, i64* %561, align 8
  %563 = inttoptr i64 %562 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %563, %struct.mips_elf_link_hash_entry** %12, align 8
  %564 = load i32, i32* %13, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %571, label %566

566:                                              ; preds = %555
  %567 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %12, align 8
  %568 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 8
  %570 = icmp ne i32 %569, 0
  br label %571

571:                                              ; preds = %566, %555
  %572 = phi i1 [ true, %555 ], [ %570, %566 ]
  %573 = zext i1 %572 to i32
  store i32 %573, i32* %13, align 4
  br label %547

574:                                              ; preds = %547
  %575 = load i32, i32* %13, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %628, label %577

577:                                              ; preds = %574
  %578 = load i8*, i8** @stProc, align 8
  %579 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %580 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %579, i32 0, i32 1
  %581 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %580, i32 0, i32 1
  %582 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %581, i32 0, i32 2
  store i8* %578, i8** %582, align 8
  %583 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %12, align 8
  %584 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %583, i32 0, i32 2
  %585 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %584, i32 0, i32 2
  %586 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %585, i32 0, i32 2
  %587 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %586, i32 0, i32 0
  %588 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %587, i32 0, i32 0
  %589 = load %struct.TYPE_15__*, %struct.TYPE_15__** %588, align 8
  store %struct.TYPE_15__* %589, %struct.TYPE_15__** %8, align 8
  %590 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %591 = icmp eq %struct.TYPE_15__* %590, null
  br i1 %591, label %592, label %597

592:                                              ; preds = %577
  %593 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %594 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %594, i32 0, i32 1
  %596 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %595, i32 0, i32 1
  store i64 0, i64* %596, align 8
  br label %627

597:                                              ; preds = %577
  %598 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %599 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %598, i32 0, i32 2
  %600 = load %struct.TYPE_15__*, %struct.TYPE_15__** %599, align 8
  store %struct.TYPE_15__* %600, %struct.TYPE_15__** %9, align 8
  %601 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %602 = icmp ne %struct.TYPE_15__* %601, null
  br i1 %602, label %603, label %621

603:                                              ; preds = %597
  %604 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %12, align 8
  %605 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %604, i32 0, i32 2
  %606 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %605, i32 0, i32 3
  %607 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %606, i32 0, i32 0
  %608 = load i64, i64* %607, align 8
  %609 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %610 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %609, i32 0, i32 1
  %611 = load i64, i64* %610, align 8
  %612 = add nsw i64 %608, %611
  %613 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %614 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %613, i32 0, i32 0
  %615 = load i64, i64* %614, align 8
  %616 = add nsw i64 %612, %615
  %617 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %618 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %617, i32 0, i32 1
  %619 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %618, i32 0, i32 1
  %620 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %619, i32 0, i32 1
  store i64 %616, i64* %620, align 8
  br label %626

621:                                              ; preds = %597
  %622 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %623 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %622, i32 0, i32 1
  %624 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %623, i32 0, i32 1
  %625 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %624, i32 0, i32 1
  store i64 0, i64* %625, align 8
  br label %626

626:                                              ; preds = %621, %603
  br label %627

627:                                              ; preds = %626, %592
  br label %628

628:                                              ; preds = %627, %574
  br label %629

629:                                              ; preds = %628, %536
  br label %630

630:                                              ; preds = %629, %535
  br label %631

631:                                              ; preds = %630, %438
  %632 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %633 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %632, i32 0, i32 3
  %634 = load i32, i32* %633, align 4
  %635 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %636 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %635, i32 0, i32 2
  %637 = load i32, i32* %636, align 8
  %638 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %639 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %638, i32 0, i32 1
  %640 = load i32, i32* %639, align 4
  %641 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %642 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %641, i32 0, i32 2
  %643 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %642, i32 0, i32 2
  %644 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %643, i32 0, i32 1
  %645 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %644, i32 0, i32 0
  %646 = load i8*, i8** %645, align 8
  %647 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %4, align 8
  %648 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %647, i32 0, i32 1
  %649 = call i32 @bfd_ecoff_debug_one_external(i32 %634, i32 %637, i32 %640, i8* %646, %struct.TYPE_18__* %648)
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %656, label %651

651:                                              ; preds = %631
  %652 = load i32, i32* @TRUE, align 4
  %653 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %654 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %653, i32 0, i32 0
  store i32 %652, i32* %654, align 8
  %655 = load i32, i32* @FALSE, align 4
  store i32 %655, i32* %3, align 4
  br label %658

656:                                              ; preds = %631
  %657 = load i32, i32* @TRUE, align 4
  store i32 %657, i32* %3, align 4
  br label %658

658:                                              ; preds = %656, %651, %114
  %659 = load i32, i32* %3, align 4
  ret i32 %659
}

declare dso_local i32* @bfd_hash_lookup(i32, i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_16__* @mips_elf_hash_table(%struct.TYPE_17__*) #1

declare dso_local i32 @NEWABI_P(i32) #1

declare dso_local i64 @elf_gp(i32) #1

declare dso_local i8* @bfd_section_name(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @bfd_ecoff_debug_one_external(i32, i32, i32, i8*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
