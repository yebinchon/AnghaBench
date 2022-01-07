; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_write_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_write_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_type = type { i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.debug_type*, %struct.debug_type*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.debug_type*, %struct.TYPE_23__*, %struct.debug_type*, %struct.TYPE_22__*, %struct.TYPE_19__*, i32, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { %struct.debug_name*, %struct.debug_type* }
%struct.debug_name = type { i64, i8*, i64 }
%struct.TYPE_15__ = type { i32, %struct.debug_type*, %struct.debug_type**, %struct.debug_type* }
%struct.TYPE_14__ = type { %struct.debug_type*, %struct.debug_type* }
%struct.TYPE_26__ = type { i32, %struct.debug_type* }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.debug_type*, %struct.debug_type* }
%struct.TYPE_24__ = type { i32, i32, %struct.debug_type* }
%struct.TYPE_23__ = type { i32, %struct.debug_type**, %struct.debug_type* }
%struct.TYPE_22__ = type { i8**, i32* }
%struct.TYPE_19__ = type { i32, i64, %struct.debug_field** }
%struct.debug_field = type { i32, %struct.TYPE_21__, i32, %struct.debug_type* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.debug_type** }
%struct.debug_handle = type { i64, i32 }
%struct.debug_write_fns = type { i8* (i8*, i8*)*, i8* (i8*)*, i8* (i8*, i8*, i32, i64)*, i8* (i8*)*, i8* (i8*, i32, i32)*, i8* (i8*, i32)*, i8* (i8*, i32)*, i8* (i8*, i32)*, i8* (i8*)*, i8* (i8*, i8*, i8**, i32*)*, i8* (i8*)*, i8* (i8*, i32, i32)*, i8* (i8*)*, i8* (i8*, i32, i32)*, i8* (i8*, i32, i32, i32)*, i8* (i8*, i32)*, i8* (i8*)*, i8* (i8*, i32, i32, i32)*, i8* (i8*)*, i8* (i8*)*, i32 (i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32)* }

@FALSE = common dso_local global i8* null, align 8
@DEBUG_OBJECT_TAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"debug_write_type: illegal type encountered\00", align 1
@DEBUG_TYPE_NULL = common dso_local global %struct.debug_type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.debug_handle*, %struct.debug_write_fns*, i8*, %struct.debug_type*, %struct.debug_name*)* @debug_write_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debug_write_type(%struct.debug_handle* %0, %struct.debug_write_fns* %1, i8* %2, %struct.debug_type* %3, %struct.debug_name* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.debug_handle*, align 8
  %8 = alloca %struct.debug_write_fns*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.debug_type*, align 8
  %11 = alloca %struct.debug_name*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.debug_type*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.debug_field*, align 8
  store %struct.debug_handle* %0, %struct.debug_handle** %7, align 8
  store %struct.debug_write_fns* %1, %struct.debug_write_fns** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.debug_type* %3, %struct.debug_type** %10, align 8
  store %struct.debug_name* %4, %struct.debug_name** %11, align 8
  store i8* null, i8** %14, align 8
  %18 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %19 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 139
  br i1 %21, label %27, label %22

22:                                               ; preds = %5
  %23 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %24 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 132
  br i1 %26, label %27, label %165

27:                                               ; preds = %22, %5
  %28 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %29 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load %struct.debug_name*, %struct.debug_name** %32, align 8
  %34 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %37 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %54, label %40

40:                                               ; preds = %27
  %41 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %42 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 132
  br i1 %44, label %45, label %165

45:                                               ; preds = %40
  %46 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %47 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load %struct.debug_name*, %struct.debug_name** %50, align 8
  %52 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %53 = icmp ne %struct.debug_name* %51, %52
  br i1 %53, label %54, label %165

54:                                               ; preds = %45, %27
  %55 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %56 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 139
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %61 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %60, i32 0, i32 0
  %62 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %61, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %65 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.debug_name*, %struct.debug_name** %68, align 8
  %70 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* %62(i8* %63, i8* %71)
  store i8* %72, i8** %6, align 8
  br label %927

73:                                               ; preds = %54
  %74 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %75 = bitcast %struct.debug_handle* %74 to i8*
  %76 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %77 = call %struct.debug_type* @debug_get_real_type(i8* %75, %struct.debug_type* %76, i32* null)
  store %struct.debug_type* %77, %struct.debug_type** %15, align 8
  %78 = load %struct.debug_type*, %struct.debug_type** %15, align 8
  %79 = icmp eq %struct.debug_type* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %82 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %81, i32 0, i32 1
  %83 = load i8* (i8*)*, i8* (i8*)** %82, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i8* %83(i8* %84)
  store i8* %85, i8** %6, align 8
  br label %927

86:                                               ; preds = %73
  store i32 0, i32* %16, align 4
  %87 = load %struct.debug_type*, %struct.debug_type** %15, align 8
  %88 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 133
  br i1 %90, label %106, label %91

91:                                               ; preds = %86
  %92 = load %struct.debug_type*, %struct.debug_type** %15, align 8
  %93 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 131
  br i1 %95, label %106, label %96

96:                                               ; preds = %91
  %97 = load %struct.debug_type*, %struct.debug_type** %15, align 8
  %98 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 149
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.debug_type*, %struct.debug_type** %15, align 8
  %103 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 130
  br i1 %105, label %106, label %146

106:                                              ; preds = %101, %96, %91, %86
  %107 = load %struct.debug_type*, %struct.debug_type** %15, align 8
  %108 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 12
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  %111 = icmp ne %struct.TYPE_19__* %110, null
  br i1 %111, label %112, label %146

112:                                              ; preds = %106
  %113 = load %struct.debug_type*, %struct.debug_type** %15, align 8
  %114 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 12
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %120 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp ule i32 %118, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %112
  %124 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %125 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %126 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load %struct.debug_name*, %struct.debug_name** %129, align 8
  %131 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.debug_type*, %struct.debug_type** %15, align 8
  %134 = call i32 @debug_set_class_id(%struct.debug_handle* %124, i8* %132, %struct.debug_type* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %123
  %137 = load i8*, i8** @FALSE, align 8
  store i8* %137, i8** %6, align 8
  br label %927

138:                                              ; preds = %123
  br label %139

139:                                              ; preds = %138, %112
  %140 = load %struct.debug_type*, %struct.debug_type** %15, align 8
  %141 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 12
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %139, %106, %101
  %147 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %148 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %147, i32 0, i32 2
  %149 = load i8* (i8*, i8*, i32, i64)*, i8* (i8*, i8*, i32, i64)** %148, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %152 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load %struct.debug_name*, %struct.debug_name** %155, align 8
  %157 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* %16, align 4
  %160 = load %struct.debug_type*, %struct.debug_type** %15, align 8
  %161 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = call i8* %149(i8* %150, i8* %158, i32 %159, i64 %163)
  store i8* %164, i8** %6, align 8
  br label %927

165:                                              ; preds = %45, %40, %22
  %166 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %167 = icmp ne %struct.debug_name* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %170 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %173 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %168, %165
  %175 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %176 = icmp ne %struct.debug_name* %175, null
  br i1 %176, label %177, label %198

177:                                              ; preds = %174
  %178 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %179 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 139
  br i1 %181, label %182, label %198

182:                                              ; preds = %177
  %183 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %184 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 132
  br i1 %186, label %187, label %198

187:                                              ; preds = %182
  %188 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %189 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @DEBUG_OBJECT_TAG, align 8
  %192 = icmp eq i64 %190, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %196 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  store i8* %197, i8** %14, align 8
  br label %198

198:                                              ; preds = %187, %182, %177, %174
  %199 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %200 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  switch i32 %201, label %925 [
    i32 143, label %202
    i32 142, label %206
    i32 129, label %235
    i32 141, label %241
    i32 145, label %254
    i32 148, label %263
    i32 150, label %272
    i32 133, label %281
    i32 131, label %281
    i32 149, label %471
    i32 130, label %471
    i32 146, label %478
    i32 137, label %510
    i32 144, label %528
    i32 135, label %600
    i32 136, label %618
    i32 151, label %650
    i32 134, label %700
    i32 138, label %726
    i32 140, label %758
    i32 147, label %861
    i32 128, label %879
    i32 139, label %897
    i32 132, label %908
  ]

202:                                              ; preds = %198
  %203 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %204 = call i32 @debug_error(i32 %203)
  %205 = load i8*, i8** @FALSE, align 8
  store i8* %205, i8** %6, align 8
  br label %927

206:                                              ; preds = %198
  %207 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %208 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 14
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 0
  %212 = load %struct.debug_type**, %struct.debug_type*** %211, align 8
  %213 = load %struct.debug_type*, %struct.debug_type** %212, align 8
  %214 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  %215 = icmp eq %struct.debug_type* %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %206
  %217 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %218 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %217, i32 0, i32 1
  %219 = load i8* (i8*)*, i8* (i8*)** %218, align 8
  %220 = load i8*, i8** %9, align 8
  %221 = call i8* %219(i8* %220)
  store i8* %221, i8** %6, align 8
  br label %927

222:                                              ; preds = %206
  %223 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %224 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %227 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 14
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = load %struct.debug_type**, %struct.debug_type*** %230, align 8
  %232 = load %struct.debug_type*, %struct.debug_type** %231, align 8
  %233 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %234 = call i8* @debug_write_type(%struct.debug_handle* %223, %struct.debug_write_fns* %224, i8* %225, %struct.debug_type* %232, %struct.debug_name* %233)
  store i8* %234, i8** %6, align 8
  br label %927

235:                                              ; preds = %198
  %236 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %237 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %236, i32 0, i32 3
  %238 = load i8* (i8*)*, i8* (i8*)** %237, align 8
  %239 = load i8*, i8** %9, align 8
  %240 = call i8* %238(i8* %239)
  store i8* %240, i8** %6, align 8
  br label %927

241:                                              ; preds = %198
  %242 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %243 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %242, i32 0, i32 4
  %244 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %243, align 8
  %245 = load i8*, i8** %9, align 8
  %246 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %247 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %250 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 13
  %252 = load i32, i32* %251, align 8
  %253 = call i8* %244(i8* %245, i32 %248, i32 %252)
  store i8* %253, i8** %6, align 8
  br label %927

254:                                              ; preds = %198
  %255 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %256 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %255, i32 0, i32 5
  %257 = load i8* (i8*, i32)*, i8* (i8*, i32)** %256, align 8
  %258 = load i8*, i8** %9, align 8
  %259 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %260 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = call i8* %257(i8* %258, i32 %261)
  store i8* %262, i8** %6, align 8
  br label %927

263:                                              ; preds = %198
  %264 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %265 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %264, i32 0, i32 6
  %266 = load i8* (i8*, i32)*, i8* (i8*, i32)** %265, align 8
  %267 = load i8*, i8** %9, align 8
  %268 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %269 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call i8* %266(i8* %267, i32 %270)
  store i8* %271, i8** %6, align 8
  br label %927

272:                                              ; preds = %198
  %273 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %274 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %273, i32 0, i32 7
  %275 = load i8* (i8*, i32)*, i8* (i8*, i32)** %274, align 8
  %276 = load i8*, i8** %9, align 8
  %277 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %278 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = call i8* %275(i8* %276, i32 %279)
  store i8* %280, i8** %6, align 8
  br label %927

281:                                              ; preds = %198, %198
  %282 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %283 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 12
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %284, align 8
  %286 = icmp ne %struct.TYPE_19__* %285, null
  br i1 %286, label %287, label %356

287:                                              ; preds = %281
  %288 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %289 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 12
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %295 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = icmp ule i32 %293, %296
  br i1 %297, label %298, label %307

298:                                              ; preds = %287
  %299 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %300 = load i8*, i8** %14, align 8
  %301 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %302 = call i32 @debug_set_class_id(%struct.debug_handle* %299, i8* %300, %struct.debug_type* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %306, label %304

304:                                              ; preds = %298
  %305 = load i8*, i8** @FALSE, align 8
  store i8* %305, i8** %6, align 8
  br label %927

306:                                              ; preds = %298
  br label %307

307:                                              ; preds = %306, %287
  %308 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %309 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %312 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 12
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = icmp eq i64 %310, %316
  br i1 %317, label %318, label %347

318:                                              ; preds = %307
  %319 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %320 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 12
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %326 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = icmp ugt i32 %324, %327
  %329 = zext i1 %328 to i32
  %330 = call i32 @assert(i32 %329)
  %331 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %332 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %331, i32 0, i32 2
  %333 = load i8* (i8*, i8*, i32, i64)*, i8* (i8*, i8*, i32, i64)** %332, align 8
  %334 = load i8*, i8** %9, align 8
  %335 = load i8*, i8** %14, align 8
  %336 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %337 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 12
  %339 = load %struct.TYPE_19__*, %struct.TYPE_19__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %343 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = sext i32 %344 to i64
  %346 = call i8* %333(i8* %334, i8* %335, i32 %341, i64 %345)
  store i8* %346, i8** %6, align 8
  br label %927

347:                                              ; preds = %307
  %348 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %349 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %352 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %352, i32 0, i32 12
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 1
  store i64 %350, i64* %355, align 8
  br label %356

356:                                              ; preds = %347, %281
  %357 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %358 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %357, i32 0, i32 21
  %359 = load i32 (i8*, i8*, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32)** %358, align 8
  %360 = load i8*, i8** %9, align 8
  %361 = load i8*, i8** %14, align 8
  %362 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %363 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 12
  %365 = load %struct.TYPE_19__*, %struct.TYPE_19__** %364, align 8
  %366 = icmp ne %struct.TYPE_19__* %365, null
  br i1 %366, label %367, label %374

367:                                              ; preds = %356
  %368 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %369 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %369, i32 0, i32 12
  %371 = load %struct.TYPE_19__*, %struct.TYPE_19__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  br label %375

374:                                              ; preds = %356
  br label %375

375:                                              ; preds = %374, %367
  %376 = phi i32 [ %373, %367 ], [ 0, %374 ]
  %377 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %378 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = icmp eq i32 %379, 133
  %381 = zext i1 %380 to i32
  %382 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %383 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = call i32 %359(i8* %360, i8* %361, i32 %376, i32 %381, i32 %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %389, label %387

387:                                              ; preds = %375
  %388 = load i8*, i8** @FALSE, align 8
  store i8* %388, i8** %6, align 8
  br label %927

389:                                              ; preds = %375
  %390 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %391 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %391, i32 0, i32 12
  %393 = load %struct.TYPE_19__*, %struct.TYPE_19__** %392, align 8
  %394 = icmp ne %struct.TYPE_19__* %393, null
  br i1 %394, label %395, label %465

395:                                              ; preds = %389
  %396 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %397 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %397, i32 0, i32 12
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %399, i32 0, i32 2
  %401 = load %struct.debug_field**, %struct.debug_field*** %400, align 8
  %402 = icmp ne %struct.debug_field** %401, null
  br i1 %402, label %403, label %465

403:                                              ; preds = %395
  store i32 0, i32* %12, align 4
  br label %404

404:                                              ; preds = %461, %403
  %405 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %406 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %406, i32 0, i32 12
  %408 = load %struct.TYPE_19__*, %struct.TYPE_19__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %408, i32 0, i32 2
  %410 = load %struct.debug_field**, %struct.debug_field*** %409, align 8
  %411 = load i32, i32* %12, align 4
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds %struct.debug_field*, %struct.debug_field** %410, i64 %412
  %414 = load %struct.debug_field*, %struct.debug_field** %413, align 8
  %415 = icmp ne %struct.debug_field* %414, null
  br i1 %415, label %416, label %464

416:                                              ; preds = %404
  %417 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %418 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %418, i32 0, i32 12
  %420 = load %struct.TYPE_19__*, %struct.TYPE_19__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %420, i32 0, i32 2
  %422 = load %struct.debug_field**, %struct.debug_field*** %421, align 8
  %423 = load i32, i32* %12, align 4
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds %struct.debug_field*, %struct.debug_field** %422, i64 %424
  %426 = load %struct.debug_field*, %struct.debug_field** %425, align 8
  store %struct.debug_field* %426, %struct.debug_field** %17, align 8
  %427 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %428 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %429 = load i8*, i8** %9, align 8
  %430 = load %struct.debug_field*, %struct.debug_field** %17, align 8
  %431 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %430, i32 0, i32 3
  %432 = load %struct.debug_type*, %struct.debug_type** %431, align 8
  %433 = call i8* @debug_write_type(%struct.debug_handle* %427, %struct.debug_write_fns* %428, i8* %429, %struct.debug_type* %432, %struct.debug_name* null)
  %434 = icmp ne i8* %433, null
  br i1 %434, label %435, label %458

435:                                              ; preds = %416
  %436 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %437 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %436, i32 0, i32 20
  %438 = load i32 (i8*, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32)** %437, align 8
  %439 = load i8*, i8** %9, align 8
  %440 = load %struct.debug_field*, %struct.debug_field** %17, align 8
  %441 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.debug_field*, %struct.debug_field** %17, align 8
  %444 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.debug_field*, %struct.debug_field** %17, align 8
  %449 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.debug_field*, %struct.debug_field** %17, align 8
  %454 = getelementptr inbounds %struct.debug_field, %struct.debug_field* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = call i32 %438(i8* %439, i32 %442, i32 %447, i32 %452, i32 %455)
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %460, label %458

458:                                              ; preds = %435, %416
  %459 = load i8*, i8** @FALSE, align 8
  store i8* %459, i8** %6, align 8
  br label %927

460:                                              ; preds = %435
  br label %461

461:                                              ; preds = %460
  %462 = load i32, i32* %12, align 4
  %463 = add i32 %462, 1
  store i32 %463, i32* %12, align 4
  br label %404

464:                                              ; preds = %404
  br label %465

465:                                              ; preds = %464, %395, %389
  %466 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %467 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %466, i32 0, i32 8
  %468 = load i8* (i8*)*, i8* (i8*)** %467, align 8
  %469 = load i8*, i8** %9, align 8
  %470 = call i8* %468(i8* %469)
  store i8* %470, i8** %6, align 8
  br label %927

471:                                              ; preds = %198, %198
  %472 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %473 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %474 = load i8*, i8** %9, align 8
  %475 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %476 = load i8*, i8** %14, align 8
  %477 = call i8* @debug_write_class_type(%struct.debug_handle* %472, %struct.debug_write_fns* %473, i8* %474, %struct.debug_type* %475, i8* %476)
  store i8* %477, i8** %6, align 8
  br label %927

478:                                              ; preds = %198
  %479 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %480 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %479, i32 0, i32 1
  %481 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %480, i32 0, i32 11
  %482 = load %struct.TYPE_22__*, %struct.TYPE_22__** %481, align 8
  %483 = icmp eq %struct.TYPE_22__* %482, null
  br i1 %483, label %484, label %491

484:                                              ; preds = %478
  %485 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %486 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %485, i32 0, i32 9
  %487 = load i8* (i8*, i8*, i8**, i32*)*, i8* (i8*, i8*, i8**, i32*)** %486, align 8
  %488 = load i8*, i8** %9, align 8
  %489 = load i8*, i8** %14, align 8
  %490 = call i8* %487(i8* %488, i8* %489, i8** null, i32* null)
  store i8* %490, i8** %6, align 8
  br label %927

491:                                              ; preds = %478
  %492 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %493 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %492, i32 0, i32 9
  %494 = load i8* (i8*, i8*, i8**, i32*)*, i8* (i8*, i8*, i8**, i32*)** %493, align 8
  %495 = load i8*, i8** %9, align 8
  %496 = load i8*, i8** %14, align 8
  %497 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %498 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %498, i32 0, i32 11
  %500 = load %struct.TYPE_22__*, %struct.TYPE_22__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %500, i32 0, i32 0
  %502 = load i8**, i8*** %501, align 8
  %503 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %504 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %504, i32 0, i32 11
  %506 = load %struct.TYPE_22__*, %struct.TYPE_22__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %506, i32 0, i32 1
  %508 = load i32*, i32** %507, align 8
  %509 = call i8* %494(i8* %495, i8* %496, i8** %502, i32* %508)
  store i8* %509, i8** %6, align 8
  br label %927

510:                                              ; preds = %198
  %511 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %512 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %513 = load i8*, i8** %9, align 8
  %514 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %515 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %514, i32 0, i32 1
  %516 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %515, i32 0, i32 10
  %517 = load %struct.debug_type*, %struct.debug_type** %516, align 8
  %518 = call i8* @debug_write_type(%struct.debug_handle* %511, %struct.debug_write_fns* %512, i8* %513, %struct.debug_type* %517, %struct.debug_name* null)
  %519 = icmp ne i8* %518, null
  br i1 %519, label %522, label %520

520:                                              ; preds = %510
  %521 = load i8*, i8** @FALSE, align 8
  store i8* %521, i8** %6, align 8
  br label %927

522:                                              ; preds = %510
  %523 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %524 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %523, i32 0, i32 10
  %525 = load i8* (i8*)*, i8* (i8*)** %524, align 8
  %526 = load i8*, i8** %9, align 8
  %527 = call i8* %525(i8* %526)
  store i8* %527, i8** %6, align 8
  br label %927

528:                                              ; preds = %198
  %529 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %530 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %531 = load i8*, i8** %9, align 8
  %532 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %533 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %533, i32 0, i32 9
  %535 = load %struct.TYPE_23__*, %struct.TYPE_23__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %535, i32 0, i32 2
  %537 = load %struct.debug_type*, %struct.debug_type** %536, align 8
  %538 = call i8* @debug_write_type(%struct.debug_handle* %529, %struct.debug_write_fns* %530, i8* %531, %struct.debug_type* %537, %struct.debug_name* null)
  %539 = icmp ne i8* %538, null
  br i1 %539, label %542, label %540

540:                                              ; preds = %528
  %541 = load i8*, i8** @FALSE, align 8
  store i8* %541, i8** %6, align 8
  br label %927

542:                                              ; preds = %528
  %543 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %544 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %543, i32 0, i32 1
  %545 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %544, i32 0, i32 9
  %546 = load %struct.TYPE_23__*, %struct.TYPE_23__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %546, i32 0, i32 1
  %548 = load %struct.debug_type**, %struct.debug_type*** %547, align 8
  %549 = icmp eq %struct.debug_type** %548, null
  br i1 %549, label %550, label %551

550:                                              ; preds = %542
  store i32 -1, i32* %13, align 4
  br label %587

551:                                              ; preds = %542
  store i32 0, i32* %13, align 4
  br label %552

552:                                              ; preds = %583, %551
  %553 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %554 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %554, i32 0, i32 9
  %556 = load %struct.TYPE_23__*, %struct.TYPE_23__** %555, align 8
  %557 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %556, i32 0, i32 1
  %558 = load %struct.debug_type**, %struct.debug_type*** %557, align 8
  %559 = load i32, i32* %13, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.debug_type*, %struct.debug_type** %558, i64 %560
  %562 = load %struct.debug_type*, %struct.debug_type** %561, align 8
  %563 = icmp ne %struct.debug_type* %562, null
  br i1 %563, label %564, label %586

564:                                              ; preds = %552
  %565 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %566 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %567 = load i8*, i8** %9, align 8
  %568 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %569 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %569, i32 0, i32 9
  %571 = load %struct.TYPE_23__*, %struct.TYPE_23__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %571, i32 0, i32 1
  %573 = load %struct.debug_type**, %struct.debug_type*** %572, align 8
  %574 = load i32, i32* %13, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds %struct.debug_type*, %struct.debug_type** %573, i64 %575
  %577 = load %struct.debug_type*, %struct.debug_type** %576, align 8
  %578 = call i8* @debug_write_type(%struct.debug_handle* %565, %struct.debug_write_fns* %566, i8* %567, %struct.debug_type* %577, %struct.debug_name* null)
  %579 = icmp ne i8* %578, null
  br i1 %579, label %582, label %580

580:                                              ; preds = %564
  %581 = load i8*, i8** @FALSE, align 8
  store i8* %581, i8** %6, align 8
  br label %927

582:                                              ; preds = %564
  br label %583

583:                                              ; preds = %582
  %584 = load i32, i32* %13, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %13, align 4
  br label %552

586:                                              ; preds = %552
  br label %587

587:                                              ; preds = %586, %550
  %588 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %589 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %588, i32 0, i32 11
  %590 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %589, align 8
  %591 = load i8*, i8** %9, align 8
  %592 = load i32, i32* %13, align 4
  %593 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %594 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %594, i32 0, i32 9
  %596 = load %struct.TYPE_23__*, %struct.TYPE_23__** %595, align 8
  %597 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = call i8* %590(i8* %591, i32 %592, i32 %598)
  store i8* %599, i8** %6, align 8
  br label %927

600:                                              ; preds = %198
  %601 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %602 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %603 = load i8*, i8** %9, align 8
  %604 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %605 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %604, i32 0, i32 1
  %606 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %605, i32 0, i32 8
  %607 = load %struct.debug_type*, %struct.debug_type** %606, align 8
  %608 = call i8* @debug_write_type(%struct.debug_handle* %601, %struct.debug_write_fns* %602, i8* %603, %struct.debug_type* %607, %struct.debug_name* null)
  %609 = icmp ne i8* %608, null
  br i1 %609, label %612, label %610

610:                                              ; preds = %600
  %611 = load i8*, i8** @FALSE, align 8
  store i8* %611, i8** %6, align 8
  br label %927

612:                                              ; preds = %600
  %613 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %614 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %613, i32 0, i32 12
  %615 = load i8* (i8*)*, i8* (i8*)** %614, align 8
  %616 = load i8*, i8** %9, align 8
  %617 = call i8* %615(i8* %616)
  store i8* %617, i8** %6, align 8
  br label %927

618:                                              ; preds = %198
  %619 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %620 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %621 = load i8*, i8** %9, align 8
  %622 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %623 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %622, i32 0, i32 1
  %624 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %623, i32 0, i32 7
  %625 = load %struct.TYPE_24__*, %struct.TYPE_24__** %624, align 8
  %626 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %625, i32 0, i32 2
  %627 = load %struct.debug_type*, %struct.debug_type** %626, align 8
  %628 = call i8* @debug_write_type(%struct.debug_handle* %619, %struct.debug_write_fns* %620, i8* %621, %struct.debug_type* %627, %struct.debug_name* null)
  %629 = icmp ne i8* %628, null
  br i1 %629, label %632, label %630

630:                                              ; preds = %618
  %631 = load i8*, i8** @FALSE, align 8
  store i8* %631, i8** %6, align 8
  br label %927

632:                                              ; preds = %618
  %633 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %634 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %633, i32 0, i32 13
  %635 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %634, align 8
  %636 = load i8*, i8** %9, align 8
  %637 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %638 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %637, i32 0, i32 1
  %639 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %638, i32 0, i32 7
  %640 = load %struct.TYPE_24__*, %struct.TYPE_24__** %639, align 8
  %641 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %640, i32 0, i32 1
  %642 = load i32, i32* %641, align 4
  %643 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %644 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %643, i32 0, i32 1
  %645 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %644, i32 0, i32 7
  %646 = load %struct.TYPE_24__*, %struct.TYPE_24__** %645, align 8
  %647 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %646, i32 0, i32 0
  %648 = load i32, i32* %647, align 8
  %649 = call i8* %635(i8* %636, i32 %642, i32 %648)
  store i8* %649, i8** %6, align 8
  br label %927

650:                                              ; preds = %198
  %651 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %652 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %653 = load i8*, i8** %9, align 8
  %654 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %655 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %654, i32 0, i32 1
  %656 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %655, i32 0, i32 6
  %657 = load %struct.TYPE_25__*, %struct.TYPE_25__** %656, align 8
  %658 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %657, i32 0, i32 4
  %659 = load %struct.debug_type*, %struct.debug_type** %658, align 8
  %660 = call i8* @debug_write_type(%struct.debug_handle* %651, %struct.debug_write_fns* %652, i8* %653, %struct.debug_type* %659, %struct.debug_name* null)
  %661 = icmp ne i8* %660, null
  br i1 %661, label %662, label %674

662:                                              ; preds = %650
  %663 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %664 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %665 = load i8*, i8** %9, align 8
  %666 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %667 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %666, i32 0, i32 1
  %668 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %667, i32 0, i32 6
  %669 = load %struct.TYPE_25__*, %struct.TYPE_25__** %668, align 8
  %670 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %669, i32 0, i32 3
  %671 = load %struct.debug_type*, %struct.debug_type** %670, align 8
  %672 = call i8* @debug_write_type(%struct.debug_handle* %663, %struct.debug_write_fns* %664, i8* %665, %struct.debug_type* %671, %struct.debug_name* null)
  %673 = icmp ne i8* %672, null
  br i1 %673, label %676, label %674

674:                                              ; preds = %662, %650
  %675 = load i8*, i8** @FALSE, align 8
  store i8* %675, i8** %6, align 8
  br label %927

676:                                              ; preds = %662
  %677 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %678 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %677, i32 0, i32 14
  %679 = load i8* (i8*, i32, i32, i32)*, i8* (i8*, i32, i32, i32)** %678, align 8
  %680 = load i8*, i8** %9, align 8
  %681 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %682 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %681, i32 0, i32 1
  %683 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %682, i32 0, i32 6
  %684 = load %struct.TYPE_25__*, %struct.TYPE_25__** %683, align 8
  %685 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %684, i32 0, i32 2
  %686 = load i32, i32* %685, align 8
  %687 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %688 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %687, i32 0, i32 1
  %689 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %688, i32 0, i32 6
  %690 = load %struct.TYPE_25__*, %struct.TYPE_25__** %689, align 8
  %691 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %690, i32 0, i32 1
  %692 = load i32, i32* %691, align 4
  %693 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %694 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %693, i32 0, i32 1
  %695 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %694, i32 0, i32 6
  %696 = load %struct.TYPE_25__*, %struct.TYPE_25__** %695, align 8
  %697 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %696, i32 0, i32 0
  %698 = load i32, i32* %697, align 8
  %699 = call i8* %679(i8* %680, i32 %686, i32 %692, i32 %698)
  store i8* %699, i8** %6, align 8
  br label %927

700:                                              ; preds = %198
  %701 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %702 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %703 = load i8*, i8** %9, align 8
  %704 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %705 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %704, i32 0, i32 1
  %706 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %705, i32 0, i32 5
  %707 = load %struct.TYPE_26__*, %struct.TYPE_26__** %706, align 8
  %708 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %707, i32 0, i32 1
  %709 = load %struct.debug_type*, %struct.debug_type** %708, align 8
  %710 = call i8* @debug_write_type(%struct.debug_handle* %701, %struct.debug_write_fns* %702, i8* %703, %struct.debug_type* %709, %struct.debug_name* null)
  %711 = icmp ne i8* %710, null
  br i1 %711, label %714, label %712

712:                                              ; preds = %700
  %713 = load i8*, i8** @FALSE, align 8
  store i8* %713, i8** %6, align 8
  br label %927

714:                                              ; preds = %700
  %715 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %716 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %715, i32 0, i32 15
  %717 = load i8* (i8*, i32)*, i8* (i8*, i32)** %716, align 8
  %718 = load i8*, i8** %9, align 8
  %719 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %720 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %719, i32 0, i32 1
  %721 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %720, i32 0, i32 5
  %722 = load %struct.TYPE_26__*, %struct.TYPE_26__** %721, align 8
  %723 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %722, i32 0, i32 0
  %724 = load i32, i32* %723, align 8
  %725 = call i8* %717(i8* %718, i32 %724)
  store i8* %725, i8** %6, align 8
  br label %927

726:                                              ; preds = %198
  %727 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %728 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %729 = load i8*, i8** %9, align 8
  %730 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %731 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %730, i32 0, i32 1
  %732 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %731, i32 0, i32 4
  %733 = load %struct.TYPE_14__*, %struct.TYPE_14__** %732, align 8
  %734 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %733, i32 0, i32 1
  %735 = load %struct.debug_type*, %struct.debug_type** %734, align 8
  %736 = call i8* @debug_write_type(%struct.debug_handle* %727, %struct.debug_write_fns* %728, i8* %729, %struct.debug_type* %735, %struct.debug_name* null)
  %737 = icmp ne i8* %736, null
  br i1 %737, label %738, label %750

738:                                              ; preds = %726
  %739 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %740 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %741 = load i8*, i8** %9, align 8
  %742 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %743 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %742, i32 0, i32 1
  %744 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %743, i32 0, i32 4
  %745 = load %struct.TYPE_14__*, %struct.TYPE_14__** %744, align 8
  %746 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %745, i32 0, i32 0
  %747 = load %struct.debug_type*, %struct.debug_type** %746, align 8
  %748 = call i8* @debug_write_type(%struct.debug_handle* %739, %struct.debug_write_fns* %740, i8* %741, %struct.debug_type* %747, %struct.debug_name* null)
  %749 = icmp ne i8* %748, null
  br i1 %749, label %752, label %750

750:                                              ; preds = %738, %726
  %751 = load i8*, i8** @FALSE, align 8
  store i8* %751, i8** %6, align 8
  br label %927

752:                                              ; preds = %738
  %753 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %754 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %753, i32 0, i32 16
  %755 = load i8* (i8*)*, i8* (i8*)** %754, align 8
  %756 = load i8*, i8** %9, align 8
  %757 = call i8* %755(i8* %756)
  store i8* %757, i8** %6, align 8
  br label %927

758:                                              ; preds = %198
  %759 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %760 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %761 = load i8*, i8** %9, align 8
  %762 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %763 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %762, i32 0, i32 1
  %764 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %763, i32 0, i32 3
  %765 = load %struct.TYPE_15__*, %struct.TYPE_15__** %764, align 8
  %766 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %765, i32 0, i32 3
  %767 = load %struct.debug_type*, %struct.debug_type** %766, align 8
  %768 = call i8* @debug_write_type(%struct.debug_handle* %759, %struct.debug_write_fns* %760, i8* %761, %struct.debug_type* %767, %struct.debug_name* null)
  %769 = icmp ne i8* %768, null
  br i1 %769, label %772, label %770

770:                                              ; preds = %758
  %771 = load i8*, i8** @FALSE, align 8
  store i8* %771, i8** %6, align 8
  br label %927

772:                                              ; preds = %758
  %773 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %774 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %773, i32 0, i32 1
  %775 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %774, i32 0, i32 3
  %776 = load %struct.TYPE_15__*, %struct.TYPE_15__** %775, align 8
  %777 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %776, i32 0, i32 2
  %778 = load %struct.debug_type**, %struct.debug_type*** %777, align 8
  %779 = icmp eq %struct.debug_type** %778, null
  br i1 %779, label %780, label %781

780:                                              ; preds = %772
  store i32 -1, i32* %13, align 4
  br label %817

781:                                              ; preds = %772
  store i32 0, i32* %13, align 4
  br label %782

782:                                              ; preds = %813, %781
  %783 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %784 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %783, i32 0, i32 1
  %785 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %784, i32 0, i32 3
  %786 = load %struct.TYPE_15__*, %struct.TYPE_15__** %785, align 8
  %787 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %786, i32 0, i32 2
  %788 = load %struct.debug_type**, %struct.debug_type*** %787, align 8
  %789 = load i32, i32* %13, align 4
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds %struct.debug_type*, %struct.debug_type** %788, i64 %790
  %792 = load %struct.debug_type*, %struct.debug_type** %791, align 8
  %793 = icmp ne %struct.debug_type* %792, null
  br i1 %793, label %794, label %816

794:                                              ; preds = %782
  %795 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %796 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %797 = load i8*, i8** %9, align 8
  %798 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %799 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %798, i32 0, i32 1
  %800 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %799, i32 0, i32 3
  %801 = load %struct.TYPE_15__*, %struct.TYPE_15__** %800, align 8
  %802 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %801, i32 0, i32 2
  %803 = load %struct.debug_type**, %struct.debug_type*** %802, align 8
  %804 = load i32, i32* %13, align 4
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds %struct.debug_type*, %struct.debug_type** %803, i64 %805
  %807 = load %struct.debug_type*, %struct.debug_type** %806, align 8
  %808 = call i8* @debug_write_type(%struct.debug_handle* %795, %struct.debug_write_fns* %796, i8* %797, %struct.debug_type* %807, %struct.debug_name* null)
  %809 = icmp ne i8* %808, null
  br i1 %809, label %812, label %810

810:                                              ; preds = %794
  %811 = load i8*, i8** @FALSE, align 8
  store i8* %811, i8** %6, align 8
  br label %927

812:                                              ; preds = %794
  br label %813

813:                                              ; preds = %812
  %814 = load i32, i32* %13, align 4
  %815 = add nsw i32 %814, 1
  store i32 %815, i32* %13, align 4
  br label %782

816:                                              ; preds = %782
  br label %817

817:                                              ; preds = %816, %780
  %818 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %819 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %818, i32 0, i32 1
  %820 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %819, i32 0, i32 3
  %821 = load %struct.TYPE_15__*, %struct.TYPE_15__** %820, align 8
  %822 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %821, i32 0, i32 1
  %823 = load %struct.debug_type*, %struct.debug_type** %822, align 8
  %824 = icmp ne %struct.debug_type* %823, null
  br i1 %824, label %825, label %840

825:                                              ; preds = %817
  %826 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %827 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %828 = load i8*, i8** %9, align 8
  %829 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %830 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %829, i32 0, i32 1
  %831 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %830, i32 0, i32 3
  %832 = load %struct.TYPE_15__*, %struct.TYPE_15__** %831, align 8
  %833 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %832, i32 0, i32 1
  %834 = load %struct.debug_type*, %struct.debug_type** %833, align 8
  %835 = call i8* @debug_write_type(%struct.debug_handle* %826, %struct.debug_write_fns* %827, i8* %828, %struct.debug_type* %834, %struct.debug_name* null)
  %836 = icmp ne i8* %835, null
  br i1 %836, label %839, label %837

837:                                              ; preds = %825
  %838 = load i8*, i8** @FALSE, align 8
  store i8* %838, i8** %6, align 8
  br label %927

839:                                              ; preds = %825
  br label %840

840:                                              ; preds = %839, %817
  %841 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %842 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %841, i32 0, i32 17
  %843 = load i8* (i8*, i32, i32, i32)*, i8* (i8*, i32, i32, i32)** %842, align 8
  %844 = load i8*, i8** %9, align 8
  %845 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %846 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %845, i32 0, i32 1
  %847 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %846, i32 0, i32 3
  %848 = load %struct.TYPE_15__*, %struct.TYPE_15__** %847, align 8
  %849 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %848, i32 0, i32 1
  %850 = load %struct.debug_type*, %struct.debug_type** %849, align 8
  %851 = icmp ne %struct.debug_type* %850, null
  %852 = zext i1 %851 to i32
  %853 = load i32, i32* %13, align 4
  %854 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %855 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %854, i32 0, i32 1
  %856 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %855, i32 0, i32 3
  %857 = load %struct.TYPE_15__*, %struct.TYPE_15__** %856, align 8
  %858 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %857, i32 0, i32 0
  %859 = load i32, i32* %858, align 8
  %860 = call i8* %843(i8* %844, i32 %852, i32 %853, i32 %859)
  store i8* %860, i8** %6, align 8
  br label %927

861:                                              ; preds = %198
  %862 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %863 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %864 = load i8*, i8** %9, align 8
  %865 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %866 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %865, i32 0, i32 1
  %867 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %866, i32 0, i32 2
  %868 = load %struct.debug_type*, %struct.debug_type** %867, align 8
  %869 = call i8* @debug_write_type(%struct.debug_handle* %862, %struct.debug_write_fns* %863, i8* %864, %struct.debug_type* %868, %struct.debug_name* null)
  %870 = icmp ne i8* %869, null
  br i1 %870, label %873, label %871

871:                                              ; preds = %861
  %872 = load i8*, i8** @FALSE, align 8
  store i8* %872, i8** %6, align 8
  br label %927

873:                                              ; preds = %861
  %874 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %875 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %874, i32 0, i32 18
  %876 = load i8* (i8*)*, i8* (i8*)** %875, align 8
  %877 = load i8*, i8** %9, align 8
  %878 = call i8* %876(i8* %877)
  store i8* %878, i8** %6, align 8
  br label %927

879:                                              ; preds = %198
  %880 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %881 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %882 = load i8*, i8** %9, align 8
  %883 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %884 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %883, i32 0, i32 1
  %885 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %884, i32 0, i32 1
  %886 = load %struct.debug_type*, %struct.debug_type** %885, align 8
  %887 = call i8* @debug_write_type(%struct.debug_handle* %880, %struct.debug_write_fns* %881, i8* %882, %struct.debug_type* %886, %struct.debug_name* null)
  %888 = icmp ne i8* %887, null
  br i1 %888, label %891, label %889

889:                                              ; preds = %879
  %890 = load i8*, i8** @FALSE, align 8
  store i8* %890, i8** %6, align 8
  br label %927

891:                                              ; preds = %879
  %892 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %893 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %892, i32 0, i32 19
  %894 = load i8* (i8*)*, i8* (i8*)** %893, align 8
  %895 = load i8*, i8** %9, align 8
  %896 = call i8* %894(i8* %895)
  store i8* %896, i8** %6, align 8
  br label %927

897:                                              ; preds = %198
  %898 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %899 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %900 = load i8*, i8** %9, align 8
  %901 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %902 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %901, i32 0, i32 1
  %903 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %902, i32 0, i32 0
  %904 = load %struct.TYPE_16__*, %struct.TYPE_16__** %903, align 8
  %905 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %904, i32 0, i32 1
  %906 = load %struct.debug_type*, %struct.debug_type** %905, align 8
  %907 = call i8* @debug_write_type(%struct.debug_handle* %898, %struct.debug_write_fns* %899, i8* %900, %struct.debug_type* %906, %struct.debug_name* null)
  store i8* %907, i8** %6, align 8
  br label %927

908:                                              ; preds = %198
  %909 = load %struct.debug_handle*, %struct.debug_handle** %7, align 8
  %910 = load %struct.debug_write_fns*, %struct.debug_write_fns** %8, align 8
  %911 = load i8*, i8** %9, align 8
  %912 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %913 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %912, i32 0, i32 1
  %914 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %913, i32 0, i32 0
  %915 = load %struct.TYPE_16__*, %struct.TYPE_16__** %914, align 8
  %916 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %915, i32 0, i32 1
  %917 = load %struct.debug_type*, %struct.debug_type** %916, align 8
  %918 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %919 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %918, i32 0, i32 1
  %920 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %919, i32 0, i32 0
  %921 = load %struct.TYPE_16__*, %struct.TYPE_16__** %920, align 8
  %922 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %921, i32 0, i32 0
  %923 = load %struct.debug_name*, %struct.debug_name** %922, align 8
  %924 = call i8* @debug_write_type(%struct.debug_handle* %909, %struct.debug_write_fns* %910, i8* %911, %struct.debug_type* %917, %struct.debug_name* %923)
  store i8* %924, i8** %6, align 8
  br label %927

925:                                              ; preds = %198
  %926 = call i32 (...) @abort() #3
  unreachable

927:                                              ; preds = %908, %897, %891, %889, %873, %871, %840, %837, %810, %770, %752, %750, %714, %712, %676, %674, %632, %630, %612, %610, %587, %580, %540, %522, %520, %491, %484, %471, %465, %458, %387, %318, %304, %272, %263, %254, %241, %235, %222, %216, %202, %146, %136, %80, %59
  %928 = load i8*, i8** %6, align 8
  ret i8* %928
}

declare dso_local %struct.debug_type* @debug_get_real_type(i8*, %struct.debug_type*, i32*) #1

declare dso_local i32 @debug_set_class_id(%struct.debug_handle*, i8*, %struct.debug_type*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @debug_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @debug_write_class_type(%struct.debug_handle*, %struct.debug_write_fns*, i8*, %struct.debug_type*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
