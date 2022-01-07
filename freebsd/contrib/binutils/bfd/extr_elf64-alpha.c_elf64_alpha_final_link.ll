; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_final_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_final_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { i32, %struct.TYPE_44__* }
%struct.TYPE_44__ = type { i64, i64, i32, i64, i32, i32, %struct.TYPE_42__, i32, %struct.TYPE_43__*, i32, %struct.TYPE_44__* }
%struct.TYPE_42__ = type { %struct.bfd_link_order* }
%struct.bfd_link_order = type { i64, i64, %struct.TYPE_38__, %struct.bfd_link_order* }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { %struct.TYPE_44__* }
%struct.bfd_link_info = type { i32 }
%struct.ecoff_debug_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, %struct.TYPE_45__, i32*, i32* }
%struct.TYPE_45__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.ecoff_debug_swap = type { i32, i32 (%struct.TYPE_43__*, i64, %struct.TYPE_46__*)*, i32 }
%struct.TYPE_46__ = type { i32, %struct.TYPE_41__, i64, i64, i64, i64 }
%struct.TYPE_41__ = type { i32, i32, i64, i32, i64, i32 }
%struct.extsym_info = type { i64, %struct.ecoff_debug_swap*, %struct.ecoff_debug_info*, %struct.bfd_link_info*, %struct.TYPE_43__* }
%struct.alpha_elf_link_hash_entry = type { %struct.TYPE_46__ }
%struct.TYPE_35__ = type { %struct.ecoff_debug_swap* }
%struct.TYPE_40__ = type { %struct.TYPE_43__* }
%struct.TYPE_36__ = type { %struct.TYPE_43__* }
%struct.TYPE_39__ = type { %struct.TYPE_44__*, %struct.TYPE_43__* }

@.str = private unnamed_addr constant [8 x i8] c".mdebug\00", align 1
@FALSE = common dso_local global i64 0, align 8
@elf64_alpha_final_link.name = internal constant [8 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".init\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".fini\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".rodata\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".sbss\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@elf64_alpha_final_link.sc = internal constant [8 x i32] [i32 128, i32 132, i32 133, i32 134, i32 131, i32 129, i32 130, i32 135], align 16
@ifdNil = common dso_local global i32 0, align 4
@issNil = common dso_local global i32 0, align 4
@stLocal = common dso_local global i32 0, align 4
@indexNil = common dso_local global i32 0, align 4
@bfd_indirect_link_order = common dso_local global i64 0, align 8
@bfd_data_link_order = common dso_local global i64 0, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@scNil = common dso_local global i64 0, align 8
@scUndefined = common dso_local global i64 0, align 8
@scSUndefined = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@elf64_alpha_output_extsym = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_43__*, %struct.bfd_link_info*)* @elf64_alpha_final_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf64_alpha_final_link(%struct.TYPE_43__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_43__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_44__*, align 8
  %7 = alloca %struct.bfd_link_order*, align 8
  %8 = alloca %struct.TYPE_44__*, align 8
  %9 = alloca %struct.ecoff_debug_info, align 8
  %10 = alloca %struct.ecoff_debug_swap*, align 8
  %11 = alloca %struct.TYPE_45__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.extsym_info, align 8
  %14 = alloca %struct.TYPE_44__*, align 8
  %15 = alloca %struct.TYPE_46__, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_44__*, align 8
  %19 = alloca %struct.TYPE_43__*, align 8
  %20 = alloca %struct.ecoff_debug_swap*, align 8
  %21 = alloca %struct.ecoff_debug_info, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_46__, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.alpha_elf_link_hash_entry*, align 8
  %27 = alloca %struct.TYPE_43__*, align 8
  %28 = alloca %struct.TYPE_43__*, align 8
  %29 = alloca %struct.TYPE_44__*, align 8
  store %struct.TYPE_43__* %0, %struct.TYPE_43__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %30 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %31 = call %struct.TYPE_35__* @get_elf_backend_data(%struct.TYPE_43__* %30)
  %32 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i32 0, i32 0
  %33 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %32, align 8
  store %struct.ecoff_debug_swap* %33, %struct.ecoff_debug_swap** %10, align 8
  %34 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %9, i32 0, i32 12
  store %struct.TYPE_45__* %34, %struct.TYPE_45__** %11, align 8
  store i64 0, i64* %12, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %8, align 8
  %35 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_44__*, %struct.TYPE_44__** %36, align 8
  store %struct.TYPE_44__* %37, %struct.TYPE_44__** %6, align 8
  br label %38

38:                                               ; preds = %420, %2
  %39 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %40 = icmp ne %struct.TYPE_44__* %39, null
  br i1 %40, label %41, label %424

41:                                               ; preds = %38
  %42 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @strcmp(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %419

47:                                               ; preds = %41
  %48 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %10, align 8
  %49 = getelementptr inbounds %struct.ecoff_debug_swap, %struct.ecoff_debug_swap* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %51, i32 0, i32 13
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %53, i32 0, i32 12
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %55, i32 0, i32 11
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %57, i32 0, i32 10
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %59, i32 0, i32 9
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %61, i32 0, i32 8
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %63, i32 0, i32 7
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %9, i32 0, i32 0
  store i8* null, i8** %79, align 8
  %80 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %9, i32 0, i32 1
  store i8* null, i8** %80, align 8
  %81 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %9, i32 0, i32 2
  store i8* null, i8** %81, align 8
  %82 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %9, i32 0, i32 3
  store i8* null, i8** %82, align 8
  %83 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %9, i32 0, i32 4
  store i8* null, i8** %83, align 8
  %84 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %9, i32 0, i32 5
  store i8* null, i8** %84, align 8
  %85 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %9, i32 0, i32 6
  store i8* null, i8** %85, align 8
  %86 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %9, i32 0, i32 14
  store i32* null, i32** %86, align 8
  %87 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %9, i32 0, i32 7
  store i8* null, i8** %87, align 8
  %88 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %9, i32 0, i32 8
  store i8* null, i8** %88, align 8
  %89 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %9, i32 0, i32 9
  store i8* null, i8** %89, align 8
  %90 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %9, i32 0, i32 13
  store i32* null, i32** %90, align 8
  %91 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %9, i32 0, i32 10
  store i8* null, i8** %91, align 8
  %92 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %93 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %10, align 8
  %94 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %95 = call i64 @bfd_ecoff_debug_init(%struct.TYPE_43__* %92, %struct.ecoff_debug_info* %9, %struct.ecoff_debug_swap* %93, %struct.bfd_link_info* %94)
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %47
  %99 = load i64, i64* @FALSE, align 8
  store i64 %99, i64* %3, align 8
  br label %504

100:                                              ; preds = %47
  store i64 0, i64* %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %15, i32 0, i32 5
  store i64 0, i64* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %15, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %15, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %15, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* @ifdNil, align 4
  %106 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %15, i32 0, i32 0
  store i32 %105, i32* %106, align 8
  %107 = load i32, i32* @issNil, align 4
  %108 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %15, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @stLocal, align 4
  %111 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %15, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %15, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %113, i32 0, i32 4
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* @indexNil, align 4
  %116 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %15, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  store i32 0, i32* %17, align 4
  br label %118

118:                                              ; preds = %165, %100
  %119 = load i32, i32* %17, align 4
  %120 = icmp ult i32 %119, 8
  br i1 %120, label %121, label %168

121:                                              ; preds = %118
  %122 = load i32, i32* %17, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* @elf64_alpha_final_link.sc, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %15, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %129 = load i32, i32* %17, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [8 x i8*], [8 x i8*]* @elf64_alpha_final_link.name, i64 0, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call %struct.TYPE_44__* @bfd_get_section_by_name(%struct.TYPE_43__* %128, i8* %132)
  store %struct.TYPE_44__* %133, %struct.TYPE_44__** %14, align 8
  %134 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %135 = icmp ne %struct.TYPE_44__* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %121
  %137 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %15, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %144, %147
  store i64 %148, i64* %16, align 8
  br label %153

149:                                              ; preds = %121
  %150 = load i64, i64* %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %15, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %151, i32 0, i32 2
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %149, %136
  %154 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %155 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %10, align 8
  %156 = load i32, i32* %17, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [8 x i8*], [8 x i8*]* @elf64_alpha_final_link.name, i64 0, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @bfd_ecoff_debug_one_external(%struct.TYPE_43__* %154, %struct.ecoff_debug_info* %9, %struct.ecoff_debug_swap* %155, i8* %159, %struct.TYPE_46__* %15)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %153
  %163 = load i64, i64* @FALSE, align 8
  store i64 %163, i64* %3, align 8
  br label %504

164:                                              ; preds = %153
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %17, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %17, align 4
  br label %118

168:                                              ; preds = %118
  %169 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %170, i32 0, i32 0
  %172 = load %struct.bfd_link_order*, %struct.bfd_link_order** %171, align 8
  store %struct.bfd_link_order* %172, %struct.bfd_link_order** %7, align 8
  br label %173

173:                                              ; preds = %385, %168
  %174 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %175 = icmp ne %struct.bfd_link_order* %174, null
  br i1 %175, label %176, label %389

176:                                              ; preds = %173
  %177 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %178 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @bfd_indirect_link_order, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %176
  %183 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %184 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @bfd_data_link_order, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  br label %385

189:                                              ; preds = %182
  %190 = call i32 (...) @abort() #4
  unreachable

191:                                              ; preds = %176
  %192 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %193 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_44__*, %struct.TYPE_44__** %195, align 8
  store %struct.TYPE_44__* %196, %struct.TYPE_44__** %18, align 8
  %197 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %197, i32 0, i32 8
  %199 = load %struct.TYPE_43__*, %struct.TYPE_43__** %198, align 8
  store %struct.TYPE_43__* %199, %struct.TYPE_43__** %19, align 8
  %200 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %201 = call i64 @bfd_get_flavour(%struct.TYPE_43__* %200)
  %202 = load i64, i64* @bfd_target_elf_flavour, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %210, label %204

204:                                              ; preds = %191
  %205 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %206 = call %struct.TYPE_35__* @get_elf_backend_data(%struct.TYPE_43__* %205)
  %207 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %206, i32 0, i32 0
  %208 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %207, align 8
  %209 = icmp eq %struct.ecoff_debug_swap* %208, null
  br i1 %209, label %210, label %211

210:                                              ; preds = %204, %191
  br label %385

211:                                              ; preds = %204
  %212 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %213 = call %struct.TYPE_35__* @get_elf_backend_data(%struct.TYPE_43__* %212)
  %214 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %213, i32 0, i32 0
  %215 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %214, align 8
  store %struct.ecoff_debug_swap* %215, %struct.ecoff_debug_swap** %20, align 8
  %216 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %217 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %220 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %218, %221
  %223 = zext i1 %222 to i32
  %224 = call i32 @BFD_ASSERT(i32 %223)
  %225 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %226 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %227 = call i32 @elf64_alpha_read_ecoff_info(%struct.TYPE_43__* %225, %struct.TYPE_44__* %226, %struct.ecoff_debug_info* %21)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %211
  %230 = load i64, i64* @FALSE, align 8
  store i64 %230, i64* %3, align 8
  br label %504

231:                                              ; preds = %211
  %232 = load i64, i64* %12, align 8
  %233 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %234 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %10, align 8
  %235 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %236 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %20, align 8
  %237 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %238 = call i32 @bfd_ecoff_debug_accumulate(i64 %232, %struct.TYPE_43__* %233, %struct.ecoff_debug_info* %9, %struct.ecoff_debug_swap* %234, %struct.TYPE_43__* %235, %struct.ecoff_debug_info* %21, %struct.ecoff_debug_swap* %236, %struct.bfd_link_info* %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %231
  %241 = load i64, i64* @FALSE, align 8
  store i64 %241, i64* %3, align 8
  br label %504

242:                                              ; preds = %231
  %243 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 10
  %244 = load i8*, i8** %243, align 8
  store i8* %244, i8** %22, align 8
  %245 = load i8*, i8** %22, align 8
  %246 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 12
  %247 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %20, align 8
  %250 = getelementptr inbounds %struct.ecoff_debug_swap, %struct.ecoff_debug_swap* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = mul nsw i32 %248, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %245, i64 %253
  store i8* %254, i8** %23, align 8
  br label %255

255:                                              ; preds = %338, %242
  %256 = load i8*, i8** %22, align 8
  %257 = load i8*, i8** %23, align 8
  %258 = icmp ult i8* %256, %257
  br i1 %258, label %259, label %345

259:                                              ; preds = %255
  %260 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %20, align 8
  %261 = getelementptr inbounds %struct.ecoff_debug_swap, %struct.ecoff_debug_swap* %260, i32 0, i32 1
  %262 = load i32 (%struct.TYPE_43__*, i64, %struct.TYPE_46__*)*, i32 (%struct.TYPE_43__*, i64, %struct.TYPE_46__*)** %261, align 8
  %263 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %264 = load i8*, i8** %22, align 8
  %265 = ptrtoint i8* %264 to i64
  %266 = call i32 %262(%struct.TYPE_43__* %263, i64 %265, %struct.TYPE_46__* %24)
  %267 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %24, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = load i64, i64* @scNil, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %287, label %273

273:                                              ; preds = %259
  %274 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %24, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = load i64, i64* @scUndefined, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %287, label %280

280:                                              ; preds = %273
  %281 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %24, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = load i64, i64* @scSUndefined, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %280, %273, %259
  br label %338

288:                                              ; preds = %280
  %289 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 7
  %290 = load i8*, i8** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %24, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %290, i64 %294
  store i8* %295, i8** %25, align 8
  %296 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %297 = call %struct.TYPE_40__* @alpha_elf_hash_table(%struct.bfd_link_info* %296)
  %298 = load i8*, i8** %25, align 8
  %299 = load i64, i64* @FALSE, align 8
  %300 = load i64, i64* @FALSE, align 8
  %301 = load i64, i64* @TRUE, align 8
  %302 = call %struct.alpha_elf_link_hash_entry* @alpha_elf_link_hash_lookup(%struct.TYPE_40__* %297, i8* %298, i64 %299, i64 %300, i64 %301)
  store %struct.alpha_elf_link_hash_entry* %302, %struct.alpha_elf_link_hash_entry** %26, align 8
  %303 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %26, align 8
  %304 = icmp eq %struct.alpha_elf_link_hash_entry* %303, null
  br i1 %304, label %311, label %305

305:                                              ; preds = %288
  %306 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %26, align 8
  %307 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = icmp ne i32 %309, -2
  br i1 %310, label %311, label %312

311:                                              ; preds = %305, %288
  br label %338

312:                                              ; preds = %305
  %313 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %24, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp ne i32 %314, -1
  br i1 %315, label %316, label %333

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %24, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 12
  %320 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp slt i32 %318, %321
  %323 = zext i1 %322 to i32
  %324 = call i32 @BFD_ASSERT(i32 %323)
  %325 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 11
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %24, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %326, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %24, i32 0, i32 0
  store i32 %331, i32* %332, align 8
  br label %333

333:                                              ; preds = %316, %312
  %334 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %26, align 8
  %335 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %334, i32 0, i32 0
  %336 = bitcast %struct.TYPE_46__* %335 to i8*
  %337 = bitcast %struct.TYPE_46__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %336, i8* align 8 %337, i64 80, i1 false)
  br label %338

338:                                              ; preds = %333, %311, %287
  %339 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %20, align 8
  %340 = getelementptr inbounds %struct.ecoff_debug_swap, %struct.ecoff_debug_swap* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load i8*, i8** %22, align 8
  %343 = sext i32 %341 to i64
  %344 = getelementptr inbounds i8, i8* %342, i64 %343
  store i8* %344, i8** %22, align 8
  br label %255

345:                                              ; preds = %255
  %346 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  %348 = call i32 @free(i8* %347)
  %349 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 @free(i8* %350)
  %352 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 2
  %353 = load i8*, i8** %352, align 8
  %354 = call i32 @free(i8* %353)
  %355 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 3
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 @free(i8* %356)
  %358 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 4
  %359 = load i8*, i8** %358, align 8
  %360 = call i32 @free(i8* %359)
  %361 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 5
  %362 = load i8*, i8** %361, align 8
  %363 = call i32 @free(i8* %362)
  %364 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 6
  %365 = load i8*, i8** %364, align 8
  %366 = call i32 @free(i8* %365)
  %367 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 7
  %368 = load i8*, i8** %367, align 8
  %369 = call i32 @free(i8* %368)
  %370 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 8
  %371 = load i8*, i8** %370, align 8
  %372 = call i32 @free(i8* %371)
  %373 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 9
  %374 = load i8*, i8** %373, align 8
  %375 = call i32 @free(i8* %374)
  %376 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %21, i32 0, i32 10
  %377 = load i8*, i8** %376, align 8
  %378 = call i32 @free(i8* %377)
  %379 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %380 = xor i32 %379, -1
  %381 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %382 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %381, i32 0, i32 7
  %383 = load i32, i32* %382, align 8
  %384 = and i32 %383, %380
  store i32 %384, i32* %382, align 8
  br label %385

385:                                              ; preds = %345, %210, %188
  %386 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %387 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %386, i32 0, i32 3
  %388 = load %struct.bfd_link_order*, %struct.bfd_link_order** %387, align 8
  store %struct.bfd_link_order* %388, %struct.bfd_link_order** %7, align 8
  br label %173

389:                                              ; preds = %173
  %390 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %391 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %13, i32 0, i32 4
  store %struct.TYPE_43__* %390, %struct.TYPE_43__** %391, align 8
  %392 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %393 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %13, i32 0, i32 3
  store %struct.bfd_link_info* %392, %struct.bfd_link_info** %393, align 8
  %394 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %13, i32 0, i32 2
  store %struct.ecoff_debug_info* %9, %struct.ecoff_debug_info** %394, align 8
  %395 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %10, align 8
  %396 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %13, i32 0, i32 1
  store %struct.ecoff_debug_swap* %395, %struct.ecoff_debug_swap** %396, align 8
  %397 = load i64, i64* @FALSE, align 8
  %398 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %13, i32 0, i32 0
  store i64 %397, i64* %398, align 8
  %399 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %400 = call %struct.TYPE_36__* @elf_hash_table(%struct.bfd_link_info* %399)
  %401 = load i32, i32* @elf64_alpha_output_extsym, align 4
  %402 = ptrtoint %struct.extsym_info* %13 to i64
  %403 = call i32 @elf_link_hash_traverse(%struct.TYPE_36__* %400, i32 %401, i64 %402)
  %404 = getelementptr inbounds %struct.extsym_info, %struct.extsym_info* %13, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %389
  %408 = load i64, i64* @FALSE, align 8
  store i64 %408, i64* %3, align 8
  br label %504

409:                                              ; preds = %389
  %410 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %411 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %10, align 8
  %412 = call i64 @bfd_ecoff_debug_size(%struct.TYPE_43__* %410, %struct.ecoff_debug_info* %9, %struct.ecoff_debug_swap* %411)
  %413 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %413, i32 0, i32 1
  store i64 %412, i64* %414, align 8
  %415 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %415, i32 0, i32 6
  %417 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %416, i32 0, i32 0
  store %struct.bfd_link_order* null, %struct.bfd_link_order** %417, align 8
  %418 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  store %struct.TYPE_44__* %418, %struct.TYPE_44__** %8, align 8
  br label %419

419:                                              ; preds = %409, %41
  br label %420

420:                                              ; preds = %419
  %421 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %421, i32 0, i32 10
  %423 = load %struct.TYPE_44__*, %struct.TYPE_44__** %422, align 8
  store %struct.TYPE_44__* %423, %struct.TYPE_44__** %6, align 8
  br label %38

424:                                              ; preds = %38
  %425 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %426 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %427 = call i32 @bfd_elf_final_link(%struct.TYPE_43__* %425, %struct.bfd_link_info* %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %431, label %429

429:                                              ; preds = %424
  %430 = load i64, i64* @FALSE, align 8
  store i64 %430, i64* %3, align 8
  br label %504

431:                                              ; preds = %424
  %432 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %433 = call %struct.TYPE_36__* @elf_hash_table(%struct.bfd_link_info* %432)
  %434 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %433, i32 0, i32 0
  %435 = load %struct.TYPE_43__*, %struct.TYPE_43__** %434, align 8
  store %struct.TYPE_43__* %435, %struct.TYPE_43__** %28, align 8
  %436 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %437 = call %struct.TYPE_40__* @alpha_elf_hash_table(%struct.bfd_link_info* %436)
  %438 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %437, i32 0, i32 0
  %439 = load %struct.TYPE_43__*, %struct.TYPE_43__** %438, align 8
  store %struct.TYPE_43__* %439, %struct.TYPE_43__** %27, align 8
  br label %440

440:                                              ; preds = %472, %431
  %441 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %442 = icmp ne %struct.TYPE_43__* %441, null
  br i1 %442, label %443, label %477

443:                                              ; preds = %440
  %444 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %445 = load %struct.TYPE_43__*, %struct.TYPE_43__** %28, align 8
  %446 = icmp eq %struct.TYPE_43__* %444, %445
  br i1 %446, label %447, label %448

447:                                              ; preds = %443
  br label %472

448:                                              ; preds = %443
  %449 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %450 = call %struct.TYPE_39__* @alpha_elf_tdata(%struct.TYPE_43__* %449)
  %451 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %450, i32 0, i32 0
  %452 = load %struct.TYPE_44__*, %struct.TYPE_44__** %451, align 8
  store %struct.TYPE_44__* %452, %struct.TYPE_44__** %29, align 8
  %453 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %454 = load %struct.TYPE_44__*, %struct.TYPE_44__** %29, align 8
  %455 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %454, i32 0, i32 5
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.TYPE_44__*, %struct.TYPE_44__** %29, align 8
  %458 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %457, i32 0, i32 4
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.TYPE_44__*, %struct.TYPE_44__** %29, align 8
  %461 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %460, i32 0, i32 3
  %462 = load i64, i64* %461, align 8
  %463 = trunc i64 %462 to i32
  %464 = load %struct.TYPE_44__*, %struct.TYPE_44__** %29, align 8
  %465 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %464, i32 0, i32 1
  %466 = load i64, i64* %465, align 8
  %467 = call i32 @bfd_set_section_contents(%struct.TYPE_43__* %453, i32 %456, i32 %459, i32 %463, i64 %466)
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %471, label %469

469:                                              ; preds = %448
  %470 = load i64, i64* @FALSE, align 8
  store i64 %470, i64* %3, align 8
  br label %504

471:                                              ; preds = %448
  br label %472

472:                                              ; preds = %471, %447
  %473 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %474 = call %struct.TYPE_39__* @alpha_elf_tdata(%struct.TYPE_43__* %473)
  %475 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %474, i32 0, i32 1
  %476 = load %struct.TYPE_43__*, %struct.TYPE_43__** %475, align 8
  store %struct.TYPE_43__* %476, %struct.TYPE_43__** %27, align 8
  br label %440

477:                                              ; preds = %440
  %478 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %479 = icmp ne %struct.TYPE_44__* %478, null
  br i1 %479, label %480, label %502

480:                                              ; preds = %477
  %481 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = call i32 @BFD_ASSERT(i32 %483)
  %485 = load i64, i64* %12, align 8
  %486 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %487 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %10, align 8
  %488 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %489 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %490 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 8
  %492 = call i32 @bfd_ecoff_write_accumulated_debug(i64 %485, %struct.TYPE_43__* %486, %struct.ecoff_debug_info* %9, %struct.ecoff_debug_swap* %487, %struct.bfd_link_info* %488, i32 %491)
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %496, label %494

494:                                              ; preds = %480
  %495 = load i64, i64* @FALSE, align 8
  store i64 %495, i64* %3, align 8
  br label %504

496:                                              ; preds = %480
  %497 = load i64, i64* %12, align 8
  %498 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %499 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %10, align 8
  %500 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %501 = call i32 @bfd_ecoff_debug_free(i64 %497, %struct.TYPE_43__* %498, %struct.ecoff_debug_info* %9, %struct.ecoff_debug_swap* %499, %struct.bfd_link_info* %500)
  br label %502

502:                                              ; preds = %496, %477
  %503 = load i64, i64* @TRUE, align 8
  store i64 %503, i64* %3, align 8
  br label %504

504:                                              ; preds = %502, %494, %469, %429, %407, %240, %229, %162, %98
  %505 = load i64, i64* %3, align 8
  ret i64 %505
}

declare dso_local %struct.TYPE_35__* @get_elf_backend_data(%struct.TYPE_43__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @bfd_ecoff_debug_init(%struct.TYPE_43__*, %struct.ecoff_debug_info*, %struct.ecoff_debug_swap*, %struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_44__* @bfd_get_section_by_name(%struct.TYPE_43__*, i8*) #1

declare dso_local i32 @bfd_ecoff_debug_one_external(%struct.TYPE_43__*, %struct.ecoff_debug_info*, %struct.ecoff_debug_swap*, i8*, %struct.TYPE_46__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @bfd_get_flavour(%struct.TYPE_43__*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @elf64_alpha_read_ecoff_info(%struct.TYPE_43__*, %struct.TYPE_44__*, %struct.ecoff_debug_info*) #1

declare dso_local i32 @bfd_ecoff_debug_accumulate(i64, %struct.TYPE_43__*, %struct.ecoff_debug_info*, %struct.ecoff_debug_swap*, %struct.TYPE_43__*, %struct.ecoff_debug_info*, %struct.ecoff_debug_swap*, %struct.bfd_link_info*) #1

declare dso_local %struct.alpha_elf_link_hash_entry* @alpha_elf_link_hash_lookup(%struct.TYPE_40__*, i8*, i64, i64, i64) #1

declare dso_local %struct.TYPE_40__* @alpha_elf_hash_table(%struct.bfd_link_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @elf_link_hash_traverse(%struct.TYPE_36__*, i32, i64) #1

declare dso_local %struct.TYPE_36__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @bfd_ecoff_debug_size(%struct.TYPE_43__*, %struct.ecoff_debug_info*, %struct.ecoff_debug_swap*) #1

declare dso_local i32 @bfd_elf_final_link(%struct.TYPE_43__*, %struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_39__* @alpha_elf_tdata(%struct.TYPE_43__*) #1

declare dso_local i32 @bfd_set_section_contents(%struct.TYPE_43__*, i32, i32, i32, i64) #1

declare dso_local i32 @bfd_ecoff_write_accumulated_debug(i64, %struct.TYPE_43__*, %struct.ecoff_debug_info*, %struct.ecoff_debug_swap*, %struct.bfd_link_info*, i32) #1

declare dso_local i32 @bfd_ecoff_debug_free(i64, %struct.TYPE_43__*, %struct.ecoff_debug_info*, %struct.ecoff_debug_swap*, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
