; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pe_process_import_defs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pe_process_import_defs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i8*, i64, i32, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i32 }
%struct.bfd_link_info = type { i32 }
%struct.TYPE_18__ = type { i8*, i64, i64, i32, i32, i64, i64, i64 }
%struct.bfd_link_hash_entry = type { i64 }

@pe_def_file = common dso_local global %struct.TYPE_20__* null, align 8
@dll_filename = common dso_local global i32 0, align 4
@dll_symname = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"__imp_\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pe_process_import_defs(%struct.TYPE_19__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca %struct.bfd_link_hash_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = call i32 @bfd_get_target(%struct.TYPE_19__* %17)
  %19 = call i32 @pe_dll_id_target(i32 %18)
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pe_def_file, align 8
  %21 = icmp ne %struct.TYPE_20__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %308

23:                                               ; preds = %2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pe_def_file, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %5, align 8
  br label %27

27:                                               ; preds = %304, %23
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = icmp ne %struct.TYPE_17__* %28, null
  br i1 %29, label %30, label %308

30:                                               ; preds = %27
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* @dll_filename, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @xstrdup(i32 %36)
  store i8* %37, i8** @dll_symname, align 8
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %59, %30
  %39 = load i8*, i8** @dll_symname, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load i8*, i8** @dll_symname, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @ISALNUM(i8 signext %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = load i8*, i8** @dll_symname, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 95, i8* %57, align 1
  br label %58

58:                                               ; preds = %53, %45
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %38

62:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %286, %62
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pe_def_file, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %289

69:                                               ; preds = %63
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pe_def_file, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = icmp eq %struct.TYPE_17__* %77, %78
  br i1 %79, label %80, label %285

80:                                               ; preds = %69
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pe_def_file, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 64
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %10, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pe_def_file, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strlen(i8* %100)
  store i64 %101, i64* %11, align 8
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, 2
  %104 = add i64 %103, 6
  %105 = call i8* @xmalloc(i64 %104)
  store i8* %105, i8** %12, align 8
  %106 = load i64, i64* @FALSE, align 8
  store i64 %106, i64* %13, align 8
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %80
  %110 = load i8*, i8** %12, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pe_def_file, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %118)
  br label %132

120:                                              ; preds = %80
  %121 = load i8*, i8** %12, align 8
  %122 = call i8* @U(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pe_def_file, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %122, i8* %130)
  br label %132

132:                                              ; preds = %120, %109
  %133 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %134 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i8*, i8** %12, align 8
  %137 = load i64, i64* @FALSE, align 8
  %138 = load i64, i64* @FALSE, align 8
  %139 = load i64, i64* @FALSE, align 8
  %140 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %135, i8* %136, i64 %137, i64 %138, i64 %139)
  store %struct.bfd_link_hash_entry* %140, %struct.bfd_link_hash_entry** %9, align 8
  %141 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %142 = icmp ne %struct.bfd_link_hash_entry* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %132
  %144 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %145 = icmp ne %struct.bfd_link_hash_entry* %144, null
  br i1 %145, label %146, label %187

146:                                              ; preds = %143
  %147 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %148 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @bfd_link_hash_undefined, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %187

152:                                              ; preds = %146, %132
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %152
  %156 = load i8*, i8** %12, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pe_def_file, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %164)
  br label %178

166:                                              ; preds = %152
  %167 = load i8*, i8** %12, align 8
  %168 = call i8* @U(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pe_def_file, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %168, i8* %176)
  br label %178

178:                                              ; preds = %166, %155
  %179 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %180 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i8*, i8** %12, align 8
  %183 = load i64, i64* @FALSE, align 8
  %184 = load i64, i64* @FALSE, align 8
  %185 = load i64, i64* @FALSE, align 8
  %186 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %181, i8* %182, i64 %183, i64 %184, i64 %185)
  store %struct.bfd_link_hash_entry* %186, %struct.bfd_link_hash_entry** %9, align 8
  br label %189

187:                                              ; preds = %146, %143
  %188 = load i64, i64* @TRUE, align 8
  store i64 %188, i64* %13, align 8
  br label %189

189:                                              ; preds = %187, %178
  %190 = load i8*, i8** %12, align 8
  %191 = call i32 @free(i8* %190)
  %192 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %193 = icmp ne %struct.bfd_link_hash_entry* %192, null
  br i1 %193, label %194, label %284

194:                                              ; preds = %189
  %195 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %196 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @bfd_link_hash_undefined, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %284

200:                                              ; preds = %194
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %212, label %203

203:                                              ; preds = %200
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %205 = call %struct.TYPE_19__* @make_head(%struct.TYPE_19__* %204)
  store %struct.TYPE_19__* %205, %struct.TYPE_19__** %15, align 8
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %211 = call i32 @add_bfd_to_link(%struct.TYPE_19__* %206, i32 %209, %struct.bfd_link_info* %210)
  store i32 1, i32* %7, align 4
  br label %212

212:                                              ; preds = %203, %200
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pe_def_file, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i8* %220, i8** %221, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pe_def_file, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 5
  store i64 %229, i64* %230, align 8
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pe_def_file, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %232, align 8
  %234 = load i32, i32* %6, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  store i64 %238, i64* %239, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = icmp sge i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %212
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  br label %247

246:                                              ; preds = %212
  br label %247

247:                                              ; preds = %246, %243
  %248 = phi i64 [ %245, %243 ], [ 0, %246 ]
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 2
  store i64 %248, i64* %249, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 7
  store i64 0, i64* %250, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 6
  store i64 0, i64* %251, align 8
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pe_def_file, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %253, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 4
  store i32 %259, i32* %260, align 4
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 5
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 3
  store i32 %265, i32* %266, align 8
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %247
  %272 = load i64, i64* %13, align 8
  %273 = icmp ne i64 %272, 0
  br label %274

274:                                              ; preds = %271, %247
  %275 = phi i1 [ false, %247 ], [ %273, %271 ]
  %276 = zext i1 %275 to i32
  %277 = call %struct.TYPE_19__* @make_one(%struct.TYPE_18__* %8, %struct.TYPE_19__* %267, i32 %276)
  store %struct.TYPE_19__* %277, %struct.TYPE_19__** %14, align 8
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %283 = call i32 @add_bfd_to_link(%struct.TYPE_19__* %278, i32 %281, %struct.bfd_link_info* %282)
  br label %284

284:                                              ; preds = %274, %194, %189
  br label %285

285:                                              ; preds = %284, %69
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %6, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %6, align 4
  br label %63

289:                                              ; preds = %63
  %290 = load i32, i32* %7, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %289
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %294 = call %struct.TYPE_19__* @make_tail(%struct.TYPE_19__* %293)
  store %struct.TYPE_19__* %294, %struct.TYPE_19__** %16, align 8
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %300 = call i32 @add_bfd_to_link(%struct.TYPE_19__* %295, i32 %298, %struct.bfd_link_info* %299)
  br label %301

301:                                              ; preds = %292, %289
  %302 = load i8*, i8** @dll_symname, align 8
  %303 = call i32 @free(i8* %302)
  br label %304

304:                                              ; preds = %301
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %306, align 8
  store %struct.TYPE_17__* %307, %struct.TYPE_17__** %5, align 8
  br label %27

308:                                              ; preds = %22, %27
  ret void
}

declare dso_local i32 @pe_dll_id_target(i32) #1

declare dso_local i32 @bfd_get_target(%struct.TYPE_19__*) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @ISALNUM(i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i8* @U(i8*) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_19__* @make_head(%struct.TYPE_19__*) #1

declare dso_local i32 @add_bfd_to_link(%struct.TYPE_19__*, i32, %struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_19__* @make_one(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_19__* @make_tail(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
