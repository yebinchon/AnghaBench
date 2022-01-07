; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_tag_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_tag_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.TYPE_5__*, i64, i32, %struct.ieee_name_type* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i32, i64, i32 }
%struct.ieee_name_type = type { i8*, i32, i32, %struct.TYPE_4__, %struct.ieee_name_type*, i64, i8* }
%struct.ieee_name_type_hash_entry = type { %struct.TYPE_6__, %struct.ieee_name_type* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee_defined_enum = type { i8*, i32, i32, %struct.TYPE_4__, %struct.ieee_defined_enum*, i64, i8* }

@DEBUG_KIND_ENUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"__anon%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32, i32)* @ieee_tag_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ieee_tag_type(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee_handle*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [20 x i8], align 16
  %14 = alloca %struct.ieee_name_type_hash_entry*, align 8
  %15 = alloca %struct.ieee_name_type*, align 8
  %16 = alloca %struct.ieee_defined_enum*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.ieee_handle*
  store %struct.ieee_handle* %18, %struct.ieee_handle** %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @DEBUG_KIND_ENUM, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %98

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (...) @abort() #4
  unreachable

27:                                               ; preds = %22
  %28 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %29 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %28, i32 0, i32 3
  %30 = load %struct.ieee_name_type*, %struct.ieee_name_type** %29, align 8
  %31 = bitcast %struct.ieee_name_type* %30 to %struct.ieee_defined_enum*
  store %struct.ieee_defined_enum* %31, %struct.ieee_defined_enum** %16, align 8
  br label %32

32:                                               ; preds = %56, %27
  %33 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %16, align 8
  %34 = icmp ne %struct.ieee_defined_enum* %33, null
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %16, align 8
  %37 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %16, align 8
  %42 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %49 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %16, align 8
  %50 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load i8*, i8** @TRUE, align 8
  %53 = load i8*, i8** @FALSE, align 8
  %54 = call i8* @ieee_push_type(%struct.ieee_handle* %48, i64 %51, i32 0, i8* %52, i8* %53)
  store i8* %54, i8** %5, align 8
  br label %240

55:                                               ; preds = %40, %35
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %16, align 8
  %58 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %57, i32 0, i32 4
  %59 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %58, align 8
  store %struct.ieee_defined_enum* %59, %struct.ieee_defined_enum** %16, align 8
  br label %32

60:                                               ; preds = %32
  %61 = call i64 @xmalloc(i32 80)
  %62 = inttoptr i64 %61 to %struct.ieee_defined_enum*
  store %struct.ieee_defined_enum* %62, %struct.ieee_defined_enum** %16, align 8
  %63 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %16, align 8
  %64 = bitcast %struct.ieee_defined_enum* %63 to %struct.ieee_name_type*
  %65 = call i32 @memset(%struct.ieee_name_type* %64, i32 0, i32 80)
  %66 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %67 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %16, align 8
  %70 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %69, i32 0, i32 5
  store i64 %68, i64* %70, align 8
  %71 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %72 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %16, align 8
  %77 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @FALSE, align 8
  %79 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %16, align 8
  %80 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  %81 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %82 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %81, i32 0, i32 3
  %83 = load %struct.ieee_name_type*, %struct.ieee_name_type** %82, align 8
  %84 = bitcast %struct.ieee_name_type* %83 to %struct.ieee_defined_enum*
  %85 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %16, align 8
  %86 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %85, i32 0, i32 4
  store %struct.ieee_defined_enum* %84, %struct.ieee_defined_enum** %86, align 8
  %87 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %16, align 8
  %88 = bitcast %struct.ieee_defined_enum* %87 to %struct.ieee_name_type*
  %89 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %90 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %89, i32 0, i32 3
  store %struct.ieee_name_type* %88, %struct.ieee_name_type** %90, align 8
  %91 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %92 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %16, align 8
  %93 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load i8*, i8** @TRUE, align 8
  %96 = load i8*, i8** @FALSE, align 8
  %97 = call i8* @ieee_push_type(%struct.ieee_handle* %91, i64 %94, i32 0, i8* %95, i8* %96)
  store i8* %97, i8** %5, align 8
  br label %240

98:                                               ; preds = %4
  %99 = load i8*, i8** @FALSE, align 8
  store i8* %99, i8** %11, align 8
  %100 = load i8*, i8** @FALSE, align 8
  store i8* %100, i8** %12, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @sprintf(i8* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  store i8* %107, i8** %7, align 8
  %108 = load i8*, i8** @TRUE, align 8
  store i8* %108, i8** %12, align 8
  br label %109

109:                                              ; preds = %103, %98
  %110 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %111 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %110, i32 0, i32 2
  %112 = load i8*, i8** %7, align 8
  %113 = load i8*, i8** @TRUE, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = call %struct.ieee_name_type_hash_entry* @ieee_name_type_hash_lookup(i32* %111, i8* %112, i8* %113, i8* %114)
  store %struct.ieee_name_type_hash_entry* %115, %struct.ieee_name_type_hash_entry** %14, align 8
  %116 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %14, align 8
  %117 = icmp eq %struct.ieee_name_type_hash_entry* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i8*, i8** @FALSE, align 8
  store i8* %119, i8** %5, align 8
  br label %240

120:                                              ; preds = %109
  %121 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %14, align 8
  %122 = getelementptr inbounds %struct.ieee_name_type_hash_entry, %struct.ieee_name_type_hash_entry* %121, i32 0, i32 1
  %123 = load %struct.ieee_name_type*, %struct.ieee_name_type** %122, align 8
  store %struct.ieee_name_type* %123, %struct.ieee_name_type** %15, align 8
  br label %124

124:                                              ; preds = %174, %120
  %125 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %126 = icmp ne %struct.ieee_name_type* %125, null
  br i1 %126, label %127, label %178

127:                                              ; preds = %124
  %128 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %129 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %165

133:                                              ; preds = %127
  %134 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %135 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %136 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %140 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %144 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %148 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i8* @ieee_push_type(%struct.ieee_handle* %134, i64 %138, i32 %142, i8* %146, i8* %150)
  %152 = icmp ne i8* %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %133
  %154 = load i8*, i8** @FALSE, align 8
  store i8* %154, i8** %5, align 8
  br label %240

155:                                              ; preds = %133
  %156 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %157 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %156, i32 0, i32 0
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %161 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %160, i32 0, i32 3
  %162 = bitcast %struct.TYPE_4__* %159 to i8*
  %163 = bitcast %struct.TYPE_4__* %161 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 8 %163, i64 40, i1 false)
  %164 = load i8*, i8** @TRUE, align 8
  store i8* %164, i8** %5, align 8
  br label %240

165:                                              ; preds = %127
  %166 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %167 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %165
  %172 = load i8*, i8** @TRUE, align 8
  store i8* %172, i8** %11, align 8
  br label %173

173:                                              ; preds = %171, %165
  br label %174

174:                                              ; preds = %173
  %175 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %176 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %175, i32 0, i32 4
  %177 = load %struct.ieee_name_type*, %struct.ieee_name_type** %176, align 8
  store %struct.ieee_name_type* %177, %struct.ieee_name_type** %15, align 8
  br label %124

178:                                              ; preds = %124
  %179 = call i64 @xmalloc(i32 80)
  %180 = inttoptr i64 %179 to %struct.ieee_name_type*
  store %struct.ieee_name_type* %180, %struct.ieee_name_type** %15, align 8
  %181 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %182 = call i32 @memset(%struct.ieee_name_type* %181, i32 0, i32 80)
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %185 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 8
  %186 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %14, align 8
  %187 = getelementptr inbounds %struct.ieee_name_type_hash_entry, %struct.ieee_name_type_hash_entry* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %191 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  store i32 %189, i32* %192, align 8
  %193 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %194 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %197 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 3
  store i64 %195, i64* %198, align 8
  %199 = load i8*, i8** %11, align 8
  %200 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %201 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  store i8* %199, i8** %202, align 8
  %203 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %204 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %204, align 8
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %209 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 4
  %210 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %14, align 8
  %211 = getelementptr inbounds %struct.ieee_name_type_hash_entry, %struct.ieee_name_type_hash_entry* %210, i32 0, i32 1
  %212 = load %struct.ieee_name_type*, %struct.ieee_name_type** %211, align 8
  %213 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %214 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %213, i32 0, i32 4
  store %struct.ieee_name_type* %212, %struct.ieee_name_type** %214, align 8
  %215 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %216 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %14, align 8
  %217 = getelementptr inbounds %struct.ieee_name_type_hash_entry, %struct.ieee_name_type_hash_entry* %216, i32 0, i32 1
  store %struct.ieee_name_type* %215, %struct.ieee_name_type** %217, align 8
  %218 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %219 = load %struct.ieee_name_type*, %struct.ieee_name_type** %15, align 8
  %220 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load i8*, i8** @FALSE, align 8
  %224 = load i8*, i8** %11, align 8
  %225 = call i8* @ieee_push_type(%struct.ieee_handle* %218, i64 %222, i32 0, i8* %223, i8* %224)
  %226 = icmp ne i8* %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %178
  %228 = load i8*, i8** @FALSE, align 8
  store i8* %228, i8** %5, align 8
  br label %240

229:                                              ; preds = %178
  %230 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %14, align 8
  %231 = getelementptr inbounds %struct.ieee_name_type_hash_entry, %struct.ieee_name_type_hash_entry* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %235 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %234, i32 0, i32 0
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 2
  store i32 %233, i32* %238, align 8
  %239 = load i8*, i8** @TRUE, align 8
  store i8* %239, i8** %5, align 8
  br label %240

240:                                              ; preds = %229, %227, %155, %153, %118, %60, %47
  %241 = load i8*, i8** %5, align 8
  ret i8* %241
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @ieee_push_type(%struct.ieee_handle*, i64, i32, i8*, i8*) #2

declare dso_local i64 @xmalloc(i32) #2

declare dso_local i32 @memset(%struct.ieee_name_type*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local %struct.ieee_name_type_hash_entry* @ieee_name_type_hash_lookup(i32*, i8*, i8*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
