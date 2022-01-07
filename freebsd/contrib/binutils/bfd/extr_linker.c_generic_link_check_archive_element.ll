; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_generic_link_check_archive_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_generic_link_check_archive_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i8* }
%struct.bfd_link_info = type { %struct.TYPE_22__*, %struct.TYPE_17__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_17__ = type { i32 (%struct.bfd_link_info*, i32*, i32)* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_23__* }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_INDIRECT = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@bfd_link_hash_common = common dso_local global i64 0, align 8
@bfd_com_section_ptr = common dso_local global %struct.TYPE_23__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"COMMON\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, i32*, i32)* @generic_link_check_archive_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_link_check_archive_element(i32* %0, %struct.bfd_link_info* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__**, align 8
  %11 = alloca %struct.TYPE_21__**, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.bfd_link_hash_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_21__**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @generic_link_read_symbols(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %5, align 4
  br label %258

26:                                               ; preds = %4
  %27 = load i32*, i32** %6, align 8
  %28 = call %struct.TYPE_21__** @_bfd_generic_link_get_symbols(i32* %27)
  store %struct.TYPE_21__** %28, %struct.TYPE_21__*** %10, align 8
  %29 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @_bfd_generic_link_get_symcount(i32* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %29, i64 %32
  store %struct.TYPE_21__** %33, %struct.TYPE_21__*** %11, align 8
  br label %34

34:                                               ; preds = %253, %26
  %35 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  %36 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %11, align 8
  %37 = icmp ult %struct.TYPE_21__** %35, %36
  br i1 %37, label %38, label %256

38:                                               ; preds = %34
  %39 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %12, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %42, align 8
  %44 = call i32 @bfd_is_com_section(%struct.TYPE_23__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @BSF_GLOBAL, align 4
  %51 = load i32, i32* @BSF_INDIRECT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @BSF_WEAK, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %49, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %253

58:                                               ; preds = %46, %38
  %59 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %60 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %60, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %63 = call i32 @bfd_asymbol_name(%struct.TYPE_21__* %62)
  %64 = load i32, i32* @FALSE, align 4
  %65 = load i32, i32* @FALSE, align 4
  %66 = load i32, i32* @TRUE, align 4
  %67 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(%struct.TYPE_22__* %61, i32 %63, i32 %64, i32 %65, i32 %66)
  store %struct.bfd_link_hash_entry* %67, %struct.bfd_link_hash_entry** %13, align 8
  %68 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %69 = icmp eq %struct.bfd_link_hash_entry* %68, null
  br i1 %69, label %82, label %70

70:                                               ; preds = %58
  %71 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %72 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @bfd_link_hash_undefined, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %78 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @bfd_link_hash_common, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %58
  br label %253

83:                                               ; preds = %76, %70
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %85, align 8
  %87 = call i32 @bfd_is_com_section(%struct.TYPE_23__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %121, label %89

89:                                               ; preds = %83
  %90 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %91 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %90, i32 0, i32 1
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32 (%struct.bfd_link_info*, i32*, i32)*, i32 (%struct.bfd_link_info*, i32*, i32)** %93, align 8
  %95 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %98 = call i32 @bfd_asymbol_name(%struct.TYPE_21__* %97)
  %99 = call i32 %94(%struct.bfd_link_info* %95, i32* %96, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %89
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %5, align 4
  br label %258

103:                                              ; preds = %89
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @_bfd_generic_link_get_symcount(i32* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = call %struct.TYPE_21__** @_bfd_generic_link_get_symbols(i32* %106)
  store %struct.TYPE_21__** %107, %struct.TYPE_21__*** %15, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %15, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @generic_link_add_symbol_list(i32* %108, %struct.bfd_link_info* %109, i32 %110, %struct.TYPE_21__** %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %103
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %5, align 4
  br label %258

117:                                              ; preds = %103
  %118 = load i32, i32* @TRUE, align 4
  %119 = load i32*, i32** %8, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %5, align 4
  br label %258

121:                                              ; preds = %83
  %122 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %123 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @bfd_link_hash_undefined, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %235

127:                                              ; preds = %121
  %128 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %129 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  store i32* %132, i32** %16, align 8
  %133 = load i32*, i32** %16, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %153

135:                                              ; preds = %127
  %136 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %137 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %136, i32 0, i32 1
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32 (%struct.bfd_link_info*, i32*, i32)*, i32 (%struct.bfd_link_info*, i32*, i32)** %139, align 8
  %141 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %142 = load i32*, i32** %6, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %144 = call i32 @bfd_asymbol_name(%struct.TYPE_21__* %143)
  %145 = call i32 %140(%struct.bfd_link_info* %141, i32* %142, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %135
  %148 = load i32, i32* @FALSE, align 4
  store i32 %148, i32* %5, align 4
  br label %258

149:                                              ; preds = %135
  %150 = load i32, i32* @TRUE, align 4
  %151 = load i32*, i32** %8, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* @TRUE, align 4
  store i32 %152, i32* %5, align 4
  br label %258

153:                                              ; preds = %127
  %154 = load i64, i64* @bfd_link_hash_common, align 8
  %155 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %156 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %158 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %157, i32 0, i32 0
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = call %struct.TYPE_15__* @bfd_hash_allocate(i32* %160, i32 4)
  %162 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %163 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 1
  store %struct.TYPE_15__* %161, %struct.TYPE_15__** %165, align 8
  %166 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %167 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = icmp eq %struct.TYPE_15__* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %153
  %173 = load i32, i32* @FALSE, align 4
  store i32 %173, i32* %5, align 4
  br label %258

174:                                              ; preds = %153
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %176 = call i64 @bfd_asymbol_value(%struct.TYPE_21__* %175)
  store i64 %176, i64* %17, align 8
  %177 = load i64, i64* %17, align 8
  %178 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %179 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  store i64 %177, i64* %181, align 8
  %182 = load i64, i64* %17, align 8
  %183 = call i32 @bfd_log2(i64 %182)
  store i32 %183, i32* %18, align 4
  %184 = load i32, i32* %18, align 4
  %185 = icmp ugt i32 %184, 4
  br i1 %185, label %186, label %187

186:                                              ; preds = %174
  store i32 4, i32* %18, align 4
  br label %187

187:                                              ; preds = %186, %174
  %188 = load i32, i32* %18, align 4
  %189 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %190 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  store i32 %188, i32* %194, align 8
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %196, align 8
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** @bfd_com_section_ptr, align 8
  %199 = icmp eq %struct.TYPE_23__* %197, %198
  br i1 %199, label %200, label %210

200:                                              ; preds = %187
  %201 = load i32*, i32** %16, align 8
  %202 = call i8* @bfd_make_section_old_way(i32* %201, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %203 = bitcast i8* %202 to %struct.TYPE_18__*
  %204 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %205 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  store %struct.TYPE_18__* %203, %struct.TYPE_18__** %209, align 8
  br label %225

210:                                              ; preds = %187
  %211 = load i32*, i32** %16, align 8
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = call i8* @bfd_make_section_old_way(i32* %211, i8* %216)
  %218 = bitcast i8* %217 to %struct.TYPE_18__*
  %219 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %220 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  store %struct.TYPE_18__* %218, %struct.TYPE_18__** %224, align 8
  br label %225

225:                                              ; preds = %210, %200
  %226 = load i32, i32* @SEC_ALLOC, align 4
  %227 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %228 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  store i32 %226, i32* %234, align 4
  br label %252

235:                                              ; preds = %121
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %237 = call i64 @bfd_asymbol_value(%struct.TYPE_21__* %236)
  %238 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %239 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp sgt i64 %237, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %235
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %246 = call i64 @bfd_asymbol_value(%struct.TYPE_21__* %245)
  %247 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %248 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 0
  store i64 %246, i64* %250, align 8
  br label %251

251:                                              ; preds = %244, %235
  br label %252

252:                                              ; preds = %251, %225
  br label %253

253:                                              ; preds = %252, %82, %57
  %254 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %254, i32 1
  store %struct.TYPE_21__** %255, %struct.TYPE_21__*** %10, align 8
  br label %34

256:                                              ; preds = %34
  %257 = load i32, i32* @TRUE, align 4
  store i32 %257, i32* %5, align 4
  br label %258

258:                                              ; preds = %256, %172, %149, %147, %117, %115, %101, %24
  %259 = load i32, i32* %5, align 4
  ret i32 %259
}

declare dso_local i32 @generic_link_read_symbols(i32*) #1

declare dso_local %struct.TYPE_21__** @_bfd_generic_link_get_symbols(i32*) #1

declare dso_local i32 @_bfd_generic_link_get_symcount(i32*) #1

declare dso_local i32 @bfd_is_com_section(%struct.TYPE_23__*) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(%struct.TYPE_22__*, i32, i32, i32, i32) #1

declare dso_local i32 @bfd_asymbol_name(%struct.TYPE_21__*) #1

declare dso_local i32 @generic_link_add_symbol_list(i32*, %struct.bfd_link_info*, i32, %struct.TYPE_21__**, i32) #1

declare dso_local %struct.TYPE_15__* @bfd_hash_allocate(i32*, i32) #1

declare dso_local i64 @bfd_asymbol_value(%struct.TYPE_21__*) #1

declare dso_local i32 @bfd_log2(i64) #1

declare dso_local i8* @bfd_make_section_old_way(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
