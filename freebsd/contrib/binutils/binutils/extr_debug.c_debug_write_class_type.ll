; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_write_class_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_write_class_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { i32, i64 }
%struct.debug_write_fns = type { i32 (i8*)*, i32 (i8*)*, i32 (i8*, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32, i64, i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i64)* }
%struct.debug_type = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, %struct.debug_method**, %struct.debug_baseclass**, %struct.debug_field**, %struct.debug_type* }
%struct.debug_method = type { %struct.debug_method_variant**, i32 }
%struct.debug_method_variant = type { i64, i32, i32, i32, i32, %struct.debug_type*, %struct.debug_type* }
%struct.debug_baseclass = type { i32, i32, i32, %struct.debug_type* }
%struct.debug_field = type { i32, %struct.TYPE_8__, i32, i64, %struct.debug_type* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.debug_name = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@DEBUG_KIND_CLASS = common dso_local global i64 0, align 8
@VOFFSET_STATIC_METHOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_handle*, %struct.debug_write_fns*, i8*, %struct.debug_type*, i8*)* @debug_write_class_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_write_class_type(%struct.debug_handle* %0, %struct.debug_write_fns* %1, i8* %2, %struct.debug_type* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.debug_handle*, align 8
  %8 = alloca %struct.debug_write_fns*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.debug_type*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.debug_type*, align 8
  %15 = alloca %struct.debug_field*, align 8
  %16 = alloca %struct.debug_baseclass*, align 8
  %17 = alloca %struct.debug_method*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.debug_method_variant*, align 8
  store %struct.debug_handle* %0, %struct.debug_handle** %7, align 8
  store %struct.debug_write_fns* %1, %struct.debug_write_fns** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.debug_type* %3, %struct.debug_type** %10, align 8
  store i8* %4, i8** %11, align 8
  %20 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %21 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  store %struct.debug_type* null, %struct.debug_type** %14, align 8
  br label %123

26:                                               ; preds = %5
  %27 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %28 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %34 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ule i32 %32, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %41 = call i32 @debug_set_class_id(%struct.debug_handle* %38, i8* %39, %struct.debug_type* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %6, align 4
  br label %491

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %26
  %47 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %48 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %51 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %49, %55
  br i1 %56, label %57, label %85

57:                                               ; preds = %46
  %58 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %59 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %65 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ugt i32 %63, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %71 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %70, i32 0, i32 9
  %72 = load i32 (i8*, i8*, i32, i64)*, i32 (i8*, i8*, i32, i64)** %71, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %76 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %82 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 %72(i8* %73, i8* %74, i32 %80, i64 %83)
  store i32 %84, i32* %6, align 4
  br label %491

85:                                               ; preds = %46
  %86 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %87 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %90 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store i64 %88, i64* %93, align 8
  %94 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %95 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %13, align 4
  %100 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %101 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 5
  %105 = load %struct.debug_type*, %struct.debug_type** %104, align 8
  store %struct.debug_type* %105, %struct.debug_type** %14, align 8
  %106 = load %struct.debug_type*, %struct.debug_type** %14, align 8
  %107 = icmp ne %struct.debug_type* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %85
  %109 = load %struct.debug_type*, %struct.debug_type** %14, align 8
  %110 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %111 = icmp ne %struct.debug_type* %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %114 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = load %struct.debug_type*, %struct.debug_type** %14, align 8
  %117 = call i32 @debug_write_type(%struct.debug_handle* %113, %struct.debug_write_fns* %114, i8* %115, %struct.debug_type* %116, %struct.debug_name* null)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %112
  %120 = load i32, i32* @FALSE, align 4
  store i32 %120, i32* %6, align 4
  br label %491

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %108, %85
  br label %123

123:                                              ; preds = %122, %25
  %124 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %125 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %124, i32 0, i32 8
  %126 = load i32 (i8*, i8*, i32, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32, i32)** %125, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %131 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DEBUG_KIND_CLASS, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %137 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.debug_type*, %struct.debug_type** %14, align 8
  %140 = icmp ne %struct.debug_type* %139, null
  %141 = zext i1 %140 to i32
  %142 = load %struct.debug_type*, %struct.debug_type** %14, align 8
  %143 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %144 = icmp eq %struct.debug_type* %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 %126(i8* %127, i8* %128, i32 %129, i32 %135, i32 %138, i32 %141, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %123
  %149 = load i32, i32* @FALSE, align 4
  store i32 %149, i32* %6, align 4
  br label %491

150:                                              ; preds = %123
  %151 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %152 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = icmp ne %struct.TYPE_9__* %154, null
  br i1 %155, label %156, label %485

156:                                              ; preds = %150
  %157 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %158 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 4
  %162 = load %struct.debug_field**, %struct.debug_field*** %161, align 8
  %163 = icmp ne %struct.debug_field** %162, null
  br i1 %163, label %164, label %255

164:                                              ; preds = %156
  store i32 0, i32* %12, align 4
  br label %165

165:                                              ; preds = %251, %164
  %166 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %167 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 4
  %171 = load %struct.debug_field**, %struct.debug_field*** %170, align 8
  %172 = load i32, i32* %12, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.debug_field*, %struct.debug_field** %171, i64 %173
  %175 = load %struct.debug_field*, %struct.debug_field** %174, align 8
  %176 = icmp ne %struct.debug_field* %175, null
  br i1 %176, label %177, label %254

177:                                              ; preds = %165
  %178 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %179 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 4
  %183 = load %struct.debug_field**, %struct.debug_field*** %182, align 8
  %184 = load i32, i32* %12, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.debug_field*, %struct.debug_field** %183, i64 %185
  %187 = load %struct.debug_field*, %struct.debug_field** %186, align 8
  store %struct.debug_field* %187, %struct.debug_field** %15, align 8
  %188 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %189 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %190 = load i8*, i8** %9, align 8
  %191 = load %struct.debug_field*, %struct.debug_field** %15, align 8
  %192 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %191, i32 0, i32 4
  %193 = load %struct.debug_type*, %struct.debug_type** %192, align 8
  %194 = call i32 @debug_write_type(%struct.debug_handle* %188, %struct.debug_write_fns* %189, i8* %190, %struct.debug_type* %193, %struct.debug_name* null)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %177
  %197 = load i32, i32* @FALSE, align 4
  store i32 %197, i32* %6, align 4
  br label %491

198:                                              ; preds = %177
  %199 = load %struct.debug_field*, %struct.debug_field** %15, align 8
  %200 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %224

203:                                              ; preds = %198
  %204 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %205 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %204, i32 0, i32 7
  %206 = load i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32)** %205, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = load %struct.debug_field*, %struct.debug_field** %15, align 8
  %209 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.debug_field*, %struct.debug_field** %15, align 8
  %212 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.debug_field*, %struct.debug_field** %15, align 8
  %217 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 %206(i8* %207, i32 %210, i32 %215, i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %203
  %222 = load i32, i32* @FALSE, align 4
  store i32 %222, i32* %6, align 4
  br label %491

223:                                              ; preds = %203
  br label %250

224:                                              ; preds = %198
  %225 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %226 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %225, i32 0, i32 6
  %227 = load i32 (i8*, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32)** %226, align 8
  %228 = load i8*, i8** %9, align 8
  %229 = load %struct.debug_field*, %struct.debug_field** %15, align 8
  %230 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.debug_field*, %struct.debug_field** %15, align 8
  %233 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.debug_field*, %struct.debug_field** %15, align 8
  %238 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.debug_field*, %struct.debug_field** %15, align 8
  %243 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 %227(i8* %228, i32 %231, i32 %236, i32 %241, i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %224
  %248 = load i32, i32* @FALSE, align 4
  store i32 %248, i32* %6, align 4
  br label %491

249:                                              ; preds = %224
  br label %250

250:                                              ; preds = %249, %223
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %12, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %12, align 4
  br label %165

254:                                              ; preds = %165
  br label %255

255:                                              ; preds = %254, %156
  %256 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %257 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 3
  %261 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %260, align 8
  %262 = icmp ne %struct.debug_baseclass** %261, null
  br i1 %262, label %263, label %320

263:                                              ; preds = %255
  store i32 0, i32* %12, align 4
  br label %264

264:                                              ; preds = %316, %263
  %265 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %266 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 3
  %270 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %269, align 8
  %271 = load i32, i32* %12, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.debug_baseclass*, %struct.debug_baseclass** %270, i64 %272
  %274 = load %struct.debug_baseclass*, %struct.debug_baseclass** %273, align 8
  %275 = icmp ne %struct.debug_baseclass* %274, null
  br i1 %275, label %276, label %319

276:                                              ; preds = %264
  %277 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %278 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 3
  %282 = load %struct.debug_baseclass**, %struct.debug_baseclass*** %281, align 8
  %283 = load i32, i32* %12, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds %struct.debug_baseclass*, %struct.debug_baseclass** %282, i64 %284
  %286 = load %struct.debug_baseclass*, %struct.debug_baseclass** %285, align 8
  store %struct.debug_baseclass* %286, %struct.debug_baseclass** %16, align 8
  %287 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %288 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %289 = load i8*, i8** %9, align 8
  %290 = load %struct.debug_baseclass*, %struct.debug_baseclass** %16, align 8
  %291 = getelementptr inbounds %struct.debug_baseclass, %struct.debug_baseclass* %290, i32 0, i32 3
  %292 = load %struct.debug_type*, %struct.debug_type** %291, align 8
  %293 = call i32 @debug_write_type(%struct.debug_handle* %287, %struct.debug_write_fns* %288, i8* %289, %struct.debug_type* %292, %struct.debug_name* null)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %276
  %296 = load i32, i32* @FALSE, align 4
  store i32 %296, i32* %6, align 4
  br label %491

297:                                              ; preds = %276
  %298 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %299 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %298, i32 0, i32 5
  %300 = load i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32)** %299, align 8
  %301 = load i8*, i8** %9, align 8
  %302 = load %struct.debug_baseclass*, %struct.debug_baseclass** %16, align 8
  %303 = getelementptr inbounds %struct.debug_baseclass, %struct.debug_baseclass* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.debug_baseclass*, %struct.debug_baseclass** %16, align 8
  %306 = getelementptr inbounds %struct.debug_baseclass, %struct.debug_baseclass* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.debug_baseclass*, %struct.debug_baseclass** %16, align 8
  %309 = getelementptr inbounds %struct.debug_baseclass, %struct.debug_baseclass* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = call i32 %300(i8* %301, i32 %304, i32 %307, i32 %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %315, label %313

313:                                              ; preds = %297
  %314 = load i32, i32* @FALSE, align 4
  store i32 %314, i32* %6, align 4
  br label %491

315:                                              ; preds = %297
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %12, align 4
  %318 = add i32 %317, 1
  store i32 %318, i32* %12, align 4
  br label %264

319:                                              ; preds = %264
  br label %320

320:                                              ; preds = %319, %255
  %321 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %322 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 2
  %326 = load %struct.debug_method**, %struct.debug_method*** %325, align 8
  %327 = icmp ne %struct.debug_method** %326, null
  br i1 %327, label %328, label %484

328:                                              ; preds = %320
  store i32 0, i32* %12, align 4
  br label %329

329:                                              ; preds = %480, %328
  %330 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %331 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 0
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 2
  %335 = load %struct.debug_method**, %struct.debug_method*** %334, align 8
  %336 = load i32, i32* %12, align 4
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds %struct.debug_method*, %struct.debug_method** %335, i64 %337
  %339 = load %struct.debug_method*, %struct.debug_method** %338, align 8
  %340 = icmp ne %struct.debug_method* %339, null
  br i1 %340, label %341, label %483

341:                                              ; preds = %329
  %342 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %343 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 2
  %347 = load %struct.debug_method**, %struct.debug_method*** %346, align 8
  %348 = load i32, i32* %12, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds %struct.debug_method*, %struct.debug_method** %347, i64 %349
  %351 = load %struct.debug_method*, %struct.debug_method** %350, align 8
  store %struct.debug_method* %351, %struct.debug_method** %17, align 8
  %352 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %353 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %352, i32 0, i32 4
  %354 = load i32 (i8*, i32)*, i32 (i8*, i32)** %353, align 8
  %355 = load i8*, i8** %9, align 8
  %356 = load %struct.debug_method*, %struct.debug_method** %17, align 8
  %357 = getelementptr inbounds %struct.debug_method, %struct.debug_method* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = call i32 %354(i8* %355, i32 %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %363, label %361

361:                                              ; preds = %341
  %362 = load i32, i32* @FALSE, align 4
  store i32 %362, i32* %6, align 4
  br label %491

363:                                              ; preds = %341
  store i32 0, i32* %18, align 4
  br label %364

364:                                              ; preds = %467, %363
  %365 = load %struct.debug_method*, %struct.debug_method** %17, align 8
  %366 = getelementptr inbounds %struct.debug_method, %struct.debug_method* %365, i32 0, i32 0
  %367 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %366, align 8
  %368 = load i32, i32* %18, align 4
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds %struct.debug_method_variant*, %struct.debug_method_variant** %367, i64 %369
  %371 = load %struct.debug_method_variant*, %struct.debug_method_variant** %370, align 8
  %372 = icmp ne %struct.debug_method_variant* %371, null
  br i1 %372, label %373, label %470

373:                                              ; preds = %364
  %374 = load %struct.debug_method*, %struct.debug_method** %17, align 8
  %375 = getelementptr inbounds %struct.debug_method, %struct.debug_method* %374, i32 0, i32 0
  %376 = load %struct.debug_method_variant**, %struct.debug_method_variant*** %375, align 8
  %377 = load i32, i32* %18, align 4
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds %struct.debug_method_variant*, %struct.debug_method_variant** %376, i64 %378
  %380 = load %struct.debug_method_variant*, %struct.debug_method_variant** %379, align 8
  store %struct.debug_method_variant* %380, %struct.debug_method_variant** %19, align 8
  %381 = load %struct.debug_method_variant*, %struct.debug_method_variant** %19, align 8
  %382 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %381, i32 0, i32 5
  %383 = load %struct.debug_type*, %struct.debug_type** %382, align 8
  %384 = icmp ne %struct.debug_type* %383, null
  br i1 %384, label %385, label %397

385:                                              ; preds = %373
  %386 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %387 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %388 = load i8*, i8** %9, align 8
  %389 = load %struct.debug_method_variant*, %struct.debug_method_variant** %19, align 8
  %390 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %389, i32 0, i32 5
  %391 = load %struct.debug_type*, %struct.debug_type** %390, align 8
  %392 = call i32 @debug_write_type(%struct.debug_handle* %386, %struct.debug_write_fns* %387, i8* %388, %struct.debug_type* %391, %struct.debug_name* null)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %396, label %394

394:                                              ; preds = %385
  %395 = load i32, i32* @FALSE, align 4
  store i32 %395, i32* %6, align 4
  br label %491

396:                                              ; preds = %385
  br label %397

397:                                              ; preds = %396, %373
  %398 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %399 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %400 = load i8*, i8** %9, align 8
  %401 = load %struct.debug_method_variant*, %struct.debug_method_variant** %19, align 8
  %402 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %401, i32 0, i32 6
  %403 = load %struct.debug_type*, %struct.debug_type** %402, align 8
  %404 = call i32 @debug_write_type(%struct.debug_handle* %398, %struct.debug_write_fns* %399, i8* %400, %struct.debug_type* %403, %struct.debug_name* null)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %408, label %406

406:                                              ; preds = %397
  %407 = load i32, i32* @FALSE, align 4
  store i32 %407, i32* %6, align 4
  br label %491

408:                                              ; preds = %397
  %409 = load %struct.debug_method_variant*, %struct.debug_method_variant** %19, align 8
  %410 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @VOFFSET_STATIC_METHOD, align 8
  %413 = icmp ne i64 %411, %412
  br i1 %413, label %414, label %444

414:                                              ; preds = %408
  %415 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %416 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %415, i32 0, i32 3
  %417 = load i32 (i8*, i32, i32, i32, i32, i64, i32)*, i32 (i8*, i32, i32, i32, i32, i64, i32)** %416, align 8
  %418 = load i8*, i8** %9, align 8
  %419 = load %struct.debug_method_variant*, %struct.debug_method_variant** %19, align 8
  %420 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.debug_method_variant*, %struct.debug_method_variant** %19, align 8
  %423 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 8
  %425 = load %struct.debug_method_variant*, %struct.debug_method_variant** %19, align 8
  %426 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.debug_method_variant*, %struct.debug_method_variant** %19, align 8
  %429 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = load %struct.debug_method_variant*, %struct.debug_method_variant** %19, align 8
  %432 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.debug_method_variant*, %struct.debug_method_variant** %19, align 8
  %435 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %434, i32 0, i32 5
  %436 = load %struct.debug_type*, %struct.debug_type** %435, align 8
  %437 = icmp ne %struct.debug_type* %436, null
  %438 = zext i1 %437 to i32
  %439 = call i32 %417(i8* %418, i32 %421, i32 %424, i32 %427, i32 %430, i64 %433, i32 %438)
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %443, label %441

441:                                              ; preds = %414
  %442 = load i32, i32* @FALSE, align 4
  store i32 %442, i32* %6, align 4
  br label %491

443:                                              ; preds = %414
  br label %466

444:                                              ; preds = %408
  %445 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %446 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %445, i32 0, i32 2
  %447 = load i32 (i8*, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32)** %446, align 8
  %448 = load i8*, i8** %9, align 8
  %449 = load %struct.debug_method_variant*, %struct.debug_method_variant** %19, align 8
  %450 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %449, i32 0, i32 4
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.debug_method_variant*, %struct.debug_method_variant** %19, align 8
  %453 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 8
  %455 = load %struct.debug_method_variant*, %struct.debug_method_variant** %19, align 8
  %456 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.debug_method_variant*, %struct.debug_method_variant** %19, align 8
  %459 = getelementptr inbounds %struct.debug_method_variant, %struct.debug_method_variant* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 8
  %461 = call i32 %447(i8* %448, i32 %451, i32 %454, i32 %457, i32 %460)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %465, label %463

463:                                              ; preds = %444
  %464 = load i32, i32* @FALSE, align 4
  store i32 %464, i32* %6, align 4
  br label %491

465:                                              ; preds = %444
  br label %466

466:                                              ; preds = %465, %443
  br label %467

467:                                              ; preds = %466
  %468 = load i32, i32* %18, align 4
  %469 = add i32 %468, 1
  store i32 %469, i32* %18, align 4
  br label %364

470:                                              ; preds = %364
  %471 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %472 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %471, i32 0, i32 1
  %473 = load i32 (i8*)*, i32 (i8*)** %472, align 8
  %474 = load i8*, i8** %9, align 8
  %475 = call i32 %473(i8* %474)
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %479, label %477

477:                                              ; preds = %470
  %478 = load i32, i32* @FALSE, align 4
  store i32 %478, i32* %6, align 4
  br label %491

479:                                              ; preds = %470
  br label %480

480:                                              ; preds = %479
  %481 = load i32, i32* %12, align 4
  %482 = add i32 %481, 1
  store i32 %482, i32* %12, align 4
  br label %329

483:                                              ; preds = %329
  br label %484

484:                                              ; preds = %483, %320
  br label %485

485:                                              ; preds = %484, %150
  %486 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %487 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %486, i32 0, i32 0
  %488 = load i32 (i8*)*, i32 (i8*)** %487, align 8
  %489 = load i8*, i8** %9, align 8
  %490 = call i32 %488(i8* %489)
  store i32 %490, i32* %6, align 4
  br label %491

491:                                              ; preds = %485, %477, %463, %441, %406, %394, %361, %313, %295, %247, %221, %196, %148, %119, %57, %43
  %492 = load i32, i32* %6, align 4
  ret i32 %492
}

declare dso_local i32 @debug_set_class_id(%struct.debug_handle*, i8*, %struct.debug_type*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @debug_write_type(%struct.debug_handle*, %struct.debug_write_fns*, i8*, %struct.debug_type*, %struct.debug_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
