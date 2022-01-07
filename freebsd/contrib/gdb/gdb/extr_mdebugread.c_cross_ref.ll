; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_cross_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_cross_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 (i32, i32*, %struct.TYPE_15__*)*, i32 (i32, i8*, %struct.TYPE_16__*)*, i32 (i32, i32*, %struct.TYPE_17__*)* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { i8*, %union.aux_ext*, i64, %struct.TYPE_18__* }
%union.aux_ext = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }
%struct.type = type { i32 }
%struct.mdebug_pending = type { %struct.type* }

@debug_swap = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"<undefined>\00", align 1
@TYPE_FLAG_STUB = common dso_local global i32 0, align 4
@current_objfile = common dso_local global i32 0, align 4
@debug_info = common dso_local global %struct.TYPE_14__* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"<illegal>\00", align 1
@cur_bfd = common dso_local global i32 0, align 4
@scInfo = common dso_local global i64 0, align 8
@stBlock = common dso_local global i64 0, align 8
@stTypedef = common dso_local global i64 0, align 8
@stIndirect = common dso_local global i64 0, align 8
@stStruct = common dso_local global i64 0, align 8
@stUnion = common dso_local global i64 0, align 8
@stEnum = common dso_local global i64 0, align 8
@tqNil = common dso_local global i64 0, align 8
@symfile_complaints = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"illegal tq0 in forward typedef for %s\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"illegal bt %d in forward typedef for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.aux_ext*, %struct.type**, i32, i8**, i32, i8*)* @cross_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cross_ref(i32 %0, %union.aux_ext* %1, %struct.type** %2, i32 %3, i8** %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.aux_ext*, align 8
  %11 = alloca %struct.type**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [1 x %struct.TYPE_17__], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_16__, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.mdebug_pending*, align 8
  %24 = alloca %struct.TYPE_15__, align 8
  store i32 %0, i32* %9, align 4
  store %union.aux_ext* %1, %union.aux_ext** %10, align 8
  store %struct.type** %2, %struct.type*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8** %4, i8*** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 1, i32* %18, align 4
  %25 = load %struct.type**, %struct.type*** %11, align 8
  store %struct.type* null, %struct.type** %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @debug_swap, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 3
  %28 = load i32 (i32, i32*, %struct.TYPE_17__*)*, i32 (i32, i32*, %struct.TYPE_17__*)** %27, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load %union.aux_ext*, %union.aux_ext** %10, align 8
  %31 = bitcast %union.aux_ext* %30 to i32*
  %32 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %33 = call i32 %28(i32 %29, i32* %31, %struct.TYPE_17__* %32)
  %34 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 4095
  br i1 %37, label %38, label %45

38:                                               ; preds = %7
  %39 = load i32, i32* %18, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load %union.aux_ext*, %union.aux_ext** %10, align 8
  %43 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %42, i64 1
  %44 = call i32 @AUX_GET_ISYM(i32 %41, %union.aux_ext* %43)
  store i32 %44, i32* %17, align 4
  br label %49

45:                                               ; preds = %7
  %46 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %17, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i32, i32* %17, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %53, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @TYPE_FLAG_STUB, align 4
  %56 = load i32, i32* @current_objfile, align 4
  %57 = call %struct.type* @init_type(i32 %54, i32 0, i32 %55, i8* null, i32 %56)
  %58 = load %struct.type**, %struct.type*** %11, align 8
  store %struct.type* %57, %struct.type** %58, align 8
  %59 = load i32, i32* %18, align 4
  store i32 %59, i32* %8, align 4
  br label %368

60:                                               ; preds = %49
  %61 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 4095
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %71, align 8
  %72 = load i32, i32* %18, align 4
  store i32 %72, i32* %8, align 4
  br label %368

73:                                               ; preds = %65, %60
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %17, align 4
  %76 = call %struct.TYPE_18__* @get_rfd(i32 %74, i32 %75)
  store %struct.TYPE_18__* %76, %struct.TYPE_18__** %19, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** @debug_info, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = ptrtoint %struct.TYPE_18__* %77 to i64
  %82 = ptrtoint %struct.TYPE_18__* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 20
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %22, align 4
  %86 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %88, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %73
  %94 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %94, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = load i32, i32* %22, align 4
  %97 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @bad_rfd_entry_complaint(i8* %95, i32 %96, i32 %99)
  %101 = load i32, i32* %18, align 4
  store i32 %101, i32* %8, align 4
  br label %368

102:                                              ; preds = %73
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** @debug_info, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** @debug_swap, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %113, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %106, i64 %118
  store i8* %119, i8** %20, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** @debug_swap, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  %122 = load i32 (i32, i8*, %struct.TYPE_16__*)*, i32 (i32, i8*, %struct.TYPE_16__*)** %121, align 8
  %123 = load i32, i32* @cur_bfd, align 4
  %124 = load i8*, i8** %20, align 8
  %125 = call i32 %122(i32 %123, i8* %124, %struct.TYPE_16__* %21)
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @scInfo, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %160, label %130

130:                                              ; preds = %102
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @stBlock, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %179

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @stTypedef, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %179

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @stIndirect, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %179

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @stStruct, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %179

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @stUnion, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %179

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @stEnum, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %179

160:                                              ; preds = %155, %102
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @stBlock, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %170, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @SC_IS_COMMON(i64 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %179, label %170

170:                                              ; preds = %165, %160
  %171 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %171, align 8
  %172 = load i8*, i8** %15, align 8
  %173 = load i32, i32* %22, align 4
  %174 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %16, i64 0, i64 0
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @bad_rfd_entry_complaint(i8* %172, i32 %173, i32 %176)
  %178 = load i32, i32* %18, align 4
  store i32 %178, i32* %8, align 4
  br label %368

179:                                              ; preds = %165, %155, %150, %145, %140, %135, %130
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** @debug_info, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %182, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %187, i64 %190
  %192 = load i8**, i8*** %13, align 8
  store i8* %191, i8** %192, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %194 = load i8*, i8** %20, align 8
  %195 = call %struct.mdebug_pending* @is_pending_symbol(%struct.TYPE_18__* %193, i8* %194)
  store %struct.mdebug_pending* %195, %struct.mdebug_pending** %23, align 8
  %196 = load %struct.mdebug_pending*, %struct.mdebug_pending** %23, align 8
  %197 = icmp ne %struct.mdebug_pending* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %179
  %199 = load %struct.mdebug_pending*, %struct.mdebug_pending** %23, align 8
  %200 = getelementptr inbounds %struct.mdebug_pending, %struct.mdebug_pending* %199, i32 0, i32 0
  %201 = load %struct.type*, %struct.type** %200, align 8
  %202 = load %struct.type**, %struct.type*** %11, align 8
  store %struct.type* %201, %struct.type** %202, align 8
  br label %366

203:                                              ; preds = %179
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @stTypedef, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %217, label %212

212:                                              ; preds = %207, %203
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @stIndirect, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %320

217:                                              ; preds = %212, %207
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** @debug_swap, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 1
  %220 = load i32 (i32, i32*, %struct.TYPE_15__*)*, i32 (i32, i32*, %struct.TYPE_15__*)** %219, align 8
  %221 = load i32, i32* %14, align 4
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** @debug_info, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 1
  %224 = load %union.aux_ext*, %union.aux_ext** %223, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %224, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %229, i64 %232
  %234 = bitcast %union.aux_ext* %233 to i32*
  %235 = call i32 %220(i32 %221, i32* %234, %struct.TYPE_15__* %24)
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @tqNil, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %217
  %241 = load i8*, i8** %15, align 8
  %242 = call i32 (i32*, i8*, ...) @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %241)
  br label %243

243:                                              ; preds = %240, %217
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  switch i32 %245, label %309 [
    i32 128, label %246
    i32 131, label %252
    i32 129, label %252
    i32 132, label %252
    i32 130, label %275
  ]

246:                                              ; preds = %243
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* @current_objfile, align 4
  %249 = call %struct.type* @init_type(i32 %247, i32 0, i32 0, i8* null, i32 %248)
  %250 = load %struct.type**, %struct.type*** %11, align 8
  store %struct.type* %249, %struct.type** %250, align 8
  %251 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %251, align 8
  br label %318

252:                                              ; preds = %243, %243, %243
  %253 = load i32, i32* %22, align 4
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** @debug_info, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  %256 = load %union.aux_ext*, %union.aux_ext** %255, align 8
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %256, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %261, i64 %264
  %266 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %265, i64 1
  %267 = load %struct.type**, %struct.type*** %11, align 8
  %268 = load i32, i32* %12, align 4
  %269 = load i8**, i8*** %13, align 8
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 4
  %273 = load i8*, i8** %15, align 8
  %274 = call i32 @cross_ref(i32 %253, %union.aux_ext* %266, %struct.type** %267, i32 %268, i8** %269, i32 %272, i8* %273)
  br label %318

275:                                              ; preds = %243
  %276 = load i32, i32* %22, align 4
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** @debug_info, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 1
  %279 = load %union.aux_ext*, %union.aux_ext** %278, align 8
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %279, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** @debug_info, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %292, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %297, i64 %300
  %302 = call %struct.type* @parse_type(i32 %276, %union.aux_ext* %284, i32 %286, i32* null, i32 %289, i8* %301)
  %303 = load %struct.type**, %struct.type*** %11, align 8
  store %struct.type* %302, %struct.type** %303, align 8
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %305 = load i8*, i8** %20, align 8
  %306 = load %struct.type**, %struct.type*** %11, align 8
  %307 = load %struct.type*, %struct.type** %306, align 8
  %308 = call i32 @add_pending(%struct.TYPE_18__* %304, i8* %305, %struct.type* %307)
  br label %318

309:                                              ; preds = %243
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = load i8*, i8** %15, align 8
  %313 = call i32 (i32*, i8*, ...) @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %311, i8* %312)
  %314 = load i32, i32* %12, align 4
  %315 = load i32, i32* @current_objfile, align 4
  %316 = call %struct.type* @init_type(i32 %314, i32 0, i32 0, i8* null, i32 %315)
  %317 = load %struct.type**, %struct.type*** %11, align 8
  store %struct.type* %316, %struct.type** %317, align 8
  br label %318

318:                                              ; preds = %309, %275, %252, %246
  %319 = load i32, i32* %18, align 4
  store i32 %319, i32* %8, align 4
  br label %368

320:                                              ; preds = %212
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @stTypedef, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %354

325:                                              ; preds = %320
  %326 = load i32, i32* %22, align 4
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** @debug_info, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 1
  %329 = load %union.aux_ext*, %union.aux_ext** %328, align 8
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %329, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** @debug_info, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 0
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %342, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8, i8* %347, i64 %350
  %352 = call %struct.type* @parse_type(i32 %326, %union.aux_ext* %334, i32 %336, i32* null, i32 %339, i8* %351)
  %353 = load %struct.type**, %struct.type*** %11, align 8
  store %struct.type* %352, %struct.type** %353, align 8
  br label %359

354:                                              ; preds = %320
  %355 = load i32, i32* %12, align 4
  %356 = load i32, i32* @current_objfile, align 4
  %357 = call %struct.type* @init_type(i32 %355, i32 0, i32 0, i8* null, i32 %356)
  %358 = load %struct.type**, %struct.type*** %11, align 8
  store %struct.type* %357, %struct.type** %358, align 8
  br label %359

359:                                              ; preds = %354, %325
  br label %360

360:                                              ; preds = %359
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %362 = load i8*, i8** %20, align 8
  %363 = load %struct.type**, %struct.type*** %11, align 8
  %364 = load %struct.type*, %struct.type** %363, align 8
  %365 = call i32 @add_pending(%struct.TYPE_18__* %361, i8* %362, %struct.type* %364)
  br label %366

366:                                              ; preds = %360, %198
  %367 = load i32, i32* %18, align 4
  store i32 %367, i32* %8, align 4
  br label %368

368:                                              ; preds = %366, %318, %170, %93, %70, %52
  %369 = load i32, i32* %8, align 4
  ret i32 %369
}

declare dso_local i32 @AUX_GET_ISYM(i32, %union.aux_ext*) #1

declare dso_local %struct.type* @init_type(i32, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_18__* @get_rfd(i32, i32) #1

declare dso_local i32 @bad_rfd_entry_complaint(i8*, i32, i32) #1

declare dso_local i32 @SC_IS_COMMON(i64) #1

declare dso_local %struct.mdebug_pending* @is_pending_symbol(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @complaint(i32*, i8*, ...) #1

declare dso_local %struct.type* @parse_type(i32, %union.aux_ext*, i32, i32*, i32, i8*) #1

declare dso_local i32 @add_pending(%struct.TYPE_18__*, i8*, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
