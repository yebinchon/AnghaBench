; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_output_extsym.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_output_extsym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_elf_link_hash_entry = type { %struct.TYPE_14__, %struct.TYPE_22__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_23__, i64, i64, i64, i64 }
%struct.TYPE_23__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__, i32, i32, i64, i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_18__, %struct.TYPE_20__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_15__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.extsym_info = type { i64, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@bfd_link_hash_new = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@strip_all = common dso_local global i64 0, align 8
@strip_some = common dso_local global i64 0, align 8
@ifdNil = common dso_local global i32 0, align 4
@stGlobal = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@scAbs = common dso_local global i8* null, align 8
@scUndefined = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c".text\00", align 1
@scText = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@scData = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@scSData = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c".rodata\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c".rdata\00", align 1
@scRData = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@scBss = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c".sbss\00", align 1
@scSBss = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c".init\00", align 1
@scInit = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c".fini\00", align 1
@scFini = common dso_local global i64 0, align 8
@indexNil = common dso_local global i32 0, align 4
@bfd_link_hash_common = common dso_local global i64 0, align 8
@scCommon = common dso_local global i64 0, align 8
@scSCommon = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.alpha_elf_link_hash_entry*, i64)* @elf64_alpha_output_extsym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf64_alpha_output_extsym(%struct.alpha_elf_link_hash_entry* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.alpha_elf_link_hash_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.extsym_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  store %struct.alpha_elf_link_hash_entry* %0, %struct.alpha_elf_link_hash_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to %struct.extsym_info*
  store %struct.extsym_info* %12, %struct.extsym_info** %6, align 8
  %13 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %14 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @bfd_link_hash_warning, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %22 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.alpha_elf_link_hash_entry*
  store %struct.alpha_elf_link_hash_entry* %28, %struct.alpha_elf_link_hash_entry** %4, align 8
  br label %29

29:                                               ; preds = %20, %2
  %30 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %31 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, -2
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %7, align 8
  br label %109

37:                                               ; preds = %29
  %38 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %39 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %37
  %44 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %45 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %51 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @bfd_link_hash_new, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %49, %43, %37
  %58 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %59 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %57
  %64 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %65 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = load i64, i64* @TRUE, align 8
  store i64 %70, i64* %7, align 8
  br label %108

71:                                               ; preds = %63, %57, %49
  %72 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %73 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %72, i32 0, i32 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @strip_all, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %103, label %79

79:                                               ; preds = %71
  %80 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %81 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %80, i32 0, i32 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @strip_some, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %79
  %88 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %89 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %88, i32 0, i32 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %94 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* @FALSE, align 8
  %100 = load i64, i64* @FALSE, align 8
  %101 = call i32* @bfd_hash_lookup(i32 %92, i32 %98, i64 %99, i64 %100)
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %87, %71
  %104 = load i64, i64* @TRUE, align 8
  store i64 %104, i64* %7, align 8
  br label %107

105:                                              ; preds = %87, %79
  %106 = load i64, i64* @FALSE, align 8
  store i64 %106, i64* %7, align 8
  br label %107

107:                                              ; preds = %105, %103
  br label %108

108:                                              ; preds = %107, %69
  br label %109

109:                                              ; preds = %108, %35
  %110 = load i64, i64* %7, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i64, i64* @TRUE, align 8
  store i64 %113, i64* %3, align 8
  br label %438

114:                                              ; preds = %109
  %115 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %116 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, -2
  br i1 %119, label %120, label %304

120:                                              ; preds = %114
  %121 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %122 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 5
  store i64 0, i64* %123, align 8
  %124 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %125 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 4
  store i64 0, i64* %126, align 8
  %127 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %128 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %131 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  store i64 0, i64* %132, align 8
  %133 = load i32, i32* @ifdNil, align 4
  %134 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %135 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  %137 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %138 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  %141 = load i32, i32* @stGlobal, align 4
  %142 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %143 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 4
  store i32 %141, i32* %145, align 8
  %146 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %147 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @bfd_link_hash_defined, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %120
  %154 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %155 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @bfd_link_hash_defweak, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %153
  %162 = load i8*, i8** @scAbs, align 8
  %163 = ptrtoint i8* %162 to i64
  %164 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %165 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  store i64 %163, i64* %167, align 8
  br label %294

168:                                              ; preds = %153, %120
  %169 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %170 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  store %struct.TYPE_13__* %175, %struct.TYPE_13__** %8, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  store %struct.TYPE_13__* %178, %struct.TYPE_13__** %9, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %180 = icmp eq %struct.TYPE_13__* %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %168
  %182 = load i64, i64* @scUndefined, align 8
  %183 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %184 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  store i64 %182, i64* %186, align 8
  br label %293

187:                                              ; preds = %168
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %192 = call i8* @bfd_section_name(i32 %190, %struct.TYPE_13__* %191)
  store i8* %192, i8** %10, align 8
  %193 = load i8*, i8** %10, align 8
  %194 = call i64 @strcmp(i8* %193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %187
  %197 = load i64, i64* @scText, align 8
  %198 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %199 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  store i64 %197, i64* %201, align 8
  br label %292

202:                                              ; preds = %187
  %203 = load i8*, i8** %10, align 8
  %204 = call i64 @strcmp(i8* %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = load i64, i64* @scData, align 8
  %208 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %209 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 0
  store i64 %207, i64* %211, align 8
  br label %291

212:                                              ; preds = %202
  %213 = load i8*, i8** %10, align 8
  %214 = call i64 @strcmp(i8* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %212
  %217 = load i64, i64* @scSData, align 8
  %218 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %219 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  store i64 %217, i64* %221, align 8
  br label %290

222:                                              ; preds = %212
  %223 = load i8*, i8** %10, align 8
  %224 = call i64 @strcmp(i8* %223, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %222
  %227 = load i8*, i8** %10, align 8
  %228 = call i64 @strcmp(i8* %227, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %226, %222
  %231 = load i64, i64* @scRData, align 8
  %232 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %233 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 0
  store i64 %231, i64* %235, align 8
  br label %289

236:                                              ; preds = %226
  %237 = load i8*, i8** %10, align 8
  %238 = call i64 @strcmp(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %236
  %241 = load i8*, i8** @scBss, align 8
  %242 = ptrtoint i8* %241 to i64
  %243 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %244 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 0
  store i64 %242, i64* %246, align 8
  br label %288

247:                                              ; preds = %236
  %248 = load i8*, i8** %10, align 8
  %249 = call i64 @strcmp(i8* %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %247
  %252 = load i8*, i8** @scSBss, align 8
  %253 = ptrtoint i8* %252 to i64
  %254 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %255 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 0
  store i64 %253, i64* %257, align 8
  br label %287

258:                                              ; preds = %247
  %259 = load i8*, i8** %10, align 8
  %260 = call i64 @strcmp(i8* %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %258
  %263 = load i64, i64* @scInit, align 8
  %264 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %265 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 0
  store i64 %263, i64* %267, align 8
  br label %286

268:                                              ; preds = %258
  %269 = load i8*, i8** %10, align 8
  %270 = call i64 @strcmp(i8* %269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %268
  %273 = load i64, i64* @scFini, align 8
  %274 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %275 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 0
  store i64 %273, i64* %277, align 8
  br label %285

278:                                              ; preds = %268
  %279 = load i8*, i8** @scAbs, align 8
  %280 = ptrtoint i8* %279 to i64
  %281 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %282 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %283, i32 0, i32 0
  store i64 %280, i64* %284, align 8
  br label %285

285:                                              ; preds = %278, %272
  br label %286

286:                                              ; preds = %285, %262
  br label %287

287:                                              ; preds = %286, %251
  br label %288

288:                                              ; preds = %287, %240
  br label %289

289:                                              ; preds = %288, %230
  br label %290

290:                                              ; preds = %289, %216
  br label %291

291:                                              ; preds = %290, %206
  br label %292

292:                                              ; preds = %291, %196
  br label %293

293:                                              ; preds = %292, %181
  br label %294

294:                                              ; preds = %293, %161
  %295 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %296 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 3
  store i64 0, i64* %298, align 8
  %299 = load i32, i32* @indexNil, align 4
  %300 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %301 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 2
  store i32 %299, i32* %303, align 8
  br label %304

304:                                              ; preds = %294, %114
  %305 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %306 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @bfd_link_hash_common, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %324

312:                                              ; preds = %304
  %313 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %314 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %321 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %322, i32 0, i32 1
  store i64 %319, i64* %323, align 8
  br label %411

324:                                              ; preds = %304
  %325 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %326 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @bfd_link_hash_defined, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %340, label %332

332:                                              ; preds = %324
  %333 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %334 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @bfd_link_hash_defweak, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %410

340:                                              ; preds = %332, %324
  %341 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %342 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @scCommon, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %355

348:                                              ; preds = %340
  %349 = load i8*, i8** @scBss, align 8
  %350 = ptrtoint i8* %349 to i64
  %351 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %352 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %353, i32 0, i32 0
  store i64 %350, i64* %354, align 8
  br label %371

355:                                              ; preds = %340
  %356 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %357 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @scSCommon, align 8
  %362 = icmp eq i64 %360, %361
  br i1 %362, label %363, label %370

363:                                              ; preds = %355
  %364 = load i8*, i8** @scSBss, align 8
  %365 = ptrtoint i8* %364 to i64
  %366 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %367 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %368, i32 0, i32 0
  store i64 %365, i64* %369, align 8
  br label %370

370:                                              ; preds = %363, %355
  br label %371

371:                                              ; preds = %370, %348
  %372 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %373 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 1
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** %377, align 8
  store %struct.TYPE_13__* %378, %struct.TYPE_13__** %8, align 8
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 2
  %381 = load %struct.TYPE_13__*, %struct.TYPE_13__** %380, align 8
  store %struct.TYPE_13__* %381, %struct.TYPE_13__** %9, align 8
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %383 = icmp ne %struct.TYPE_13__* %382, null
  br i1 %383, label %384, label %404

384:                                              ; preds = %371
  %385 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %386 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = add nsw i64 %391, %394
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = add nsw i64 %395, %398
  %400 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %401 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %402, i32 0, i32 1
  store i64 %399, i64* %403, align 8
  br label %409

404:                                              ; preds = %371
  %405 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %406 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %407, i32 0, i32 1
  store i64 0, i64* %408, align 8
  br label %409

409:                                              ; preds = %404, %384
  br label %410

410:                                              ; preds = %409, %332
  br label %411

411:                                              ; preds = %410, %312
  %412 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %413 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %416 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %419 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %422 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %428 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %427, i32 0, i32 0
  %429 = call i32 @bfd_ecoff_debug_one_external(i32 %414, i32 %417, i32 %420, i32 %426, %struct.TYPE_14__* %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %436, label %431

431:                                              ; preds = %411
  %432 = load i64, i64* @TRUE, align 8
  %433 = load %struct.extsym_info*, %struct.extsym_info** %6, align 8
  %434 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %433, i32 0, i32 0
  store i64 %432, i64* %434, align 8
  %435 = load i64, i64* @FALSE, align 8
  store i64 %435, i64* %3, align 8
  br label %438

436:                                              ; preds = %411
  %437 = load i64, i64* @TRUE, align 8
  store i64 %437, i64* %3, align 8
  br label %438

438:                                              ; preds = %436, %431, %112
  %439 = load i64, i64* %3, align 8
  ret i64 %439
}

declare dso_local i32* @bfd_hash_lookup(i32, i32, i64, i64) #1

declare dso_local i8* @bfd_section_name(i32, %struct.TYPE_13__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bfd_ecoff_debug_one_external(i32, i32, i32, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
