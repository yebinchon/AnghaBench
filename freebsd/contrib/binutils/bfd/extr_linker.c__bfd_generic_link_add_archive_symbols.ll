; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c__bfd_generic_link_add_archive_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c__bfd_generic_link_add_archive_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.bfd_link_info = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry* }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_22__, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.bfd_link_hash_entry* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_23__ = type { i8* }
%struct.archive_hash_table = type { i32 }
%struct.archive_hash_entry = type { %struct.archive_list* }
%struct.archive_list = type { i32, %struct.archive_list* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_23__* }

@TRUE = common dso_local global i32 0, align 4
@bfd_error_no_armap = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@archive_hash_newfunc = common dso_local global i32 0, align 4
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@bfd_link_hash_common = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"__imp_%s\00", align 1
@bfd_object = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_generic_link_add_archive_symbols(%struct.TYPE_24__* %0, %struct.bfd_link_info* %1, i32 (%struct.TYPE_24__*, %struct.bfd_link_info*, i32*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32 (%struct.TYPE_24__*, %struct.bfd_link_info*, i32*)*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.archive_hash_table, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bfd_link_hash_entry**, align 8
  %15 = alloca %struct.archive_hash_entry*, align 8
  %16 = alloca %struct.archive_list*, align 8
  %17 = alloca %struct.archive_list**, align 8
  %18 = alloca %struct.bfd_link_hash_entry*, align 8
  %19 = alloca %struct.archive_hash_entry*, align 8
  %20 = alloca %struct.archive_list*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_24__*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i32 (%struct.TYPE_24__*, %struct.bfd_link_info*, i32*)* %2, i32 (%struct.TYPE_24__*, %struct.bfd_link_info*, i32*)** %7, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %26 = call i32 @bfd_has_map(%struct.TYPE_24__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %3
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %30 = call i32* @bfd_openr_next_archived_file(%struct.TYPE_24__* %29, i32* null)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %4, align 4
  br label %292

34:                                               ; preds = %28
  %35 = load i32, i32* @bfd_error_no_armap, align 4
  %36 = call i32 @bfd_set_error(i32 %35)
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %4, align 4
  br label %292

38:                                               ; preds = %3
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = call %struct.TYPE_18__* @bfd_ardata(%struct.TYPE_24__* %39)
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %41, align 8
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %8, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %45 = call %struct.TYPE_18__* @bfd_ardata(%struct.TYPE_24__* %44)
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i64 %48
  store %struct.TYPE_23__* %49, %struct.TYPE_23__** %9, align 8
  %50 = load i32, i32* @archive_hash_newfunc, align 4
  %51 = call i32 @archive_hash_table_init(%struct.archive_hash_table* %12, i32 %50, i32 8)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %4, align 4
  br label %292

55:                                               ; preds = %38
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %56, %struct.TYPE_23__** %10, align 8
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %97, %55
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %60 = icmp ult %struct.TYPE_23__* %58, %59
  br i1 %60, label %61, label %102

61:                                               ; preds = %57
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* @TRUE, align 4
  %66 = load i32, i32* @FALSE, align 4
  %67 = call %struct.archive_hash_entry* @archive_hash_lookup(%struct.archive_hash_table* %12, i8* %64, i32 %65, i32 %66)
  store %struct.archive_hash_entry* %67, %struct.archive_hash_entry** %15, align 8
  %68 = load %struct.archive_hash_entry*, %struct.archive_hash_entry** %15, align 8
  %69 = icmp eq %struct.archive_hash_entry* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %289

71:                                               ; preds = %61
  %72 = call i64 @archive_hash_allocate(%struct.archive_hash_table* %12, i32 16)
  %73 = inttoptr i64 %72 to %struct.archive_list*
  store %struct.archive_list* %73, %struct.archive_list** %16, align 8
  %74 = load %struct.archive_list*, %struct.archive_list** %16, align 8
  %75 = icmp eq %struct.archive_list* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %289

77:                                               ; preds = %71
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.archive_list*, %struct.archive_list** %16, align 8
  %80 = getelementptr inbounds %struct.archive_list, %struct.archive_list* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.archive_hash_entry*, %struct.archive_hash_entry** %15, align 8
  %82 = getelementptr inbounds %struct.archive_hash_entry, %struct.archive_hash_entry* %81, i32 0, i32 0
  store %struct.archive_list** %82, %struct.archive_list*** %17, align 8
  br label %83

83:                                               ; preds = %88, %77
  %84 = load %struct.archive_list**, %struct.archive_list*** %17, align 8
  %85 = load %struct.archive_list*, %struct.archive_list** %84, align 8
  %86 = icmp ne %struct.archive_list* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.archive_list**, %struct.archive_list*** %17, align 8
  %90 = load %struct.archive_list*, %struct.archive_list** %89, align 8
  %91 = getelementptr inbounds %struct.archive_list, %struct.archive_list* %90, i32 0, i32 1
  store %struct.archive_list** %91, %struct.archive_list*** %17, align 8
  br label %83

92:                                               ; preds = %83
  %93 = load %struct.archive_list*, %struct.archive_list** %16, align 8
  %94 = load %struct.archive_list**, %struct.archive_list*** %17, align 8
  store %struct.archive_list* %93, %struct.archive_list** %94, align 8
  %95 = load %struct.archive_list*, %struct.archive_list** %16, align 8
  %96 = getelementptr inbounds %struct.archive_list, %struct.archive_list* %95, i32 0, i32 1
  store %struct.archive_list* null, %struct.archive_list** %96, align 8
  br label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 1
  store %struct.TYPE_23__* %99, %struct.TYPE_23__** %10, align 8
  %100 = load i32, i32* %13, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %57

102:                                              ; preds = %57
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %108 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %107, i32 0, i32 1
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  store %struct.bfd_link_hash_entry** %110, %struct.bfd_link_hash_entry*** %14, align 8
  br label %111

111:                                              ; preds = %277, %197, %152, %102
  %112 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %14, align 8
  %113 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %112, align 8
  %114 = icmp ne %struct.bfd_link_hash_entry* %113, null
  br i1 %114, label %115, label %283

115:                                              ; preds = %111
  %116 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %14, align 8
  %117 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %116, align 8
  store %struct.bfd_link_hash_entry* %117, %struct.bfd_link_hash_entry** %18, align 8
  %118 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %18, align 8
  %119 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @bfd_link_hash_undefined, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %153

123:                                              ; preds = %115
  %124 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %18, align 8
  %125 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @bfd_link_hash_common, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %123
  %130 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %14, align 8
  %131 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %130, align 8
  %132 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %133 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %132, i32 0, i32 1
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %135, align 8
  %137 = icmp ne %struct.bfd_link_hash_entry* %131, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %129
  %139 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %14, align 8
  %140 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %139, align 8
  %141 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %143, align 8
  %145 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %14, align 8
  store %struct.bfd_link_hash_entry* %144, %struct.bfd_link_hash_entry** %145, align 8
  br label %152

146:                                              ; preds = %129
  %147 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %14, align 8
  %148 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %147, align 8
  %149 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  store %struct.bfd_link_hash_entry** %151, %struct.bfd_link_hash_entry*** %14, align 8
  br label %152

152:                                              ; preds = %146, %138
  br label %111

153:                                              ; preds = %123, %115
  %154 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %18, align 8
  %155 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* @FALSE, align 4
  %159 = load i32, i32* @FALSE, align 4
  %160 = call %struct.archive_hash_entry* @archive_hash_lookup(%struct.archive_hash_table* %12, i8* %157, i32 %158, i32 %159)
  store %struct.archive_hash_entry* %160, %struct.archive_hash_entry** %19, align 8
  %161 = load %struct.archive_hash_entry*, %struct.archive_hash_entry** %19, align 8
  %162 = icmp eq %struct.archive_hash_entry* %161, null
  br i1 %162, label %163, label %204

163:                                              ; preds = %153
  %164 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %165 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %194

168:                                              ; preds = %163
  %169 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %18, align 8
  %170 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @strlen(i8* %172)
  %174 = add nsw i64 %173, 10
  store i64 %174, i64* %21, align 8
  %175 = load i64, i64* %21, align 8
  %176 = call i8* @bfd_malloc(i64 %175)
  store i8* %176, i8** %22, align 8
  %177 = load i8*, i8** %22, align 8
  %178 = icmp eq i8* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %168
  %180 = load i32, i32* @FALSE, align 4
  store i32 %180, i32* %4, align 4
  br label %292

181:                                              ; preds = %168
  %182 = load i8*, i8** %22, align 8
  %183 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %18, align 8
  %184 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @sprintf(i8* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %186)
  %188 = load i8*, i8** %22, align 8
  %189 = load i32, i32* @FALSE, align 4
  %190 = load i32, i32* @FALSE, align 4
  %191 = call %struct.archive_hash_entry* @archive_hash_lookup(%struct.archive_hash_table* %12, i8* %188, i32 %189, i32 %190)
  store %struct.archive_hash_entry* %191, %struct.archive_hash_entry** %19, align 8
  %192 = load i8*, i8** %22, align 8
  %193 = call i32 @free(i8* %192)
  br label %194

194:                                              ; preds = %181, %163
  %195 = load %struct.archive_hash_entry*, %struct.archive_hash_entry** %19, align 8
  %196 = icmp eq %struct.archive_hash_entry* %195, null
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %14, align 8
  %199 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %198, align 8
  %200 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 0
  store %struct.bfd_link_hash_entry** %202, %struct.bfd_link_hash_entry*** %14, align 8
  br label %111

203:                                              ; preds = %194
  br label %204

204:                                              ; preds = %203, %153
  %205 = load %struct.archive_hash_entry*, %struct.archive_hash_entry** %19, align 8
  %206 = getelementptr inbounds %struct.archive_hash_entry, %struct.archive_hash_entry* %205, i32 0, i32 0
  %207 = load %struct.archive_list*, %struct.archive_list** %206, align 8
  store %struct.archive_list* %207, %struct.archive_list** %20, align 8
  br label %208

208:                                              ; preds = %273, %204
  %209 = load %struct.archive_list*, %struct.archive_list** %20, align 8
  %210 = icmp ne %struct.archive_list* %209, null
  br i1 %210, label %211, label %277

211:                                              ; preds = %208
  %212 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %18, align 8
  %213 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @bfd_link_hash_undefined, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %18, align 8
  %219 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @bfd_link_hash_common, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %277

224:                                              ; preds = %217, %211
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %226 = load %struct.archive_list*, %struct.archive_list** %20, align 8
  %227 = getelementptr inbounds %struct.archive_list, %struct.archive_list* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call %struct.TYPE_24__* @bfd_get_elt_at_index(%struct.TYPE_24__* %225, i32 %228)
  store %struct.TYPE_24__* %229, %struct.TYPE_24__** %23, align 8
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %231 = icmp eq %struct.TYPE_24__* %230, null
  br i1 %231, label %232, label %233

232:                                              ; preds = %224
  br label %289

233:                                              ; preds = %224
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, -1
  br i1 %237, label %244, label %238

238:                                              ; preds = %233
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %11, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %238, %233
  br label %273

245:                                              ; preds = %238
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %247 = load i32, i32* @bfd_object, align 4
  %248 = call i32 @bfd_check_format(%struct.TYPE_24__* %246, i32 %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %245
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 0
  store i32 -1, i32* %252, align 4
  br label %273

253:                                              ; preds = %245
  %254 = load i32 (%struct.TYPE_24__*, %struct.bfd_link_info*, i32*)*, i32 (%struct.TYPE_24__*, %struct.bfd_link_info*, i32*)** %7, align 8
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %256 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %257 = call i32 %254(%struct.TYPE_24__* %255, %struct.bfd_link_info* %256, i32* %24)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %253
  br label %289

260:                                              ; preds = %253
  %261 = load i32, i32* %24, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %260
  %264 = load i32, i32* %11, align 4
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 4
  br label %272

267:                                              ; preds = %260
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 0
  store i32 -1, i32* %269, align 4
  %270 = load i32, i32* %11, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %11, align 4
  br label %272

272:                                              ; preds = %267, %263
  br label %273

273:                                              ; preds = %272, %250, %244
  %274 = load %struct.archive_list*, %struct.archive_list** %20, align 8
  %275 = getelementptr inbounds %struct.archive_list, %struct.archive_list* %274, i32 0, i32 1
  %276 = load %struct.archive_list*, %struct.archive_list** %275, align 8
  store %struct.archive_list* %276, %struct.archive_list** %20, align 8
  br label %208

277:                                              ; preds = %223, %208
  %278 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %14, align 8
  %279 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %278, align 8
  %280 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 0
  store %struct.bfd_link_hash_entry** %282, %struct.bfd_link_hash_entry*** %14, align 8
  br label %111

283:                                              ; preds = %111
  %284 = call i32 @archive_hash_table_free(%struct.archive_hash_table* %12)
  %285 = load i32, i32* %11, align 4
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 4
  %288 = load i32, i32* @TRUE, align 4
  store i32 %288, i32* %4, align 4
  br label %292

289:                                              ; preds = %259, %232, %76, %70
  %290 = call i32 @archive_hash_table_free(%struct.archive_hash_table* %12)
  %291 = load i32, i32* @FALSE, align 4
  store i32 %291, i32* %4, align 4
  br label %292

292:                                              ; preds = %289, %283, %179, %53, %34, %32
  %293 = load i32, i32* %4, align 4
  ret i32 %293
}

declare dso_local i32 @bfd_has_map(%struct.TYPE_24__*) #1

declare dso_local i32* @bfd_openr_next_archived_file(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_18__* @bfd_ardata(%struct.TYPE_24__*) #1

declare dso_local i32 @archive_hash_table_init(%struct.archive_hash_table*, i32, i32) #1

declare dso_local %struct.archive_hash_entry* @archive_hash_lookup(%struct.archive_hash_table*, i8*, i32, i32) #1

declare dso_local i64 @archive_hash_allocate(%struct.archive_hash_table*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_24__* @bfd_get_elt_at_index(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @bfd_check_format(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @archive_hash_table_free(%struct.archive_hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
