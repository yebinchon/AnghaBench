; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rescoff.c_read_coff_res_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rescoff.c_read_coff_res_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, i8*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i8** }
%struct.coff_file_info = type { i32*, i32* }
%struct.extern_res_directory = type { i32*, i32*, i32*, i32*, i32, i32 }
%struct.extern_res_entry = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"named directory entry\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"directory entry name\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"named subdirectory\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"named resource\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ID directory entry\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"ID subdirectory\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ID resource\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i32*, i32*, %struct.coff_file_info*, %struct.TYPE_13__*, i32)* @read_coff_res_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @read_coff_res_dir(i32* %0, i32* %1, %struct.coff_file_info* %2, %struct.TYPE_13__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.coff_file_info*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.extern_res_directory*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__**, align 8
  %17 = alloca %struct.extern_res_entry*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.coff_file_info* %2, %struct.coff_file_info** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  store i32 %4, i32* %10, align 4
  %27 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %28 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = ptrtoint i32* %29 to i64
  %32 = ptrtoint i32* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  %35 = icmp ult i64 %34, 40
  br i1 %35, label %36, label %40

36:                                               ; preds = %5
  %37 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %38 = call i32 @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @overrun(%struct.coff_file_info* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %5
  %41 = load i32*, i32** %7, align 8
  %42 = bitcast i32* %41 to %struct.extern_res_directory*
  store %struct.extern_res_directory* %42, %struct.extern_res_directory** %11, align 8
  %43 = call i64 @res_alloc(i32 40)
  %44 = inttoptr i64 %43 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %12, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.extern_res_directory*, %struct.extern_res_directory** %11, align 8
  %47 = getelementptr inbounds %struct.extern_res_directory, %struct.extern_res_directory* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @windres_get_32(i32* %45, i32 %48, i32 4)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.extern_res_directory*, %struct.extern_res_directory** %11, align 8
  %54 = getelementptr inbounds %struct.extern_res_directory, %struct.extern_res_directory* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @windres_get_32(i32* %52, i32 %55, i32 4)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.extern_res_directory*, %struct.extern_res_directory** %11, align 8
  %61 = getelementptr inbounds %struct.extern_res_directory, %struct.extern_res_directory* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = call i8* @windres_get_16(i32* %59, i32* %62, i32 2)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.extern_res_directory*, %struct.extern_res_directory** %11, align 8
  %68 = getelementptr inbounds %struct.extern_res_directory, %struct.extern_res_directory* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i8* @windres_get_16(i32* %66, i32* %69, i32 2)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %74, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.extern_res_directory*, %struct.extern_res_directory** %11, align 8
  %77 = getelementptr inbounds %struct.extern_res_directory, %struct.extern_res_directory* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i8* @windres_get_16(i32* %75, i32* %78, i32 2)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %13, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.extern_res_directory*, %struct.extern_res_directory** %11, align 8
  %83 = getelementptr inbounds %struct.extern_res_directory, %struct.extern_res_directory* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i8* @windres_get_16(i32* %81, i32* %84, i32 2)
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %14, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  store %struct.TYPE_14__** %88, %struct.TYPE_14__*** %16, align 8
  %89 = load %struct.extern_res_directory*, %struct.extern_res_directory** %11, align 8
  %90 = getelementptr inbounds %struct.extern_res_directory, %struct.extern_res_directory* %89, i64 1
  %91 = bitcast %struct.extern_res_directory* %90 to %struct.extern_res_entry*
  store %struct.extern_res_entry* %91, %struct.extern_res_entry** %17, align 8
  store i32 0, i32* %15, align 4
  br label %92

92:                                               ; preds = %286, %40
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %291

96:                                               ; preds = %92
  %97 = load %struct.extern_res_entry*, %struct.extern_res_entry** %17, align 8
  %98 = bitcast %struct.extern_res_entry* %97 to i32*
  %99 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %100 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp uge i32* %98, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %105 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %106 = call i32 @overrun(%struct.coff_file_info* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %96
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.extern_res_entry*, %struct.extern_res_entry** %17, align 8
  %110 = getelementptr inbounds %struct.extern_res_entry, %struct.extern_res_entry* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @windres_get_32(i32* %108, i32 %111, i32 4)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %18, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = load %struct.extern_res_entry*, %struct.extern_res_entry** %17, align 8
  %116 = getelementptr inbounds %struct.extern_res_entry, %struct.extern_res_entry* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @windres_get_32(i32* %114, i32 %117, i32 4)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %18, align 4
  %121 = and i32 %120, 2147483647
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %124 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %127 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = ptrtoint i32* %125 to i64
  %130 = ptrtoint i32* %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 4
  %133 = trunc i64 %132 to i32
  %134 = icmp sgt i32 %122, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %107
  %136 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %137 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %138 = call i32 @overrun(%struct.coff_file_info* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %107
  %140 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %141 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %18, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32* %145, i32** %21, align 8
  %146 = call i64 @res_alloc(i32 64)
  %147 = inttoptr i64 %146 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %20, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %149, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = load i32*, i32** %21, align 8
  %155 = call i8* @windres_get_16(i32* %153, i32* %154, i32 2)
  %156 = ptrtoint i8* %155 to i32
  store i32 %156, i32* %22, align 4
  %157 = load i32, i32* %22, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  store i32 %157, i32* %162, align 8
  %163 = load i32, i32* %22, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 %164, 8
  %166 = trunc i64 %165 to i32
  %167 = call i64 @res_alloc(i32 %166)
  %168 = inttoptr i64 %167 to i8**
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  store i8** %168, i8*** %173, align 8
  store i32 0, i32* %23, align 4
  br label %174

174:                                              ; preds = %196, %139
  %175 = load i32, i32* %23, align 4
  %176 = load i32, i32* %22, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %199

178:                                              ; preds = %174
  %179 = load i32*, i32** %6, align 8
  %180 = load i32*, i32** %21, align 8
  %181 = load i32, i32* %23, align 4
  %182 = mul nsw i32 %181, 2
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  %186 = call i8* @windres_get_16(i32* %179, i32* %185, i32 2)
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i8**, i8*** %191, align 8
  %193 = load i32, i32* %23, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  store i8* %186, i8** %195, align 8
  br label %196

196:                                              ; preds = %178
  %197 = load i32, i32* %23, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %23, align 4
  br label %174

199:                                              ; preds = %174
  %200 = load i32, i32* %10, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 3
  store %struct.TYPE_13__* %204, %struct.TYPE_13__** %9, align 8
  br label %205

205:                                              ; preds = %202, %199
  %206 = load i32, i32* %19, align 4
  %207 = and i32 %206, -2147483648
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %247

209:                                              ; preds = %205
  %210 = load i32, i32* %19, align 4
  %211 = and i32 %210, 2147483647
  store i32 %211, i32* %19, align 4
  %212 = load i32, i32* %19, align 4
  %213 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %214 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %217 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = ptrtoint i32* %215 to i64
  %220 = ptrtoint i32* %218 to i64
  %221 = sub i64 %219, %220
  %222 = sdiv exact i64 %221, 4
  %223 = trunc i64 %222 to i32
  %224 = icmp sge i32 %212, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %209
  %226 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %227 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %228 = call i32 @overrun(%struct.coff_file_info* %226, i32 %227)
  br label %229

229:                                              ; preds = %225, %209
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  store i32 1, i32* %231, align 8
  %232 = load i32*, i32** %6, align 8
  %233 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %234 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %19, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %241 = load i32, i32* %10, align 4
  %242 = add nsw i32 %241, 1
  %243 = call %struct.TYPE_15__* @read_coff_res_dir(i32* %232, i32* %238, %struct.coff_file_info* %239, %struct.TYPE_13__* %240, i32 %242)
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  store %struct.TYPE_15__* %243, %struct.TYPE_15__** %246, align 8
  br label %281

247:                                              ; preds = %205
  %248 = load i32, i32* %19, align 4
  %249 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %250 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %253 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = ptrtoint i32* %251 to i64
  %256 = ptrtoint i32* %254 to i64
  %257 = sub i64 %255, %256
  %258 = sdiv exact i64 %257, 4
  %259 = trunc i64 %258 to i32
  %260 = icmp sge i32 %248, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %247
  %262 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %263 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %264 = call i32 @overrun(%struct.coff_file_info* %262, i32 %263)
  br label %265

265:                                              ; preds = %261, %247
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  store i32 0, i32* %267, align 8
  %268 = load i32*, i32** %6, align 8
  %269 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %270 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %19, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %277 = call i8* @read_coff_data_entry(i32* %268, i32* %274, %struct.coff_file_info* %275, %struct.TYPE_13__* %276)
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  store i8* %277, i8** %280, align 8
  br label %281

281:                                              ; preds = %265, %229
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %283 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  store %struct.TYPE_14__* %282, %struct.TYPE_14__** %283, align 8
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 1
  store %struct.TYPE_14__** %285, %struct.TYPE_14__*** %16, align 8
  br label %286

286:                                              ; preds = %281
  %287 = load i32, i32* %15, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %15, align 4
  %289 = load %struct.extern_res_entry*, %struct.extern_res_entry** %17, align 8
  %290 = getelementptr inbounds %struct.extern_res_entry, %struct.extern_res_entry* %289, i32 1
  store %struct.extern_res_entry* %290, %struct.extern_res_entry** %17, align 8
  br label %92

291:                                              ; preds = %92
  store i32 0, i32* %15, align 4
  br label %292

292:                                              ; preds = %418, %291
  %293 = load i32, i32* %15, align 4
  %294 = load i32, i32* %14, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %423

296:                                              ; preds = %292
  %297 = load %struct.extern_res_entry*, %struct.extern_res_entry** %17, align 8
  %298 = bitcast %struct.extern_res_entry* %297 to i32*
  %299 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %300 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = icmp uge i32* %298, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %296
  %304 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %305 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %306 = call i32 @overrun(%struct.coff_file_info* %304, i32 %305)
  br label %307

307:                                              ; preds = %303, %296
  %308 = load i32*, i32** %6, align 8
  %309 = load %struct.extern_res_entry*, %struct.extern_res_entry** %17, align 8
  %310 = getelementptr inbounds %struct.extern_res_entry, %struct.extern_res_entry* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = call i8* @windres_get_32(i32* %308, i32 %311, i32 4)
  %313 = ptrtoint i8* %312 to i64
  store i64 %313, i64* %24, align 8
  %314 = load i32*, i32** %6, align 8
  %315 = load %struct.extern_res_entry*, %struct.extern_res_entry** %17, align 8
  %316 = getelementptr inbounds %struct.extern_res_entry, %struct.extern_res_entry* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = call i8* @windres_get_32(i32* %314, i32 %317, i32 4)
  %319 = ptrtoint i8* %318 to i64
  store i64 %319, i64* %25, align 8
  %320 = call i64 @res_alloc(i32 64)
  %321 = inttoptr i64 %320 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %321, %struct.TYPE_14__** %26, align 8
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %323, align 8
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 3
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 0
  store i32 0, i32* %326, align 8
  %327 = load i64, i64* %24, align 8
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 0
  store i64 %327, i64* %331, align 8
  %332 = load i32, i32* %10, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %307
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 3
  store %struct.TYPE_13__* %336, %struct.TYPE_13__** %9, align 8
  br label %337

337:                                              ; preds = %334, %307
  %338 = load i64, i64* %25, align 8
  %339 = and i64 %338, 2147483648
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %379

341:                                              ; preds = %337
  %342 = load i64, i64* %25, align 8
  %343 = and i64 %342, 2147483647
  store i64 %343, i64* %25, align 8
  %344 = load i64, i64* %25, align 8
  %345 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %346 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %349 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = ptrtoint i32* %347 to i64
  %352 = ptrtoint i32* %350 to i64
  %353 = sub i64 %351, %352
  %354 = sdiv exact i64 %353, 4
  %355 = trunc i64 %354 to i32
  %356 = sext i32 %355 to i64
  %357 = icmp uge i64 %344, %356
  br i1 %357, label %358, label %362

358:                                              ; preds = %341
  %359 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %360 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %361 = call i32 @overrun(%struct.coff_file_info* %359, i32 %360)
  br label %362

362:                                              ; preds = %358, %341
  %363 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 0
  store i32 1, i32* %364, align 8
  %365 = load i32*, i32** %6, align 8
  %366 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %367 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %366, i32 0, i32 0
  %368 = load i32*, i32** %367, align 8
  %369 = load i64, i64* %25, align 8
  %370 = getelementptr inbounds i32, i32* %368, i64 %369
  %371 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %373 = load i32, i32* %10, align 4
  %374 = add nsw i32 %373, 1
  %375 = call %struct.TYPE_15__* @read_coff_res_dir(i32* %365, i32* %370, %struct.coff_file_info* %371, %struct.TYPE_13__* %372, i32 %374)
  %376 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 1
  store %struct.TYPE_15__* %375, %struct.TYPE_15__** %378, align 8
  br label %413

379:                                              ; preds = %337
  %380 = load i64, i64* %25, align 8
  %381 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %382 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %385 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %384, i32 0, i32 0
  %386 = load i32*, i32** %385, align 8
  %387 = ptrtoint i32* %383 to i64
  %388 = ptrtoint i32* %386 to i64
  %389 = sub i64 %387, %388
  %390 = sdiv exact i64 %389, 4
  %391 = trunc i64 %390 to i32
  %392 = sext i32 %391 to i64
  %393 = icmp uge i64 %380, %392
  br i1 %393, label %394, label %398

394:                                              ; preds = %379
  %395 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %396 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %397 = call i32 @overrun(%struct.coff_file_info* %395, i32 %396)
  br label %398

398:                                              ; preds = %394, %379
  %399 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %400 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %399, i32 0, i32 0
  store i32 0, i32* %400, align 8
  %401 = load i32*, i32** %6, align 8
  %402 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %403 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  %405 = load i64, i64* %25, align 8
  %406 = getelementptr inbounds i32, i32* %404, i64 %405
  %407 = load %struct.coff_file_info*, %struct.coff_file_info** %8, align 8
  %408 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %409 = call i8* @read_coff_data_entry(i32* %401, i32* %406, %struct.coff_file_info* %407, %struct.TYPE_13__* %408)
  %410 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %411 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 0
  store i8* %409, i8** %412, align 8
  br label %413

413:                                              ; preds = %398, %362
  %414 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %415 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  store %struct.TYPE_14__* %414, %struct.TYPE_14__** %415, align 8
  %416 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %417 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %416, i32 0, i32 1
  store %struct.TYPE_14__** %417, %struct.TYPE_14__*** %16, align 8
  br label %418

418:                                              ; preds = %413
  %419 = load i32, i32* %15, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %15, align 4
  %421 = load %struct.extern_res_entry*, %struct.extern_res_entry** %17, align 8
  %422 = getelementptr inbounds %struct.extern_res_entry, %struct.extern_res_entry* %421, i32 1
  store %struct.extern_res_entry* %422, %struct.extern_res_entry** %17, align 8
  br label %292

423:                                              ; preds = %292
  %424 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  ret %struct.TYPE_15__* %424
}

declare dso_local i32 @overrun(%struct.coff_file_info*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i8* @windres_get_32(i32*, i32, i32) #1

declare dso_local i8* @windres_get_16(i32*, i32*, i32) #1

declare dso_local i8* @read_coff_data_entry(i32*, i32*, %struct.coff_file_info*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
