; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_add_dynamic_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_add_dynamic_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_25__* }
%struct.bfd_link_info = type { %struct.TYPE_22__*, i64 }
%struct.TYPE_22__ = type { i64 }
%struct.external_nlist = type { i32 }
%struct.sunos_dynamic_info = type { i32, i8*, %struct.TYPE_23__, %struct.external_nlist* }
%struct.TYPE_23__ = type { i64 }
%struct.bfd_link_needed_list = type { i8*, %struct.bfd_link_needed_list*, %struct.TYPE_24__* }
%struct.TYPE_26__ = type { %struct.bfd_link_needed_list*, %struct.TYPE_24__* }

@DYNAMIC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".need\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c".rules\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.bfd_link_info*, %struct.external_nlist**, i32*, i8**)* @sunos_add_dynamic_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunos_add_dynamic_symbols(%struct.TYPE_24__* %0, %struct.bfd_link_info* %1, %struct.external_nlist** %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca %struct.external_nlist**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.sunos_dynamic_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_25__*, align 8
  %20 = alloca [16 x i8], align 16
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  %25 = alloca %struct.bfd_link_needed_list*, align 8
  %26 = alloca %struct.bfd_link_needed_list**, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8, align 1
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca [30 x i8], align 16
  %34 = alloca [30 x i8], align 16
  %35 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %8, align 8
  store %struct.external_nlist** %2, %struct.external_nlist*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %36 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %37 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %5
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %47 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DYNAMIC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %56 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %54, %45
  %61 = phi i1 [ false, %45 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @sunos_create_dynamic_sections(%struct.TYPE_24__* %46, %struct.bfd_link_info* %47, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %6, align 4
  br label %457

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %5
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @DYNAMIC, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %6, align 4
  br label %457

77:                                               ; preds = %68
  %78 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %79 = call %struct.TYPE_26__* @sunos_hash_table(%struct.bfd_link_info* %78)
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  store %struct.TYPE_24__* %81, %struct.TYPE_24__** %12, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %84 = icmp ne %struct.TYPE_24__* %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %87, align 8
  br label %112

88:                                               ; preds = %77
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  store %struct.TYPE_25__* %91, %struct.TYPE_25__** %15, align 8
  br label %92

92:                                               ; preds = %107, %88
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %94 = icmp ne %struct.TYPE_25__* %93, null
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %105 = call i32 @bfd_section_list_remove(%struct.TYPE_24__* %103, %struct.TYPE_25__* %104)
  br label %106

106:                                              ; preds = %102, %95
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %109, align 8
  store %struct.TYPE_25__* %110, %struct.TYPE_25__** %15, align 8
  br label %92

111:                                              ; preds = %92
  br label %112

112:                                              ; preds = %111, %85
  %113 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %114 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %6, align 4
  br label %457

119:                                              ; preds = %112
  %120 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %121 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %120, i32 0, i32 0
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %119
  %130 = load i32, i32* @bfd_error_invalid_operation, align 4
  %131 = call i32 @bfd_set_error(i32 %130)
  %132 = load i32, i32* @FALSE, align 4
  store i32 %132, i32* %6, align 4
  br label %457

133:                                              ; preds = %119
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %135 = call i32* @bfd_get_section_by_name(%struct.TYPE_24__* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %160

137:                                              ; preds = %133
  %138 = load i32, i32* @SEC_ALLOC, align 4
  %139 = load i32, i32* @SEC_LOAD, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @SEC_IN_MEMORY, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @SEC_READONLY, align 4
  %146 = or i32 %144, %145
  store i32 %146, i32* %16, align 4
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %148 = load i32, i32* %16, align 4
  %149 = call %struct.TYPE_25__* @bfd_make_section_with_flags(%struct.TYPE_24__* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %148)
  store %struct.TYPE_25__* %149, %struct.TYPE_25__** %17, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %151 = icmp eq %struct.TYPE_25__* %150, null
  br i1 %151, label %157, label %152

152:                                              ; preds = %137
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %155 = call i32 @bfd_set_section_alignment(%struct.TYPE_24__* %153, %struct.TYPE_25__* %154, i32 2)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %152, %137
  %158 = load i32, i32* @FALSE, align 4
  store i32 %158, i32* %6, align 4
  br label %457

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %159, %133
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %162 = call i32* @bfd_get_section_by_name(%struct.TYPE_24__* %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %187

164:                                              ; preds = %160
  %165 = load i32, i32* @SEC_ALLOC, align 4
  %166 = load i32, i32* @SEC_LOAD, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @SEC_IN_MEMORY, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @SEC_READONLY, align 4
  %173 = or i32 %171, %172
  store i32 %173, i32* %18, align 4
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %175 = load i32, i32* %18, align 4
  %176 = call %struct.TYPE_25__* @bfd_make_section_with_flags(%struct.TYPE_24__* %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  store %struct.TYPE_25__* %176, %struct.TYPE_25__** %19, align 8
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %178 = icmp eq %struct.TYPE_25__* %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %164
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %182 = call i32 @bfd_set_section_alignment(%struct.TYPE_24__* %180, %struct.TYPE_25__* %181, i32 2)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %179, %164
  %185 = load i32, i32* @FALSE, align 4
  store i32 %185, i32* %6, align 4
  br label %457

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186, %160
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %189 = call i32 @sunos_slurp_dynamic_symtab(%struct.TYPE_24__* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  %192 = load i32, i32* @FALSE, align 4
  store i32 %192, i32* %6, align 4
  br label %457

193:                                              ; preds = %187
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %195 = call i64 @obj_aout_dynamic_info(%struct.TYPE_24__* %194)
  %196 = inttoptr i64 %195 to %struct.sunos_dynamic_info*
  store %struct.sunos_dynamic_info* %196, %struct.sunos_dynamic_info** %13, align 8
  %197 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %13, align 8
  %198 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %197, i32 0, i32 3
  %199 = load %struct.external_nlist*, %struct.external_nlist** %198, align 8
  %200 = load %struct.external_nlist**, %struct.external_nlist*** %9, align 8
  store %struct.external_nlist* %199, %struct.external_nlist** %200, align 8
  %201 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %13, align 8
  %202 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32*, i32** %10, align 8
  store i32 %203, i32* %204, align 4
  %205 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %13, align 8
  %206 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = load i8**, i8*** %11, align 8
  store i8* %207, i8** %208, align 8
  %209 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %13, align 8
  %210 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %14, align 8
  br label %213

213:                                              ; preds = %452, %193
  %214 = load i64, i64* %14, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %455

216:                                              ; preds = %213
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %218 = load i64, i64* %14, align 8
  %219 = trunc i64 %218 to i32
  %220 = load i32, i32* @SEEK_SET, align 4
  %221 = call i64 @bfd_seek(%struct.TYPE_24__* %217, i32 %219, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %216
  %224 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %226 = call i32 @bfd_bread(i8* %224, i32 16, %struct.TYPE_24__* %225)
  %227 = icmp ne i32 %226, 16
  br i1 %227, label %228, label %230

228:                                              ; preds = %223, %216
  %229 = load i32, i32* @FALSE, align 4
  store i32 %229, i32* %6, align 4
  br label %457

230:                                              ; preds = %223
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %232 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %233 = call i64 @bfd_get_32(%struct.TYPE_24__* %231, i8* %232)
  store i64 %233, i64* %21, align 8
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %235 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %236 = getelementptr inbounds i8, i8* %235, i64 4
  %237 = call i64 @bfd_get_32(%struct.TYPE_24__* %234, i8* %236)
  store i64 %237, i64* %22, align 8
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %239 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %240 = getelementptr inbounds i8, i8* %239, i64 8
  %241 = call i64 @bfd_get_16(%struct.TYPE_24__* %238, i8* %240)
  %242 = trunc i64 %241 to i16
  store i16 %242, i16* %23, align 2
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %244 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %245 = getelementptr inbounds i8, i8* %244, i64 10
  %246 = call i64 @bfd_get_16(%struct.TYPE_24__* %243, i8* %245)
  %247 = trunc i64 %246 to i16
  store i16 %247, i16* %24, align 2
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %249 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %250 = getelementptr inbounds i8, i8* %249, i64 12
  %251 = call i64 @bfd_get_32(%struct.TYPE_24__* %248, i8* %250)
  store i64 %251, i64* %14, align 8
  store i32 24, i32* %29, align 4
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %253 = load i32, i32* %29, align 4
  %254 = call i8* @bfd_alloc(%struct.TYPE_24__* %252, i32 %253)
  %255 = bitcast i8* %254 to %struct.bfd_link_needed_list*
  store %struct.bfd_link_needed_list* %255, %struct.bfd_link_needed_list** %25, align 8
  %256 = load %struct.bfd_link_needed_list*, %struct.bfd_link_needed_list** %25, align 8
  %257 = icmp eq %struct.bfd_link_needed_list* %256, null
  br i1 %257, label %258, label %260

258:                                              ; preds = %230
  %259 = load i32, i32* @FALSE, align 4
  store i32 %259, i32* %6, align 4
  br label %457

260:                                              ; preds = %230
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %262 = load %struct.bfd_link_needed_list*, %struct.bfd_link_needed_list** %25, align 8
  %263 = getelementptr inbounds %struct.bfd_link_needed_list, %struct.bfd_link_needed_list* %262, i32 0, i32 2
  store %struct.TYPE_24__* %261, %struct.TYPE_24__** %263, align 8
  store i32 30, i32* %29, align 4
  %264 = load i32, i32* %29, align 4
  %265 = add nsw i32 %264, 1
  %266 = call i8* @bfd_malloc(i32 %265)
  store i8* %266, i8** %27, align 8
  %267 = load i8*, i8** %27, align 8
  %268 = icmp eq i8* %267, null
  br i1 %268, label %269, label %271

269:                                              ; preds = %260
  %270 = load i32, i32* @FALSE, align 4
  store i32 %270, i32* %6, align 4
  br label %457

271:                                              ; preds = %260
  %272 = load i8*, i8** %27, align 8
  store i8* %272, i8** %28, align 8
  %273 = load i64, i64* %22, align 8
  %274 = and i64 %273, 2147483648
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %271
  %277 = load i8*, i8** %28, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %28, align 8
  store i8 45, i8* %277, align 1
  %279 = load i8*, i8** %28, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %28, align 8
  store i8 108, i8* %279, align 1
  br label %281

281:                                              ; preds = %276, %271
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %283 = load i64, i64* %21, align 8
  %284 = trunc i64 %283 to i32
  %285 = load i32, i32* @SEEK_SET, align 4
  %286 = call i64 @bfd_seek(%struct.TYPE_24__* %282, i32 %284, i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %281
  %289 = load i8*, i8** %27, align 8
  %290 = call i32 @free(i8* %289)
  %291 = load i32, i32* @FALSE, align 4
  store i32 %291, i32* %6, align 4
  br label %457

292:                                              ; preds = %281
  br label %293

293:                                              ; preds = %336, %292
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %295 = call i32 @bfd_bread(i8* %30, i32 1, %struct.TYPE_24__* %294)
  %296 = icmp ne i32 %295, 1
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load i8*, i8** %27, align 8
  %299 = call i32 @free(i8* %298)
  %300 = load i32, i32* @FALSE, align 4
  store i32 %300, i32* %6, align 4
  br label %457

301:                                              ; preds = %293
  %302 = load i8*, i8** %28, align 8
  %303 = load i8*, i8** %27, align 8
  %304 = ptrtoint i8* %302 to i64
  %305 = ptrtoint i8* %303 to i64
  %306 = sub i64 %304, %305
  %307 = trunc i64 %306 to i32
  %308 = load i32, i32* %29, align 4
  %309 = icmp sge i32 %307, %308
  br i1 %309, label %310, label %332

310:                                              ; preds = %301
  %311 = load i32, i32* %29, align 4
  %312 = mul nsw i32 %311, 2
  store i32 %312, i32* %29, align 4
  %313 = load i8*, i8** %27, align 8
  %314 = load i32, i32* %29, align 4
  %315 = add nsw i32 %314, 1
  %316 = call i8* @bfd_realloc(i8* %313, i32 %315)
  store i8* %316, i8** %32, align 8
  %317 = load i8*, i8** %32, align 8
  %318 = icmp eq i8* %317, null
  br i1 %318, label %319, label %323

319:                                              ; preds = %310
  %320 = load i8*, i8** %27, align 8
  %321 = call i32 @free(i8* %320)
  %322 = load i32, i32* @FALSE, align 4
  store i32 %322, i32* %6, align 4
  br label %457

323:                                              ; preds = %310
  %324 = load i8*, i8** %32, align 8
  %325 = load i8*, i8** %28, align 8
  %326 = load i8*, i8** %27, align 8
  %327 = ptrtoint i8* %325 to i64
  %328 = ptrtoint i8* %326 to i64
  %329 = sub i64 %327, %328
  %330 = getelementptr inbounds i8, i8* %324, i64 %329
  store i8* %330, i8** %28, align 8
  %331 = load i8*, i8** %32, align 8
  store i8* %331, i8** %27, align 8
  br label %332

332:                                              ; preds = %323, %301
  %333 = load i8, i8* %30, align 1
  %334 = load i8*, i8** %28, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %28, align 8
  store i8 %333, i8* %334, align 1
  br label %336

336:                                              ; preds = %332
  %337 = load i8, i8* %30, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %293, label %340

340:                                              ; preds = %336
  %341 = load i16, i16* %23, align 2
  %342 = zext i16 %341 to i32
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %340
  %345 = load i8*, i8** %28, align 8
  store i8 0, i8* %345, align 1
  br label %417

346:                                              ; preds = %340
  %347 = getelementptr inbounds [30 x i8], [30 x i8]* %33, i64 0, i64 0
  %348 = load i16, i16* %23, align 2
  %349 = call i32 @sprintf(i8* %347, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %348)
  %350 = load i16, i16* %24, align 2
  %351 = zext i16 %350 to i32
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %346
  %354 = getelementptr inbounds [30 x i8], [30 x i8]* %34, i64 0, i64 0
  store i8 0, i8* %354, align 16
  br label %359

355:                                              ; preds = %346
  %356 = getelementptr inbounds [30 x i8], [30 x i8]* %34, i64 0, i64 0
  %357 = load i16, i16* %24, align 2
  %358 = call i32 @sprintf(i8* %356, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %357)
  br label %359

359:                                              ; preds = %355, %353
  %360 = load i8*, i8** %28, align 8
  %361 = load i8*, i8** %27, align 8
  %362 = ptrtoint i8* %360 to i64
  %363 = ptrtoint i8* %361 to i64
  %364 = sub i64 %362, %363
  %365 = getelementptr inbounds [30 x i8], [30 x i8]* %33, i64 0, i64 0
  %366 = call i32 @strlen(i8* %365)
  %367 = sext i32 %366 to i64
  %368 = add nsw i64 %364, %367
  %369 = getelementptr inbounds [30 x i8], [30 x i8]* %34, i64 0, i64 0
  %370 = call i32 @strlen(i8* %369)
  %371 = sext i32 %370 to i64
  %372 = add nsw i64 %368, %371
  %373 = load i32, i32* %29, align 4
  %374 = sext i32 %373 to i64
  %375 = icmp sge i64 %372, %374
  br i1 %375, label %376, label %410

376:                                              ; preds = %359
  %377 = load i8*, i8** %28, align 8
  %378 = load i8*, i8** %27, align 8
  %379 = ptrtoint i8* %377 to i64
  %380 = ptrtoint i8* %378 to i64
  %381 = sub i64 %379, %380
  %382 = getelementptr inbounds [30 x i8], [30 x i8]* %33, i64 0, i64 0
  %383 = call i32 @strlen(i8* %382)
  %384 = sext i32 %383 to i64
  %385 = add nsw i64 %381, %384
  %386 = getelementptr inbounds [30 x i8], [30 x i8]* %34, i64 0, i64 0
  %387 = call i32 @strlen(i8* %386)
  %388 = sext i32 %387 to i64
  %389 = add nsw i64 %385, %388
  %390 = trunc i64 %389 to i32
  store i32 %390, i32* %29, align 4
  %391 = load i8*, i8** %27, align 8
  %392 = load i32, i32* %29, align 4
  %393 = add nsw i32 %392, 1
  %394 = call i8* @bfd_realloc(i8* %391, i32 %393)
  store i8* %394, i8** %35, align 8
  %395 = load i8*, i8** %35, align 8
  %396 = icmp eq i8* %395, null
  br i1 %396, label %397, label %401

397:                                              ; preds = %376
  %398 = load i8*, i8** %27, align 8
  %399 = call i32 @free(i8* %398)
  %400 = load i32, i32* @FALSE, align 4
  store i32 %400, i32* %6, align 4
  br label %457

401:                                              ; preds = %376
  %402 = load i8*, i8** %35, align 8
  %403 = load i8*, i8** %28, align 8
  %404 = load i8*, i8** %27, align 8
  %405 = ptrtoint i8* %403 to i64
  %406 = ptrtoint i8* %404 to i64
  %407 = sub i64 %405, %406
  %408 = getelementptr inbounds i8, i8* %402, i64 %407
  store i8* %408, i8** %28, align 8
  %409 = load i8*, i8** %35, align 8
  store i8* %409, i8** %27, align 8
  br label %410

410:                                              ; preds = %401, %359
  %411 = load i8*, i8** %28, align 8
  %412 = getelementptr inbounds [30 x i8], [30 x i8]* %33, i64 0, i64 0
  %413 = call i32 @strcpy(i8* %411, i8* %412)
  %414 = load i8*, i8** %28, align 8
  %415 = getelementptr inbounds [30 x i8], [30 x i8]* %34, i64 0, i64 0
  %416 = call i32 @strcat(i8* %414, i8* %415)
  br label %417

417:                                              ; preds = %410, %344
  %418 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %419 = load i8*, i8** %27, align 8
  %420 = call i32 @strlen(i8* %419)
  %421 = add nsw i32 %420, 1
  %422 = call i8* @bfd_alloc(%struct.TYPE_24__* %418, i32 %421)
  store i8* %422, i8** %31, align 8
  %423 = load i8*, i8** %31, align 8
  %424 = icmp eq i8* %423, null
  br i1 %424, label %425, label %429

425:                                              ; preds = %417
  %426 = load i8*, i8** %27, align 8
  %427 = call i32 @free(i8* %426)
  %428 = load i32, i32* @FALSE, align 4
  store i32 %428, i32* %6, align 4
  br label %457

429:                                              ; preds = %417
  %430 = load i8*, i8** %31, align 8
  %431 = load i8*, i8** %27, align 8
  %432 = call i32 @strcpy(i8* %430, i8* %431)
  %433 = load i8*, i8** %27, align 8
  %434 = call i32 @free(i8* %433)
  %435 = load i8*, i8** %31, align 8
  %436 = load %struct.bfd_link_needed_list*, %struct.bfd_link_needed_list** %25, align 8
  %437 = getelementptr inbounds %struct.bfd_link_needed_list, %struct.bfd_link_needed_list* %436, i32 0, i32 0
  store i8* %435, i8** %437, align 8
  %438 = load %struct.bfd_link_needed_list*, %struct.bfd_link_needed_list** %25, align 8
  %439 = getelementptr inbounds %struct.bfd_link_needed_list, %struct.bfd_link_needed_list* %438, i32 0, i32 1
  store %struct.bfd_link_needed_list* null, %struct.bfd_link_needed_list** %439, align 8
  %440 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %441 = call %struct.TYPE_26__* @sunos_hash_table(%struct.bfd_link_info* %440)
  %442 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %441, i32 0, i32 0
  store %struct.bfd_link_needed_list** %442, %struct.bfd_link_needed_list*** %26, align 8
  br label %443

443:                                              ; preds = %448, %429
  %444 = load %struct.bfd_link_needed_list**, %struct.bfd_link_needed_list*** %26, align 8
  %445 = load %struct.bfd_link_needed_list*, %struct.bfd_link_needed_list** %444, align 8
  %446 = icmp ne %struct.bfd_link_needed_list* %445, null
  br i1 %446, label %447, label %452

447:                                              ; preds = %443
  br label %448

448:                                              ; preds = %447
  %449 = load %struct.bfd_link_needed_list**, %struct.bfd_link_needed_list*** %26, align 8
  %450 = load %struct.bfd_link_needed_list*, %struct.bfd_link_needed_list** %449, align 8
  %451 = getelementptr inbounds %struct.bfd_link_needed_list, %struct.bfd_link_needed_list* %450, i32 0, i32 1
  store %struct.bfd_link_needed_list** %451, %struct.bfd_link_needed_list*** %26, align 8
  br label %443

452:                                              ; preds = %443
  %453 = load %struct.bfd_link_needed_list*, %struct.bfd_link_needed_list** %25, align 8
  %454 = load %struct.bfd_link_needed_list**, %struct.bfd_link_needed_list*** %26, align 8
  store %struct.bfd_link_needed_list* %453, %struct.bfd_link_needed_list** %454, align 8
  br label %213

455:                                              ; preds = %213
  %456 = load i32, i32* @TRUE, align 4
  store i32 %456, i32* %6, align 4
  br label %457

457:                                              ; preds = %455, %425, %397, %319, %297, %288, %269, %258, %228, %191, %184, %157, %129, %117, %75, %65
  %458 = load i32, i32* %6, align 4
  ret i32 %458
}

declare dso_local i32 @sunos_create_dynamic_sections(%struct.TYPE_24__*, %struct.bfd_link_info*, i32) #1

declare dso_local %struct.TYPE_26__* @sunos_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @bfd_section_list_remove(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32* @bfd_get_section_by_name(%struct.TYPE_24__*, i8*) #1

declare dso_local %struct.TYPE_25__* @bfd_make_section_with_flags(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(%struct.TYPE_24__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @sunos_slurp_dynamic_symtab(%struct.TYPE_24__*) #1

declare dso_local i64 @obj_aout_dynamic_info(%struct.TYPE_24__*) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @bfd_bread(i8*, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @bfd_get_32(%struct.TYPE_24__*, i8*) #1

declare dso_local i64 @bfd_get_16(%struct.TYPE_24__*, i8*) #1

declare dso_local i8* @bfd_alloc(%struct.TYPE_24__*, i32) #1

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @bfd_realloc(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i16 zeroext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
