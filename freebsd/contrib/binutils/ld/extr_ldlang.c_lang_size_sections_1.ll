; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_size_sections_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_size_sections_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_64__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_68__ = type { i32, %struct.TYPE_66__ }
%struct.TYPE_66__ = type { i32, %struct.TYPE_62__*, i32 }
%struct.TYPE_62__ = type { i32 }
%struct.TYPE_65__ = type { %struct.TYPE_64__*, i32 }
%struct.TYPE_67__ = type { i8*, i32* }
%struct.TYPE_72__ = type { i32 }
%struct.TYPE_71__ = type { i32 }
%struct.TYPE_70__ = type { %struct.TYPE_59__* }
%struct.TYPE_59__ = type { %struct.TYPE_58__, %struct.TYPE_57__, %struct.TYPE_55__, %struct.TYPE_52__, %struct.TYPE_78__, %struct.TYPE_77__, %struct.TYPE_76__, %struct.TYPE_74__, %struct.TYPE_73__, %struct.TYPE_60__ }
%struct.TYPE_58__ = type { i32, %struct.TYPE_59__* }
%struct.TYPE_57__ = type { %struct.TYPE_56__ }
%struct.TYPE_56__ = type { %struct.TYPE_59__* }
%struct.TYPE_55__ = type { i32, i32 }
%struct.TYPE_52__ = type { %struct.TYPE_63__* }
%struct.TYPE_63__ = type { %struct.TYPE_54__, %struct.TYPE_53__ }
%struct.TYPE_54__ = type { i8* }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_78__ = type { i32*, %struct.TYPE_64__* }
%struct.TYPE_77__ = type { %struct.TYPE_64__* }
%struct.TYPE_76__ = type { %struct.TYPE_75__ }
%struct.TYPE_75__ = type { %struct.TYPE_59__* }
%struct.TYPE_74__ = type { i32, i32, %struct.TYPE_64__* }
%struct.TYPE_73__ = type { i32, i32, %struct.TYPE_63__*, %struct.TYPE_64__* }
%struct.TYPE_60__ = type { i32, i32, i32, i32, %struct.TYPE_64__*, i32, i32*, %struct.TYPE_61__*, %struct.TYPE_61__*, %struct.TYPE_63__*, %struct.TYPE_63__*, i8*, i32, i32, i32, i8*, %struct.TYPE_69__ }
%struct.TYPE_61__ = type { i8*, i32, %struct.TYPE_59__* }
%struct.TYPE_69__ = type { %struct.TYPE_59__* }

@FALSE = common dso_local global i8* null, align 8
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_64__* null, align 8
@expld = common dso_local global %struct.TYPE_68__ zeroinitializer, align 8
@lang_mark_phase_enum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"%F%S: non constant or forward reference address expression for section %s\0A\00", align 1
@output_bfd = common dso_local global i32 0, align 4
@bfd_target_ecoff_flavour = common dso_local global i32 0, align 4
@bfd_target_coff_flavour = common dso_local global i32 0, align 4
@SEC_COFF_SHARED_LIBRARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"%P%X: Internal error on COFF shared library section %s\0A\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@DEFAULT_MEMORY_REGION = common dso_local global i32 0, align 4
@link_info = common dso_local global %struct.TYPE_65__ zeroinitializer, align 8
@lang_memory_region_list = common dso_local global %struct.TYPE_67__* null, align 8
@command_line = common dso_local global %struct.TYPE_72__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"%P%F: error: no memory region specified for loadable section `%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"%P: warning: no memory region specified for loadable section `%s'\0A\00", align 1
@config = common dso_local global %struct.TYPE_71__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"%P: warning: changing start of section %s by %lu bytes\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"load base\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%P: warning: dot moved backwards before `%s'\0A\00", align 1
@overlay_section = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_THREAD_LOCAL = common dso_local global i32 0, align 4
@SEC_NEVER_LOAD = common dso_local global i32 0, align 4
@constructor_list = common dso_local global %struct.TYPE_70__ zeroinitializer, align 8
@QUAD_SIZE = common dso_local global i32 0, align 4
@LONG_SIZE = common dso_local global i32 0, align 4
@SHORT_SIZE = common dso_local global i32 0, align 4
@BYTE_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"%P%F: can't relax section: %E\0A\00", align 1
@etree_provided = common dso_local global i32 0, align 4
@etree_assign = common dso_local global i32 0, align 4
@abs_output_section = common dso_local global %struct.TYPE_60__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_59__*, %struct.TYPE_60__*, %struct.TYPE_59__**, i32*, i32, i8**, i8*)* @lang_size_sections_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lang_size_sections_1(%struct.TYPE_59__* %0, %struct.TYPE_60__* %1, %struct.TYPE_59__** %2, i32* %3, i32 %4, i8** %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_59__*, align 8
  %9 = alloca %struct.TYPE_60__*, align 8
  %10 = alloca %struct.TYPE_59__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_60__*, align 8
  %18 = alloca %struct.TYPE_61__*, align 8
  %19 = alloca %struct.TYPE_64__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_64__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_64__*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_63__*, align 8
  store %struct.TYPE_59__* %0, %struct.TYPE_59__** %8, align 8
  store %struct.TYPE_60__* %1, %struct.TYPE_60__** %9, align 8
  store %struct.TYPE_59__** %2, %struct.TYPE_59__*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  store i8* %6, i8** %14, align 8
  br label %32

32:                                               ; preds = %1122, %7
  %33 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %34 = icmp ne %struct.TYPE_59__* %33, null
  br i1 %34, label %35, label %1127

35:                                               ; preds = %32
  %36 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %1115 [
    i32 133, label %40
    i32 140, label %816
    i32 139, label %828
    i32 130, label %883
    i32 128, label %916
    i32 134, label %932
    i32 132, label %936
    i32 129, label %936
    i32 136, label %937
    i32 135, label %970
    i32 138, label %971
    i32 141, label %982
    i32 131, label %1085
    i32 137, label %1099
    i32 142, label %1117
  ]

40:                                               ; preds = %35
  %41 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %41, i32 0, i32 9
  store %struct.TYPE_60__* %42, %struct.TYPE_60__** %17, align 8
  %43 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %43, i32 0, i32 9
  %45 = load %struct.TYPE_63__*, %struct.TYPE_63__** %44, align 8
  %46 = icmp ne %struct.TYPE_63__* %45, null
  br i1 %46, label %47, label %74

47:                                               ; preds = %40
  %48 = load i8*, i8** @FALSE, align 8
  %49 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %49, i32 0, i32 15
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %51, i32 0, i32 9
  %53 = load %struct.TYPE_63__*, %struct.TYPE_63__** %52, align 8
  %54 = load %struct.TYPE_64__*, %struct.TYPE_64__** @bfd_abs_section_ptr, align 8
  %55 = call i32 @exp_fold_tree(%struct.TYPE_63__* %53, %struct.TYPE_64__* %54, i32* %12)
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_68__, %struct.TYPE_68__* @expld, i32 0, i32 1, i32 2), align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_68__, %struct.TYPE_68__* @expld, i32 0, i32 0), align 8
  %60 = load i32, i32* @lang_mark_phase_enum, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %64, i32 0, i32 13
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, ...) @einfo(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %58, %47
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_68__, %struct.TYPE_68__* @expld, i32 0, i32 1, i32 0), align 8
  %70 = load %struct.TYPE_62__*, %struct.TYPE_62__** getelementptr inbounds (%struct.TYPE_68__, %struct.TYPE_68__* @expld, i32 0, i32 1, i32 1), align 8
  %71 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %69, %72
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %68, %40
  %75 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_64__*, %struct.TYPE_64__** %76, align 8
  %78 = icmp eq %struct.TYPE_64__* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %1118

80:                                               ; preds = %74
  %81 = load i32, i32* @output_bfd, align 4
  %82 = call i32 @bfd_get_flavour(i32 %81)
  %83 = load i32, i32* @bfd_target_ecoff_flavour, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @output_bfd, align 4
  %87 = call i32 @bfd_get_flavour(i32 %86)
  %88 = load i32, i32* @bfd_target_coff_flavour, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %158

90:                                               ; preds = %85, %80
  %91 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_64__*, %struct.TYPE_64__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SEC_COFF_SHARED_LIBRARY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %158

99:                                               ; preds = %90
  %100 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %100, i32 0, i32 16
  %102 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_59__*, %struct.TYPE_59__** %102, align 8
  %104 = icmp eq %struct.TYPE_59__* %103, null
  br i1 %104, label %123, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %106, i32 0, i32 16
  %108 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_59__*, %struct.TYPE_59__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_59__*, %struct.TYPE_59__** %111, align 8
  %113 = icmp ne %struct.TYPE_59__* %112, null
  br i1 %113, label %123, label %114

114:                                              ; preds = %105
  %115 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %115, i32 0, i32 16
  %117 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_59__*, %struct.TYPE_59__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 136
  br i1 %122, label %123, label %129

123:                                              ; preds = %114, %105, %99
  %124 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %125, i32 0, i32 13
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, ...) @einfo(i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %114
  %130 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %130, i32 0, i32 16
  %132 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_59__*, %struct.TYPE_59__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_64__*, %struct.TYPE_64__** %135, align 8
  store %struct.TYPE_64__* %136, %struct.TYPE_64__** %19, align 8
  %137 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_64__*, %struct.TYPE_64__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_64__*, %struct.TYPE_64__** %143, align 8
  %145 = load %struct.TYPE_64__*, %struct.TYPE_64__** %19, align 8
  %146 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_64__*, %struct.TYPE_64__** %19, align 8
  %149 = call i32 @bfd_section_vma(i32 %147, %struct.TYPE_64__* %148)
  %150 = call i32 @bfd_set_section_vma(i32 %141, %struct.TYPE_64__* %144, i32 %149)
  %151 = load %struct.TYPE_64__*, %struct.TYPE_64__** %19, align 8
  %152 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_64__*, %struct.TYPE_64__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %156, i32 0, i32 1
  store i32 %153, i32* %157, align 4
  br label %1118

158:                                              ; preds = %90, %85
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %15, align 4
  %160 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_64__*, %struct.TYPE_64__** %161, align 8
  %163 = call i32 @bfd_is_abs_section(%struct.TYPE_64__* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %158
  %166 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_64__*, %struct.TYPE_64__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 @ASSERT(i32 %172)
  br label %345

174:                                              ; preds = %158
  %175 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %175, i32 0, i32 9
  %177 = load %struct.TYPE_63__*, %struct.TYPE_63__** %176, align 8
  %178 = icmp eq %struct.TYPE_63__* %177, null
  br i1 %178, label %179, label %297

179:                                              ; preds = %174
  %180 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %180, i32 0, i32 8
  %182 = load %struct.TYPE_61__*, %struct.TYPE_61__** %181, align 8
  %183 = icmp eq %struct.TYPE_61__* %182, null
  br i1 %183, label %214, label %184

184:                                              ; preds = %179
  %185 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %185, i32 0, i32 4
  %187 = load %struct.TYPE_64__*, %struct.TYPE_64__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @SEC_ALLOC, align 4
  %191 = load i32, i32* @SEC_LOAD, align 4
  %192 = or i32 %190, %191
  %193 = and i32 %189, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %221

195:                                              ; preds = %184
  %196 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %196, i32 0, i32 8
  %198 = load %struct.TYPE_61__*, %struct.TYPE_61__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 42
  br i1 %204, label %205, label %221

205:                                              ; preds = %195
  %206 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %206, i32 0, i32 8
  %208 = load %struct.TYPE_61__*, %struct.TYPE_61__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = load i32, i32* @DEFAULT_MEMORY_REGION, align 4
  %212 = call i32 @strcmp(i8* %210, i32 %211)
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %205, %179
  %215 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %216 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %215, i32 0, i32 4
  %217 = load %struct.TYPE_64__*, %struct.TYPE_64__** %216, align 8
  %218 = call %struct.TYPE_61__* @lang_memory_default(%struct.TYPE_64__* %217)
  %219 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %220 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %219, i32 0, i32 8
  store %struct.TYPE_61__* %218, %struct.TYPE_61__** %220, align 8
  br label %221

221:                                              ; preds = %214, %205, %195, %184
  %222 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %286, label %226

226:                                              ; preds = %221
  %227 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %227, i32 0, i32 4
  %229 = load %struct.TYPE_64__*, %struct.TYPE_64__** %228, align 8
  %230 = call i32 @IGNORE_SECTION(%struct.TYPE_64__* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %286, label %232

232:                                              ; preds = %226
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_65__, %struct.TYPE_65__* @link_info, i32 0, i32 1), align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %286, label %235

235:                                              ; preds = %232
  %236 = load i8*, i8** %14, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %286

238:                                              ; preds = %235
  %239 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %240 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %239, i32 0, i32 8
  %241 = load %struct.TYPE_61__*, %struct.TYPE_61__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = load i32, i32* @DEFAULT_MEMORY_REGION, align 4
  %245 = call i32 @strcmp(i8* %243, i32 %244)
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %286

247:                                              ; preds = %238
  %248 = load %struct.TYPE_67__*, %struct.TYPE_67__** @lang_memory_region_list, align 8
  %249 = icmp ne %struct.TYPE_67__* %248, null
  br i1 %249, label %250, label %286

250:                                              ; preds = %247
  %251 = load %struct.TYPE_67__*, %struct.TYPE_67__** @lang_memory_region_list, align 8
  %252 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load i32, i32* @DEFAULT_MEMORY_REGION, align 4
  %255 = call i32 @strcmp(i8* %253, i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %250
  %258 = load %struct.TYPE_67__*, %struct.TYPE_67__** @lang_memory_region_list, align 8
  %259 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %286

262:                                              ; preds = %257, %250
  %263 = load i32, i32* getelementptr inbounds (%struct.TYPE_68__, %struct.TYPE_68__* @expld, i32 0, i32 0), align 8
  %264 = load i32, i32* @lang_mark_phase_enum, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %286

266:                                              ; preds = %262
  %267 = load i32, i32* getelementptr inbounds (%struct.TYPE_72__, %struct.TYPE_72__* @command_line, i32 0, i32 0), align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %266
  %270 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %271 = load i32, i32* @output_bfd, align 4
  %272 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %273 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %272, i32 0, i32 4
  %274 = load %struct.TYPE_64__*, %struct.TYPE_64__** %273, align 8
  %275 = call i32 @bfd_get_section_name(i32 %271, %struct.TYPE_64__* %274)
  %276 = call i32 (i32, ...) @einfo(i32 %270, i32 %275)
  br label %285

277:                                              ; preds = %266
  %278 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %279 = load i32, i32* @output_bfd, align 4
  %280 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %281 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %280, i32 0, i32 4
  %282 = load %struct.TYPE_64__*, %struct.TYPE_64__** %281, align 8
  %283 = call i32 @bfd_get_section_name(i32 %279, %struct.TYPE_64__* %282)
  %284 = call i32 (i32, ...) @einfo(i32 %278, i32 %283)
  br label %285

285:                                              ; preds = %277, %269
  br label %286

286:                                              ; preds = %285, %262, %257, %247, %238, %235, %232, %226, %221
  %287 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %287, i32 0, i32 8
  %289 = load %struct.TYPE_61__*, %struct.TYPE_61__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  store i32 %291, i32* %15, align 4
  %292 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %293 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %292, i32 0, i32 4
  %294 = load %struct.TYPE_64__*, %struct.TYPE_64__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  store i32 %296, i32* %20, align 4
  br label %301

297:                                              ; preds = %174
  %298 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %299 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  store i32 %300, i32* %20, align 4
  br label %301

301:                                              ; preds = %297, %286
  %302 = load i32, i32* %20, align 4
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %335

304:                                              ; preds = %301
  %305 = load i32, i32* %15, align 4
  store i32 %305, i32* %21, align 4
  %306 = load i32, i32* %15, align 4
  %307 = load i32, i32* %20, align 4
  %308 = call i32 @align_power(i32 %306, i32 %307)
  store i32 %308, i32* %15, align 4
  %309 = load i32, i32* %15, align 4
  %310 = load i32, i32* %21, align 4
  %311 = icmp ne i32 %309, %310
  br i1 %311, label %312, label %334

312:                                              ; preds = %304
  %313 = load i32, i32* getelementptr inbounds (%struct.TYPE_71__, %struct.TYPE_71__* @config, i32 0, i32 0), align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %320, label %315

315:                                              ; preds = %312
  %316 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %317 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %316, i32 0, i32 9
  %318 = load %struct.TYPE_63__*, %struct.TYPE_63__** %317, align 8
  %319 = icmp ne %struct.TYPE_63__* %318, null
  br i1 %319, label %320, label %334

320:                                              ; preds = %315, %312
  %321 = load i32, i32* getelementptr inbounds (%struct.TYPE_68__, %struct.TYPE_68__* @expld, i32 0, i32 0), align 8
  %322 = load i32, i32* @lang_mark_phase_enum, align 4
  %323 = icmp ne i32 %321, %322
  br i1 %323, label %324, label %334

324:                                              ; preds = %320
  %325 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %326 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %327 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %326, i32 0, i32 13
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %15, align 4
  %330 = load i32, i32* %21, align 4
  %331 = sub i32 %329, %330
  %332 = zext i32 %331 to i64
  %333 = call i32 (i32, ...) @einfo(i32 %325, i32 %328, i64 %332)
  br label %334

334:                                              ; preds = %324, %320, %315, %304
  br label %335

335:                                              ; preds = %334, %301
  %336 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %337 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %336, i32 0, i32 4
  %338 = load %struct.TYPE_64__*, %struct.TYPE_64__** %337, align 8
  %339 = load i32, i32* %15, align 4
  %340 = call i32 @bfd_set_section_vma(i32 0, %struct.TYPE_64__* %338, i32 %339)
  %341 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %342 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %341, i32 0, i32 4
  %343 = load %struct.TYPE_64__*, %struct.TYPE_64__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %343, i32 0, i32 6
  store i32 0, i32* %344, align 4
  br label %345

345:                                              ; preds = %335, %165
  %346 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %347 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %346, i32 0, i32 16
  %348 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_59__*, %struct.TYPE_59__** %348, align 8
  %350 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %351 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %352 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %351, i32 0, i32 16
  %353 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %352, i32 0, i32 0
  %354 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %355 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %354, i32 0, i32 6
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %15, align 4
  %358 = load i8**, i8*** %13, align 8
  %359 = load i8*, i8** %14, align 8
  %360 = call i32 @lang_size_sections_1(%struct.TYPE_59__* %349, %struct.TYPE_60__* %350, %struct.TYPE_59__** %353, i32* %356, i32 %357, i8** %358, i8* %359)
  %361 = load i8*, i8** @TRUE, align 8
  %362 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %363 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %362, i32 0, i32 15
  store i8* %361, i8** %363, align 8
  %364 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %365 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %364, i32 0, i32 4
  %366 = load %struct.TYPE_64__*, %struct.TYPE_64__** %365, align 8
  %367 = call i32 @bfd_is_abs_section(%struct.TYPE_64__* %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %374, label %369

369:                                              ; preds = %345
  %370 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %371 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %370, i32 0, i32 5
  %372 = load i32, i32* %371, align 8
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %383

374:                                              ; preds = %369, %345
  %375 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %376 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %375, i32 0, i32 4
  %377 = load %struct.TYPE_64__*, %struct.TYPE_64__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = icmp eq i32 %379, 0
  %381 = zext i1 %380 to i32
  %382 = call i32 @ASSERT(i32 %381)
  br label %419

383:                                              ; preds = %369
  %384 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %385 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %384, i32 0, i32 4
  %386 = load %struct.TYPE_64__*, %struct.TYPE_64__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 4
  store i32 %388, i32* %12, align 4
  %389 = load i32, i32* %12, align 4
  %390 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %391 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %390, i32 0, i32 4
  %392 = load %struct.TYPE_64__*, %struct.TYPE_64__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @TO_ADDR(i32 %394)
  %396 = add i32 %389, %395
  %397 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %398 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = add i32 %396, %399
  %401 = sub i32 %400, 1
  %402 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %403 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = sub i32 0, %404
  %406 = and i32 %401, %405
  store i32 %406, i32* %16, align 4
  %407 = load i32, i32* %16, align 4
  %408 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %409 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %408, i32 0, i32 4
  %410 = load %struct.TYPE_64__*, %struct.TYPE_64__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 4
  %413 = sub i32 %407, %412
  %414 = call i32 @TO_SIZE(i32 %413)
  %415 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %416 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %415, i32 0, i32 4
  %417 = load %struct.TYPE_64__*, %struct.TYPE_64__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %417, i32 0, i32 1
  store i32 %414, i32* %418, align 4
  br label %419

419:                                              ; preds = %383, %374
  %420 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %421 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %420, i32 0, i32 8
  %422 = load %struct.TYPE_61__*, %struct.TYPE_61__** %421, align 8
  store %struct.TYPE_61__* %422, %struct.TYPE_61__** %18, align 8
  %423 = load %struct.TYPE_61__*, %struct.TYPE_61__** %18, align 8
  %424 = icmp eq %struct.TYPE_61__* %423, null
  br i1 %424, label %425, label %429

425:                                              ; preds = %419
  %426 = load i32, i32* @DEFAULT_MEMORY_REGION, align 4
  %427 = load i8*, i8** @FALSE, align 8
  %428 = call %struct.TYPE_61__* @lang_memory_region_lookup(i32 %426, i8* %427)
  store %struct.TYPE_61__* %428, %struct.TYPE_61__** %18, align 8
  br label %429

429:                                              ; preds = %425, %419
  %430 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %431 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %430, i32 0, i32 14
  %432 = load i32, i32* %431, align 8
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %444

434:                                              ; preds = %429
  %435 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %436 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %435, i32 0, i32 14
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @exp_get_abs_int(i32 %437, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 %438, i32* %22, align 4
  %439 = load i32, i32* %22, align 4
  %440 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %441 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %440, i32 0, i32 4
  %442 = load %struct.TYPE_64__*, %struct.TYPE_64__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %442, i32 0, i32 4
  store i32 %439, i32* %443, align 4
  br label %588

444:                                              ; preds = %429
  %445 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %446 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %445, i32 0, i32 8
  %447 = load %struct.TYPE_61__*, %struct.TYPE_61__** %446, align 8
  %448 = icmp ne %struct.TYPE_61__* %447, null
  br i1 %448, label %449, label %484

449:                                              ; preds = %444
  %450 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %451 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %450, i32 0, i32 7
  %452 = load %struct.TYPE_61__*, %struct.TYPE_61__** %451, align 8
  %453 = icmp ne %struct.TYPE_61__* %452, null
  br i1 %453, label %454, label %484

454:                                              ; preds = %449
  %455 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %456 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %455, i32 0, i32 7
  %457 = load %struct.TYPE_61__*, %struct.TYPE_61__** %456, align 8
  %458 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %459 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %458, i32 0, i32 8
  %460 = load %struct.TYPE_61__*, %struct.TYPE_61__** %459, align 8
  %461 = icmp ne %struct.TYPE_61__* %457, %460
  br i1 %461, label %462, label %484

462:                                              ; preds = %454
  %463 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %464 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %463, i32 0, i32 7
  %465 = load %struct.TYPE_61__*, %struct.TYPE_61__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 8
  store i32 %467, i32* %23, align 4
  %468 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %469 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = icmp ne i32 %470, -1
  br i1 %471, label %472, label %478

472:                                              ; preds = %462
  %473 = load i32, i32* %23, align 4
  %474 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %475 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = call i32 @align_power(i32 %473, i32 %476)
  store i32 %477, i32* %23, align 4
  br label %478

478:                                              ; preds = %472, %462
  %479 = load i32, i32* %23, align 4
  %480 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %481 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %480, i32 0, i32 4
  %482 = load %struct.TYPE_64__*, %struct.TYPE_64__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %482, i32 0, i32 4
  store i32 %479, i32* %483, align 4
  br label %587

484:                                              ; preds = %454, %449, %444
  %485 = load %struct.TYPE_61__*, %struct.TYPE_61__** %18, align 8
  %486 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %485, i32 0, i32 2
  %487 = load %struct.TYPE_59__*, %struct.TYPE_59__** %486, align 8
  %488 = icmp ne %struct.TYPE_59__* %487, null
  br i1 %488, label %489, label %586

489:                                              ; preds = %484
  %490 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %491 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %490, i32 0, i32 4
  %492 = load %struct.TYPE_64__*, %struct.TYPE_64__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* @SEC_ALLOC, align 4
  %496 = and i32 %494, %495
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %586

498:                                              ; preds = %489
  %499 = load %struct.TYPE_61__*, %struct.TYPE_61__** %18, align 8
  %500 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %499, i32 0, i32 2
  %501 = load %struct.TYPE_59__*, %struct.TYPE_59__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %501, i32 0, i32 9
  %503 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %502, i32 0, i32 4
  %504 = load %struct.TYPE_64__*, %struct.TYPE_64__** %503, align 8
  store %struct.TYPE_64__* %504, %struct.TYPE_64__** %25, align 8
  %505 = load i32, i32* %12, align 4
  %506 = load %struct.TYPE_64__*, %struct.TYPE_64__** %25, align 8
  %507 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %506, i32 0, i32 2
  %508 = load i32, i32* %507, align 4
  %509 = icmp ult i32 %505, %508
  br i1 %509, label %510, label %544

510:                                              ; preds = %498
  %511 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %512 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %511, i32 0, i32 4
  %513 = load %struct.TYPE_64__*, %struct.TYPE_64__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %544

517:                                              ; preds = %510
  %518 = load i32, i32* %12, align 4
  %519 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %520 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %519, i32 0, i32 4
  %521 = load %struct.TYPE_64__*, %struct.TYPE_64__** %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 4
  %524 = add i32 %518, %523
  %525 = load %struct.TYPE_64__*, %struct.TYPE_64__** %25, align 8
  %526 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %525, i32 0, i32 2
  %527 = load i32, i32* %526, align 4
  %528 = icmp ule i32 %524, %527
  br i1 %528, label %529, label %544

529:                                              ; preds = %517
  %530 = load %struct.TYPE_64__*, %struct.TYPE_64__** %25, align 8
  %531 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %530, i32 0, i32 2
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.TYPE_64__*, %struct.TYPE_64__** %25, align 8
  %534 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %533, i32 0, i32 4
  %535 = load i32, i32* %534, align 4
  %536 = icmp ne i32 %532, %535
  br i1 %536, label %537, label %543

537:                                              ; preds = %529
  %538 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %539 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %540 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %539, i32 0, i32 13
  %541 = load i32, i32* %540, align 4
  %542 = call i32 (i32, ...) @einfo(i32 %538, i32 %541)
  br label %543

543:                                              ; preds = %537, %529
  br label %585

544:                                              ; preds = %517, %510, %498
  %545 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %546 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %545, i32 0, i32 12
  %547 = load i32, i32* %546, align 8
  %548 = load i32, i32* @overlay_section, align 4
  %549 = icmp eq i32 %547, %548
  br i1 %549, label %550, label %558

550:                                              ; preds = %544
  %551 = load %struct.TYPE_64__*, %struct.TYPE_64__** %25, align 8
  %552 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %551, i32 0, i32 4
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.TYPE_64__*, %struct.TYPE_64__** %25, align 8
  %555 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 4
  %557 = add i32 %553, %556
  store i32 %557, i32* %24, align 4
  br label %568

558:                                              ; preds = %544
  %559 = load i32, i32* %12, align 4
  %560 = load %struct.TYPE_64__*, %struct.TYPE_64__** %25, align 8
  %561 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %560, i32 0, i32 4
  %562 = load i32, i32* %561, align 4
  %563 = add i32 %559, %562
  %564 = load %struct.TYPE_64__*, %struct.TYPE_64__** %25, align 8
  %565 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %564, i32 0, i32 2
  %566 = load i32, i32* %565, align 4
  %567 = sub i32 %563, %566
  store i32 %567, i32* %24, align 4
  br label %568

568:                                              ; preds = %558, %550
  %569 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %570 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  %572 = icmp ne i32 %571, -1
  br i1 %572, label %573, label %579

573:                                              ; preds = %568
  %574 = load i32, i32* %24, align 4
  %575 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %576 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 8
  %578 = call i32 @align_power(i32 %574, i32 %577)
  store i32 %578, i32* %24, align 4
  br label %579

579:                                              ; preds = %573, %568
  %580 = load i32, i32* %24, align 4
  %581 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %582 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %581, i32 0, i32 4
  %583 = load %struct.TYPE_64__*, %struct.TYPE_64__** %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %583, i32 0, i32 4
  store i32 %580, i32* %584, align 4
  br label %585

585:                                              ; preds = %579, %543
  br label %586

586:                                              ; preds = %585, %489, %484
  br label %587

587:                                              ; preds = %586, %478
  br label %588

588:                                              ; preds = %587, %434
  %589 = load i8*, i8** @TRUE, align 8
  %590 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %591 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %590, i32 0, i32 11
  store i8* %589, i8** %591, align 8
  %592 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %593 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %592, i32 0, i32 4
  %594 = load %struct.TYPE_64__*, %struct.TYPE_64__** %593, align 8
  %595 = call i32 @bfd_is_abs_section(%struct.TYPE_64__* %594)
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %602, label %597

597:                                              ; preds = %588
  %598 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %599 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %598, i32 0, i32 5
  %600 = load i32, i32* %599, align 8
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %597, %588
  br label %1118

603:                                              ; preds = %597
  %604 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %605 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %604, i32 0, i32 4
  %606 = load %struct.TYPE_64__*, %struct.TYPE_64__** %605, align 8
  %607 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %610 = and i32 %608, %609
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %621, label %612

612:                                              ; preds = %603
  %613 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %614 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %613, i32 0, i32 4
  %615 = load %struct.TYPE_64__*, %struct.TYPE_64__** %614, align 8
  %616 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 4
  %618 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %619 = and i32 %617, %618
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %682

621:                                              ; preds = %612, %603
  %622 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %623 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %622, i32 0, i32 4
  %624 = load %struct.TYPE_64__*, %struct.TYPE_64__** %623, align 8
  %625 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %624, i32 0, i32 0
  %626 = load i32, i32* %625, align 4
  %627 = load i32, i32* @SEC_ALLOC, align 4
  %628 = and i32 %626, %627
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %682

630:                                              ; preds = %621
  %631 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %632 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %631, i32 0, i32 4
  %633 = load %struct.TYPE_64__*, %struct.TYPE_64__** %632, align 8
  %634 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %633, i32 0, i32 1
  %635 = load i32, i32* %634, align 4
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %670, label %637

637:                                              ; preds = %630
  %638 = load %struct.TYPE_61__*, %struct.TYPE_61__** %18, align 8
  %639 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %638, i32 0, i32 2
  %640 = load %struct.TYPE_59__*, %struct.TYPE_59__** %639, align 8
  %641 = icmp eq %struct.TYPE_59__* %640, null
  br i1 %641, label %642, label %654

642:                                              ; preds = %637
  %643 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %644 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %643, i32 0, i32 4
  %645 = load %struct.TYPE_64__*, %struct.TYPE_64__** %644, align 8
  %646 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %645, i32 0, i32 2
  %647 = load i32, i32* %646, align 4
  %648 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %649 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %648, i32 0, i32 4
  %650 = load %struct.TYPE_64__*, %struct.TYPE_64__** %649, align 8
  %651 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %650, i32 0, i32 4
  %652 = load i32, i32* %651, align 4
  %653 = icmp ne i32 %647, %652
  br i1 %653, label %670, label %654

654:                                              ; preds = %642, %637
  %655 = load %struct.TYPE_61__*, %struct.TYPE_61__** %18, align 8
  %656 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %655, i32 0, i32 2
  %657 = load %struct.TYPE_59__*, %struct.TYPE_59__** %656, align 8
  %658 = icmp ne %struct.TYPE_59__* %657, null
  br i1 %658, label %659, label %682

659:                                              ; preds = %654
  %660 = load i32, i32* %12, align 4
  %661 = load %struct.TYPE_61__*, %struct.TYPE_61__** %18, align 8
  %662 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %661, i32 0, i32 2
  %663 = load %struct.TYPE_59__*, %struct.TYPE_59__** %662, align 8
  %664 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %663, i32 0, i32 9
  %665 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %664, i32 0, i32 4
  %666 = load %struct.TYPE_64__*, %struct.TYPE_64__** %665, align 8
  %667 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %666, i32 0, i32 2
  %668 = load i32, i32* %667, align 4
  %669 = icmp uge i32 %660, %668
  br i1 %669, label %670, label %682

670:                                              ; preds = %659, %642, %630
  %671 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %672 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %671, i32 0, i32 7
  %673 = load %struct.TYPE_61__*, %struct.TYPE_61__** %672, align 8
  %674 = icmp eq %struct.TYPE_61__* %673, null
  br i1 %674, label %675, label %682

675:                                              ; preds = %670
  %676 = load i32, i32* getelementptr inbounds (%struct.TYPE_65__, %struct.TYPE_65__* @link_info, i32 0, i32 1), align 8
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %682, label %678

678:                                              ; preds = %675
  %679 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %680 = load %struct.TYPE_61__*, %struct.TYPE_61__** %18, align 8
  %681 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %680, i32 0, i32 2
  store %struct.TYPE_59__* %679, %struct.TYPE_59__** %681, align 8
  br label %682

682:                                              ; preds = %678, %675, %670, %659, %654, %621, %612
  %683 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %684 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %683, i32 0, i32 4
  %685 = load %struct.TYPE_64__*, %struct.TYPE_64__** %684, align 8
  %686 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %685, i32 0, i32 0
  %687 = load i32, i32* %686, align 4
  %688 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %689 = and i32 %687, %688
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %703, label %691

691:                                              ; preds = %682
  %692 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %693 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %692, i32 0, i32 4
  %694 = load %struct.TYPE_64__*, %struct.TYPE_64__** %693, align 8
  %695 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %694, i32 0, i32 0
  %696 = load i32, i32* %695, align 4
  %697 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %698 = and i32 %696, %697
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %703, label %700

700:                                              ; preds = %691
  %701 = load i32, i32* getelementptr inbounds (%struct.TYPE_65__, %struct.TYPE_65__* @link_info, i32 0, i32 1), align 8
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %712

703:                                              ; preds = %700, %691, %682
  %704 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %705 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %704, i32 0, i32 4
  %706 = load %struct.TYPE_64__*, %struct.TYPE_64__** %705, align 8
  %707 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %706, i32 0, i32 1
  %708 = load i32, i32* %707, align 4
  %709 = call i32 @TO_ADDR(i32 %708)
  %710 = load i32, i32* %12, align 4
  %711 = add i32 %710, %709
  store i32 %711, i32* %12, align 4
  br label %712

712:                                              ; preds = %703, %700
  %713 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %714 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %713, i32 0, i32 10
  %715 = load %struct.TYPE_63__*, %struct.TYPE_63__** %714, align 8
  %716 = icmp ne %struct.TYPE_63__* %715, null
  br i1 %716, label %717, label %723

717:                                              ; preds = %712
  %718 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %719 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %718, i32 0, i32 10
  %720 = load %struct.TYPE_63__*, %struct.TYPE_63__** %719, align 8
  %721 = load %struct.TYPE_64__*, %struct.TYPE_64__** @bfd_abs_section_ptr, align 8
  %722 = call i32 @exp_fold_tree(%struct.TYPE_63__* %720, %struct.TYPE_64__* %721, i32* %12)
  br label %723

723:                                              ; preds = %717, %712
  %724 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %725 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %724, i32 0, i32 8
  %726 = load %struct.TYPE_61__*, %struct.TYPE_61__** %725, align 8
  %727 = icmp ne %struct.TYPE_61__* %726, null
  br i1 %727, label %728, label %815

728:                                              ; preds = %723
  %729 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %730 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %729, i32 0, i32 4
  %731 = load %struct.TYPE_64__*, %struct.TYPE_64__** %730, align 8
  %732 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %731, i32 0, i32 0
  %733 = load i32, i32* %732, align 4
  %734 = load i32, i32* @SEC_NEVER_LOAD, align 4
  %735 = and i32 %733, %734
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %748, label %737

737:                                              ; preds = %728
  %738 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %739 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %738, i32 0, i32 4
  %740 = load %struct.TYPE_64__*, %struct.TYPE_64__** %739, align 8
  %741 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %740, i32 0, i32 0
  %742 = load i32, i32* %741, align 4
  %743 = load i32, i32* @SEC_ALLOC, align 4
  %744 = load i32, i32* @SEC_LOAD, align 4
  %745 = or i32 %743, %744
  %746 = and i32 %742, %745
  %747 = icmp ne i32 %746, 0
  br i1 %747, label %748, label %815

748:                                              ; preds = %737, %728
  %749 = load i32, i32* %12, align 4
  %750 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %751 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %750, i32 0, i32 8
  %752 = load %struct.TYPE_61__*, %struct.TYPE_61__** %751, align 8
  %753 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %752, i32 0, i32 1
  store i32 %749, i32* %753, align 8
  %754 = load i8*, i8** %14, align 8
  %755 = icmp ne i8* %754, null
  br i1 %755, label %756, label %770

756:                                              ; preds = %748
  %757 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %758 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %759 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %758, i32 0, i32 8
  %760 = load %struct.TYPE_61__*, %struct.TYPE_61__** %759, align 8
  %761 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %762 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %761, i32 0, i32 9
  %763 = load %struct.TYPE_63__*, %struct.TYPE_63__** %762, align 8
  %764 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %765 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %764, i32 0, i32 4
  %766 = load %struct.TYPE_64__*, %struct.TYPE_64__** %765, align 8
  %767 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %766, i32 0, i32 2
  %768 = load i32, i32* %767, align 4
  %769 = call i32 @os_region_check(%struct.TYPE_60__* %757, %struct.TYPE_61__* %760, %struct.TYPE_63__* %763, i32 %768)
  br label %770

770:                                              ; preds = %756, %748
  %771 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %772 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %771, i32 0, i32 7
  %773 = load %struct.TYPE_61__*, %struct.TYPE_61__** %772, align 8
  %774 = icmp ne %struct.TYPE_61__* %773, null
  br i1 %774, label %775, label %814

775:                                              ; preds = %770
  %776 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %777 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %776, i32 0, i32 7
  %778 = load %struct.TYPE_61__*, %struct.TYPE_61__** %777, align 8
  %779 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %780 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %779, i32 0, i32 8
  %781 = load %struct.TYPE_61__*, %struct.TYPE_61__** %780, align 8
  %782 = icmp ne %struct.TYPE_61__* %778, %781
  br i1 %782, label %783, label %814

783:                                              ; preds = %775
  %784 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %785 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %784, i32 0, i32 4
  %786 = load %struct.TYPE_64__*, %struct.TYPE_64__** %785, align 8
  %787 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %786, i32 0, i32 4
  %788 = load i32, i32* %787, align 4
  %789 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %790 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %789, i32 0, i32 4
  %791 = load %struct.TYPE_64__*, %struct.TYPE_64__** %790, align 8
  %792 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %791, i32 0, i32 1
  %793 = load i32, i32* %792, align 4
  %794 = call i32 @TO_ADDR(i32 %793)
  %795 = add i32 %788, %794
  %796 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %797 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %796, i32 0, i32 7
  %798 = load %struct.TYPE_61__*, %struct.TYPE_61__** %797, align 8
  %799 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %798, i32 0, i32 1
  store i32 %795, i32* %799, align 8
  %800 = load i8*, i8** %14, align 8
  %801 = icmp ne i8* %800, null
  br i1 %801, label %802, label %813

802:                                              ; preds = %783
  %803 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %804 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %805 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %804, i32 0, i32 7
  %806 = load %struct.TYPE_61__*, %struct.TYPE_61__** %805, align 8
  %807 = load %struct.TYPE_60__*, %struct.TYPE_60__** %17, align 8
  %808 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %807, i32 0, i32 4
  %809 = load %struct.TYPE_64__*, %struct.TYPE_64__** %808, align 8
  %810 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %809, i32 0, i32 4
  %811 = load i32, i32* %810, align 4
  %812 = call i32 @os_region_check(%struct.TYPE_60__* %803, %struct.TYPE_61__* %806, %struct.TYPE_63__* null, i32 %811)
  br label %813

813:                                              ; preds = %802, %783
  br label %814

814:                                              ; preds = %813, %775, %770
  br label %815

815:                                              ; preds = %814, %737, %723
  br label %1118

816:                                              ; preds = %35
  %817 = load %struct.TYPE_59__*, %struct.TYPE_59__** getelementptr inbounds (%struct.TYPE_70__, %struct.TYPE_70__* @constructor_list, i32 0, i32 0), align 8
  %818 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %819 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %820 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %819, i32 0, i32 6
  %821 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %820, i32 0, i32 0
  %822 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %821, i32 0, i32 0
  %823 = load i32*, i32** %11, align 8
  %824 = load i32, i32* %12, align 4
  %825 = load i8**, i8*** %13, align 8
  %826 = load i8*, i8** %14, align 8
  %827 = call i32 @lang_size_sections_1(%struct.TYPE_59__* %817, %struct.TYPE_60__* %818, %struct.TYPE_59__** %822, i32* %823, i32 %824, i8** %825, i8* %826)
  store i32 %827, i32* %12, align 4
  br label %1118

828:                                              ; preds = %35
  store i32 0, i32* %26, align 4
  %829 = load i32, i32* %12, align 4
  %830 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %831 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %830, i32 0, i32 4
  %832 = load %struct.TYPE_64__*, %struct.TYPE_64__** %831, align 8
  %833 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %832, i32 0, i32 2
  %834 = load i32, i32* %833, align 4
  %835 = sub i32 %829, %834
  %836 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %837 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %836, i32 0, i32 8
  %838 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %837, i32 0, i32 0
  store i32 %835, i32* %838, align 8
  %839 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %840 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %839, i32 0, i32 4
  %841 = load %struct.TYPE_64__*, %struct.TYPE_64__** %840, align 8
  %842 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %843 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %842, i32 0, i32 8
  %844 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %843, i32 0, i32 3
  store %struct.TYPE_64__* %841, %struct.TYPE_64__** %844, align 8
  %845 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %846 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %845, i32 0, i32 8
  %847 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %846, i32 0, i32 2
  %848 = load %struct.TYPE_63__*, %struct.TYPE_63__** %847, align 8
  %849 = load %struct.TYPE_64__*, %struct.TYPE_64__** @bfd_abs_section_ptr, align 8
  %850 = call i32 @exp_fold_tree(%struct.TYPE_63__* %848, %struct.TYPE_64__* %849, i32* %12)
  %851 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %852 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %851, i32 0, i32 8
  %853 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %852, i32 0, i32 1
  %854 = load i32, i32* %853, align 4
  switch i32 %854, label %855 [
    i32 145, label %857
    i32 143, label %857
    i32 146, label %859
    i32 144, label %861
    i32 147, label %863
  ]

855:                                              ; preds = %828
  %856 = call i32 (...) @abort() #3
  unreachable

857:                                              ; preds = %828, %828
  %858 = load i32, i32* @QUAD_SIZE, align 4
  store i32 %858, i32* %26, align 4
  br label %865

859:                                              ; preds = %828
  %860 = load i32, i32* @LONG_SIZE, align 4
  store i32 %860, i32* %26, align 4
  br label %865

861:                                              ; preds = %828
  %862 = load i32, i32* @SHORT_SIZE, align 4
  store i32 %862, i32* %26, align 4
  br label %865

863:                                              ; preds = %828
  %864 = load i32, i32* @BYTE_SIZE, align 4
  store i32 %864, i32* %26, align 4
  br label %865

865:                                              ; preds = %863, %861, %859, %857
  %866 = load i32, i32* %26, align 4
  %867 = call i32 @TO_SIZE(i32 1)
  %868 = icmp ult i32 %866, %867
  br i1 %868, label %869, label %871

869:                                              ; preds = %865
  %870 = call i32 @TO_SIZE(i32 1)
  store i32 %870, i32* %26, align 4
  br label %871

871:                                              ; preds = %869, %865
  %872 = load i32, i32* %26, align 4
  %873 = call i32 @TO_ADDR(i32 %872)
  %874 = load i32, i32* %12, align 4
  %875 = add i32 %874, %873
  store i32 %875, i32* %12, align 4
  %876 = load i32, i32* %26, align 4
  %877 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %878 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %877, i32 0, i32 4
  %879 = load %struct.TYPE_64__*, %struct.TYPE_64__** %878, align 8
  %880 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %879, i32 0, i32 1
  %881 = load i32, i32* %880, align 4
  %882 = add i32 %881, %876
  store i32 %882, i32* %880, align 4
  br label %1118

883:                                              ; preds = %35
  %884 = load i32, i32* %12, align 4
  %885 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %886 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %885, i32 0, i32 4
  %887 = load %struct.TYPE_64__*, %struct.TYPE_64__** %886, align 8
  %888 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %887, i32 0, i32 2
  %889 = load i32, i32* %888, align 4
  %890 = sub i32 %884, %889
  %891 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %892 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %891, i32 0, i32 7
  %893 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %892, i32 0, i32 0
  store i32 %890, i32* %893, align 8
  %894 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %895 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %894, i32 0, i32 4
  %896 = load %struct.TYPE_64__*, %struct.TYPE_64__** %895, align 8
  %897 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %898 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %897, i32 0, i32 7
  %899 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %898, i32 0, i32 2
  store %struct.TYPE_64__* %896, %struct.TYPE_64__** %899, align 8
  %900 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %901 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %900, i32 0, i32 7
  %902 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %901, i32 0, i32 1
  %903 = load i32, i32* %902, align 4
  %904 = call i32 @bfd_get_reloc_size(i32 %903)
  store i32 %904, i32* %27, align 4
  %905 = load i32, i32* %27, align 4
  %906 = call i32 @TO_ADDR(i32 %905)
  %907 = load i32, i32* %12, align 4
  %908 = add i32 %907, %906
  store i32 %908, i32* %12, align 4
  %909 = load i32, i32* %27, align 4
  %910 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %911 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %910, i32 0, i32 4
  %912 = load %struct.TYPE_64__*, %struct.TYPE_64__** %911, align 8
  %913 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %912, i32 0, i32 1
  %914 = load i32, i32* %913, align 4
  %915 = add i32 %914, %909
  store i32 %915, i32* %913, align 4
  br label %1118

916:                                              ; preds = %35
  %917 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %918 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %917, i32 0, i32 6
  %919 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %918, i32 0, i32 0
  %920 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %919, i32 0, i32 0
  %921 = load %struct.TYPE_59__*, %struct.TYPE_59__** %920, align 8
  %922 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %923 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %924 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %923, i32 0, i32 6
  %925 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %924, i32 0, i32 0
  %926 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %925, i32 0, i32 0
  %927 = load i32*, i32** %11, align 8
  %928 = load i32, i32* %12, align 4
  %929 = load i8**, i8*** %13, align 8
  %930 = load i8*, i8** %14, align 8
  %931 = call i32 @lang_size_sections_1(%struct.TYPE_59__* %921, %struct.TYPE_60__* %922, %struct.TYPE_59__** %926, i32* %927, i32 %928, i8** %929, i8* %930)
  store i32 %931, i32* %12, align 4
  br label %1118

932:                                              ; preds = %35
  %933 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %934 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %933, i32 0, i32 4
  %935 = load %struct.TYPE_64__*, %struct.TYPE_64__** %934, align 8
  store %struct.TYPE_64__* %935, %struct.TYPE_64__** getelementptr inbounds (%struct.TYPE_65__, %struct.TYPE_65__* @link_info, i32 0, i32 0), align 8
  br label %1118

936:                                              ; preds = %35, %35
  br label %1118

937:                                              ; preds = %35
  %938 = load %struct.TYPE_59__**, %struct.TYPE_59__*** %10, align 8
  %939 = load %struct.TYPE_59__*, %struct.TYPE_59__** %938, align 8
  %940 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %939, i32 0, i32 5
  %941 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %940, i32 0, i32 0
  %942 = load %struct.TYPE_64__*, %struct.TYPE_64__** %941, align 8
  store %struct.TYPE_64__* %942, %struct.TYPE_64__** %28, align 8
  %943 = load i8**, i8*** %13, align 8
  %944 = icmp ne i8** %943, null
  br i1 %944, label %945, label %962

945:                                              ; preds = %937
  %946 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %947 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %946, i32 0, i32 5
  %948 = load i32, i32* %947, align 4
  %949 = load %struct.TYPE_64__*, %struct.TYPE_64__** %28, align 8
  %950 = call i32 @bfd_relax_section(i32 %948, %struct.TYPE_64__* %949, %struct.TYPE_65__* @link_info, i8** %29)
  %951 = icmp ne i32 %950, 0
  br i1 %951, label %955, label %952

952:                                              ; preds = %945
  %953 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %954 = call i32 (i32, ...) @einfo(i32 %953)
  br label %955

955:                                              ; preds = %952, %945
  %956 = load i8*, i8** %29, align 8
  %957 = icmp ne i8* %956, null
  br i1 %957, label %958, label %961

958:                                              ; preds = %955
  %959 = load i8*, i8** @TRUE, align 8
  %960 = load i8**, i8*** %13, align 8
  store i8* %959, i8** %960, align 8
  br label %961

961:                                              ; preds = %958, %955
  br label %962

962:                                              ; preds = %961, %937
  %963 = load %struct.TYPE_59__**, %struct.TYPE_59__*** %10, align 8
  %964 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %965 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %966 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %965, i32 0, i32 6
  %967 = load i32*, i32** %966, align 8
  %968 = load i32, i32* %12, align 4
  %969 = call i32 @size_input_section(%struct.TYPE_59__** %963, %struct.TYPE_60__* %964, i32* %967, i32 %968)
  store i32 %969, i32* %12, align 4
  br label %1118

970:                                              ; preds = %35
  br label %1118

971:                                              ; preds = %35
  %972 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %973 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %972, i32 0, i32 4
  %974 = load %struct.TYPE_64__*, %struct.TYPE_64__** %973, align 8
  %975 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %976 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %975, i32 0, i32 4
  %977 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %976, i32 0, i32 1
  store %struct.TYPE_64__* %974, %struct.TYPE_64__** %977, align 8
  %978 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %979 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %978, i32 0, i32 4
  %980 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %979, i32 0, i32 0
  %981 = load i32*, i32** %980, align 8
  store i32* %981, i32** %11, align 8
  br label %1118

982:                                              ; preds = %35
  %983 = load i32, i32* %12, align 4
  store i32 %983, i32* %30, align 4
  %984 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %985 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %984, i32 0, i32 3
  %986 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %985, i32 0, i32 0
  %987 = load %struct.TYPE_63__*, %struct.TYPE_63__** %986, align 8
  store %struct.TYPE_63__* %987, %struct.TYPE_63__** %31, align 8
  %988 = load %struct.TYPE_63__*, %struct.TYPE_63__** %31, align 8
  %989 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %990 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %989, i32 0, i32 4
  %991 = load %struct.TYPE_64__*, %struct.TYPE_64__** %990, align 8
  %992 = call i32 @exp_fold_tree(%struct.TYPE_63__* %988, %struct.TYPE_64__* %991, i32* %30)
  %993 = load %struct.TYPE_63__*, %struct.TYPE_63__** %31, align 8
  %994 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %993, i32 0, i32 1
  %995 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %994, i32 0, i32 0
  %996 = load i32, i32* %995, align 8
  %997 = load i32, i32* @etree_provided, align 4
  %998 = icmp eq i32 %996, %997
  br i1 %998, label %1006, label %999

999:                                              ; preds = %982
  %1000 = load %struct.TYPE_63__*, %struct.TYPE_63__** %31, align 8
  %1001 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1000, i32 0, i32 1
  %1002 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1001, i32 0, i32 0
  %1003 = load i32, i32* %1002, align 8
  %1004 = load i32, i32* @etree_assign, align 4
  %1005 = icmp eq i32 %1003, %1004
  br i1 %1005, label %1006, label %1027

1006:                                             ; preds = %999, %982
  %1007 = load %struct.TYPE_63__*, %struct.TYPE_63__** %31, align 8
  %1008 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1007, i32 0, i32 0
  %1009 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1008, i32 0, i32 0
  %1010 = load i8*, i8** %1009, align 8
  %1011 = getelementptr inbounds i8, i8* %1010, i64 0
  %1012 = load i8, i8* %1011, align 1
  %1013 = sext i8 %1012 to i32
  %1014 = icmp ne i32 %1013, 46
  br i1 %1014, label %1024, label %1015

1015:                                             ; preds = %1006
  %1016 = load %struct.TYPE_63__*, %struct.TYPE_63__** %31, align 8
  %1017 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1016, i32 0, i32 0
  %1018 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1017, i32 0, i32 0
  %1019 = load i8*, i8** %1018, align 8
  %1020 = getelementptr inbounds i8, i8* %1019, i64 1
  %1021 = load i8, i8* %1020, align 1
  %1022 = sext i8 %1021 to i32
  %1023 = icmp ne i32 %1022, 0
  br i1 %1023, label %1024, label %1027

1024:                                             ; preds = %1015, %1006
  %1025 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %1026 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1025, i32 0, i32 2
  store i32 1, i32* %1026, align 8
  br label %1027

1027:                                             ; preds = %1024, %1015, %999
  %1028 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %1029 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1028, i32 0, i32 5
  %1030 = load i32, i32* %1029, align 8
  %1031 = icmp ne i32 %1030, 0
  br i1 %1031, label %1084, label %1032

1032:                                             ; preds = %1027
  %1033 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %1034 = load %struct.TYPE_60__*, %struct.TYPE_60__** @abs_output_section, align 8
  %1035 = icmp eq %struct.TYPE_60__* %1033, %1034
  br i1 %1035, label %1036, label %1042

1036:                                             ; preds = %1032
  %1037 = load i32, i32* %30, align 4
  %1038 = load i32, i32* @DEFAULT_MEMORY_REGION, align 4
  %1039 = load i8*, i8** @FALSE, align 8
  %1040 = call %struct.TYPE_61__* @lang_memory_region_lookup(i32 %1038, i8* %1039)
  %1041 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1040, i32 0, i32 1
  store i32 %1037, i32* %1041, align 8
  br label %1082

1042:                                             ; preds = %1032
  %1043 = load i32, i32* %30, align 4
  %1044 = load i32, i32* %12, align 4
  %1045 = icmp ne i32 %1043, %1044
  br i1 %1045, label %1046, label %1081

1046:                                             ; preds = %1042
  %1047 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %1048 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1047, i32 0, i32 0
  %1049 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %1048, i32 0, i32 1
  %1050 = load i32*, i32** %11, align 8
  %1051 = load i32, i32* %30, align 4
  %1052 = load i32, i32* %12, align 4
  %1053 = sub i32 %1051, %1052
  %1054 = call i32 @TO_SIZE(i32 %1053)
  %1055 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %1056 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1055, i32 0, i32 4
  %1057 = load %struct.TYPE_64__*, %struct.TYPE_64__** %1056, align 8
  %1058 = load i32, i32* %12, align 4
  %1059 = call i32 @insert_pad(%struct.TYPE_59__** %1049, i32* %1050, i32 %1054, %struct.TYPE_64__* %1057, i32 %1058)
  %1060 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %1061 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1060, i32 0, i32 0
  %1062 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %1061, i32 0, i32 1
  %1063 = load %struct.TYPE_59__*, %struct.TYPE_59__** %1062, align 8
  store %struct.TYPE_59__* %1063, %struct.TYPE_59__** %8, align 8
  %1064 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %1065 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1064, i32 0, i32 3
  %1066 = load i32, i32* %1065, align 4
  %1067 = load i32, i32* @SEC_NEVER_LOAD, align 4
  %1068 = load i32, i32* @SEC_ALLOC, align 4
  %1069 = or i32 %1067, %1068
  %1070 = and i32 %1066, %1069
  %1071 = icmp ne i32 %1070, 0
  br i1 %1071, label %1080, label %1072

1072:                                             ; preds = %1046
  %1073 = load i32, i32* @SEC_ALLOC, align 4
  %1074 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %1075 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1074, i32 0, i32 4
  %1076 = load %struct.TYPE_64__*, %struct.TYPE_64__** %1075, align 8
  %1077 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %1076, i32 0, i32 0
  %1078 = load i32, i32* %1077, align 4
  %1079 = or i32 %1078, %1073
  store i32 %1079, i32* %1077, align 4
  br label %1080

1080:                                             ; preds = %1072, %1046
  br label %1081

1081:                                             ; preds = %1080, %1042
  br label %1082

1082:                                             ; preds = %1081, %1036
  %1083 = load i32, i32* %30, align 4
  store i32 %1083, i32* %12, align 4
  br label %1084

1084:                                             ; preds = %1082, %1027
  br label %1118

1085:                                             ; preds = %35
  %1086 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %1087 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1086, i32 0, i32 2
  %1088 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1087, i32 0, i32 1
  store i32 0, i32* %1088, align 4
  %1089 = load i32, i32* %12, align 4
  %1090 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %1091 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1090, i32 0, i32 4
  %1092 = load %struct.TYPE_64__*, %struct.TYPE_64__** %1091, align 8
  %1093 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %1092, i32 0, i32 2
  %1094 = load i32, i32* %1093, align 4
  %1095 = sub i32 %1089, %1094
  %1096 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %1097 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1096, i32 0, i32 2
  %1098 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1097, i32 0, i32 0
  store i32 %1095, i32* %1098, align 8
  br label %1118

1099:                                             ; preds = %35
  %1100 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %1101 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1100, i32 0, i32 1
  %1102 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1101, i32 0, i32 0
  %1103 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1102, i32 0, i32 0
  %1104 = load %struct.TYPE_59__*, %struct.TYPE_59__** %1103, align 8
  %1105 = load %struct.TYPE_60__*, %struct.TYPE_60__** %9, align 8
  %1106 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %1107 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1106, i32 0, i32 1
  %1108 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1107, i32 0, i32 0
  %1109 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1108, i32 0, i32 0
  %1110 = load i32*, i32** %11, align 8
  %1111 = load i32, i32* %12, align 4
  %1112 = load i8**, i8*** %13, align 8
  %1113 = load i8*, i8** %14, align 8
  %1114 = call i32 @lang_size_sections_1(%struct.TYPE_59__* %1104, %struct.TYPE_60__* %1105, %struct.TYPE_59__** %1109, i32* %1110, i32 %1111, i8** %1112, i8* %1113)
  store i32 %1114, i32* %12, align 4
  br label %1118

1115:                                             ; preds = %35
  %1116 = call i32 (...) @FAIL()
  br label %1118

1117:                                             ; preds = %35
  br label %1118

1118:                                             ; preds = %1117, %1115, %1099, %1085, %1084, %971, %970, %962, %936, %932, %916, %883, %871, %816, %815, %602, %129, %79
  %1119 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %1120 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1119, i32 0, i32 0
  %1121 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %1120, i32 0, i32 1
  store %struct.TYPE_59__** %1121, %struct.TYPE_59__*** %10, align 8
  br label %1122

1122:                                             ; preds = %1118
  %1123 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %1124 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1123, i32 0, i32 0
  %1125 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %1124, i32 0, i32 1
  %1126 = load %struct.TYPE_59__*, %struct.TYPE_59__** %1125, align 8
  store %struct.TYPE_59__* %1126, %struct.TYPE_59__** %8, align 8
  br label %32

1127:                                             ; preds = %32
  %1128 = load i32, i32* %12, align 4
  ret i32 %1128
}

declare dso_local i32 @exp_fold_tree(%struct.TYPE_63__*, %struct.TYPE_64__*, i32*) #1

declare dso_local i32 @einfo(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_flavour(i32) #1

declare dso_local i32 @bfd_set_section_vma(i32, %struct.TYPE_64__*, i32) #1

declare dso_local i32 @bfd_section_vma(i32, %struct.TYPE_64__*) #1

declare dso_local i32 @bfd_is_abs_section(%struct.TYPE_64__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local %struct.TYPE_61__* @lang_memory_default(%struct.TYPE_64__*) #1

declare dso_local i32 @IGNORE_SECTION(%struct.TYPE_64__*) #1

declare dso_local i32 @bfd_get_section_name(i32, %struct.TYPE_64__*) #1

declare dso_local i32 @align_power(i32, i32) #1

declare dso_local i32 @TO_ADDR(i32) #1

declare dso_local i32 @TO_SIZE(i32) #1

declare dso_local %struct.TYPE_61__* @lang_memory_region_lookup(i32, i8*) #1

declare dso_local i32 @exp_get_abs_int(i32, i32, i8*) #1

declare dso_local i32 @os_region_check(%struct.TYPE_60__*, %struct.TYPE_61__*, %struct.TYPE_63__*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @bfd_get_reloc_size(i32) #1

declare dso_local i32 @bfd_relax_section(i32, %struct.TYPE_64__*, %struct.TYPE_65__*, i8**) #1

declare dso_local i32 @size_input_section(%struct.TYPE_59__**, %struct.TYPE_60__*, i32*, i32) #1

declare dso_local i32 @insert_pad(%struct.TYPE_59__**, i32*, i32, %struct.TYPE_64__*, i32) #1

declare dso_local i32 @FAIL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
