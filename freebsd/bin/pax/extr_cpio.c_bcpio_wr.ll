; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_cpio.c_bcpio_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_cpio.c_bcpio_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32, i8*, i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8** }

@BCPIO_MASK = common dso_local global i64 0, align 8
@PAX_BLK = common dso_local global i32 0, align 4
@PAX_CHR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"File is too large for bcpio format %s\00", align 1
@MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not write bcpio header for %s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not write bcpio link name for %s\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Bcpio header field is too small for file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcpio_wr(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = load i64, i64* @BCPIO_MASK, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i64, i64* @BCPIO_MASK, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i64 @map_dev(%struct.TYPE_8__* %10, i32 %12, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %589

18:                                               ; preds = %1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PAX_BLK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PAX_CHR, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %24, %18
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %4, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %170 [
    i32 131, label %38
    i32 129, label %38
    i32 130, label %38
    i32 128, label %111
  ]

38:                                               ; preds = %34, %34, %34
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @BCPIO_PAD(i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @CHR_WR_0(i32 %49)
  %51 = ptrtoint i8* %50 to i8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 %51, i8* %55, align 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @CHR_WR_1(i32 %59)
  %61 = ptrtoint i8* %60 to i8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8 %61, i8* %65, align 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @CHR_WR_2(i32 %69)
  %71 = ptrtoint i8* %70 to i8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 %71, i8* %75, align 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @CHR_WR_3(i32 %79)
  %81 = ptrtoint i8* %80 to i8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8 %81, i8* %85, align 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @SHRT_EXT(i8* %88)
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = shl i32 %91, 16
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @SHRT_EXT(i8* %95)
  %97 = trunc i64 %96 to i32
  %98 = or i32 %92, %97
  store i32 %98, i32* %7, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %38
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %108)
  store i32 1, i32* %2, align 4
  br label %589

110:                                              ; preds = %38
  br label %189

111:                                              ; preds = %34
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i8* @CHR_WR_0(i32 %116)
  %118 = ptrtoint i8* %117 to i8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  store i8 %118, i8* %122, align 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @CHR_WR_1(i32 %125)
  %127 = ptrtoint i8* %126 to i8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  store i8 %127, i8* %131, align 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @CHR_WR_2(i32 %134)
  %136 = ptrtoint i8* %135 to i8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  store i8 %136, i8* %140, align 1
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @CHR_WR_3(i32 %143)
  %145 = ptrtoint i8* %144 to i8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  store i8 %145, i8* %149, align 1
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i64 @SHRT_EXT(i8* %152)
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = shl i32 %155, 16
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @SHRT_EXT(i8* %159)
  %161 = trunc i64 %160 to i32
  %162 = or i32 %156, %161
  store i32 %162, i32* %8, align 4
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %111
  br label %584

169:                                              ; preds = %111
  br label %189

170:                                              ; preds = %34
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  store i8 0, i8* %176, align 1
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  store i8 0, i8* %180, align 1
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  store i8 0, i8* %184, align 1
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  store i8 0, i8* %188, align 1
  br label %189

189:                                              ; preds = %170, %169, %110
  %190 = load i32, i32* @MAGIC, align 4
  %191 = call i8* @CHR_WR_2(i32 %190)
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 12
  %194 = load i8**, i8*** %193, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 0
  store i8* %191, i8** %195, align 8
  %196 = load i32, i32* @MAGIC, align 4
  %197 = call i8* @CHR_WR_3(i32 %196)
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 12
  %200 = load i8**, i8*** %199, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 1
  store i8* %197, i8** %201, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @CHR_WR_2(i32 %205)
  %207 = ptrtoint i8* %206 to i8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 0
  store i8 %207, i8* %211, align 1
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 7
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i8* @CHR_WR_3(i32 %215)
  %217 = ptrtoint i8* %216 to i8
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 1
  store i8 %217, i8* %221, align 1
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 7
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 2
  %229 = load i8*, i8** %228, align 8
  %230 = call i64 @SHRT_EXT(i8* %229)
  %231 = icmp ne i64 %226, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %189
  br label %584

233:                                              ; preds = %189
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = call i8* @CHR_WR_2(i32 %237)
  %239 = ptrtoint i8* %238 to i8
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  %242 = load i8*, i8** %241, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 0
  store i8 %239, i8* %243, align 1
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 7
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = call i8* @CHR_WR_3(i32 %247)
  %249 = ptrtoint i8* %248 to i8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 3
  %252 = load i8*, i8** %251, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 1
  store i8 %249, i8* %253, align 1
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 7
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 3
  %261 = load i8*, i8** %260, align 8
  %262 = call i64 @SHRT_EXT(i8* %261)
  %263 = icmp ne i64 %258, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %233
  br label %584

265:                                              ; preds = %233
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 7
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = call i8* @CHR_WR_2(i32 %269)
  %271 = ptrtoint i8* %270 to i8
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 4
  %274 = load i8*, i8** %273, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 0
  store i8 %271, i8* %275, align 1
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 7
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = call i8* @CHR_WR_3(i32 %279)
  %281 = ptrtoint i8* %280 to i8
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 4
  %284 = load i8*, i8** %283, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 1
  store i8 %281, i8* %285, align 1
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 7
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 4
  %293 = load i8*, i8** %292, align 8
  %294 = call i64 @SHRT_EXT(i8* %293)
  %295 = icmp ne i64 %290, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %265
  br label %584

297:                                              ; preds = %265
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 7
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 8
  %302 = call i8* @CHR_WR_2(i32 %301)
  %303 = ptrtoint i8* %302 to i8
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 5
  %306 = load i8*, i8** %305, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 0
  store i8 %303, i8* %307, align 1
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 7
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 8
  %312 = call i8* @CHR_WR_3(i32 %311)
  %313 = ptrtoint i8* %312 to i8
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 5
  %316 = load i8*, i8** %315, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 1
  store i8 %313, i8* %317, align 1
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 7
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 5
  %321 = load i32, i32* %320, align 8
  %322 = sext i32 %321 to i64
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 5
  %325 = load i8*, i8** %324, align 8
  %326 = call i64 @SHRT_EXT(i8* %325)
  %327 = icmp ne i64 %322, %326
  br i1 %327, label %328, label %329

328:                                              ; preds = %297
  br label %584

329:                                              ; preds = %297
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 7
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 6
  %333 = load i32, i32* %332, align 4
  %334 = call i8* @CHR_WR_2(i32 %333)
  %335 = ptrtoint i8* %334 to i8
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 6
  %338 = load i8*, i8** %337, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 0
  store i8 %335, i8* %339, align 1
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 7
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 6
  %343 = load i32, i32* %342, align 4
  %344 = call i8* @CHR_WR_3(i32 %343)
  %345 = ptrtoint i8* %344 to i8
  %346 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 6
  %348 = load i8*, i8** %347, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 1
  store i8 %345, i8* %349, align 1
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 7
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 6
  %353 = load i32, i32* %352, align 4
  %354 = sext i32 %353 to i64
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 6
  %357 = load i8*, i8** %356, align 8
  %358 = call i64 @SHRT_EXT(i8* %357)
  %359 = icmp ne i64 %354, %358
  br i1 %359, label %360, label %361

360:                                              ; preds = %329
  br label %584

361:                                              ; preds = %329
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 7
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 8
  %366 = call i8* @CHR_WR_2(i32 %365)
  %367 = ptrtoint i8* %366 to i8
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 7
  %370 = load i8*, i8** %369, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 0
  store i8 %367, i8* %371, align 1
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 7
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 7
  %375 = load i32, i32* %374, align 8
  %376 = call i8* @CHR_WR_3(i32 %375)
  %377 = ptrtoint i8* %376 to i8
  %378 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 7
  %380 = load i8*, i8** %379, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 1
  store i8 %377, i8* %381, align 1
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 7
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 7
  %385 = load i32, i32* %384, align 8
  %386 = sext i32 %385 to i64
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 7
  %389 = load i8*, i8** %388, align 8
  %390 = call i64 @SHRT_EXT(i8* %389)
  %391 = icmp ne i64 %386, %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %361
  br label %584

393:                                              ; preds = %361
  %394 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 7
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = trunc i64 %397 to i32
  %399 = call i8* @CHR_WR_2(i32 %398)
  %400 = ptrtoint i8* %399 to i8
  %401 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %401, i32 0, i32 8
  %403 = load i8*, i8** %402, align 8
  %404 = getelementptr inbounds i8, i8* %403, i64 0
  store i8 %400, i8* %404, align 1
  %405 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 7
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = trunc i64 %408 to i32
  %410 = call i8* @CHR_WR_3(i32 %409)
  %411 = ptrtoint i8* %410 to i8
  %412 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 8
  %414 = load i8*, i8** %413, align 8
  %415 = getelementptr inbounds i8, i8* %414, i64 1
  store i8 %411, i8* %415, align 1
  %416 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %416, i32 0, i32 7
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i32 0, i32 8
  %422 = load i8*, i8** %421, align 8
  %423 = call i64 @SHRT_EXT(i8* %422)
  %424 = icmp ne i64 %419, %423
  br i1 %424, label %425, label %426

425:                                              ; preds = %393
  br label %584

426:                                              ; preds = %393
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 7
  %429 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %428, i32 0, i32 8
  %430 = load i32, i32* %429, align 4
  %431 = call i8* @CHR_WR_0(i32 %430)
  %432 = ptrtoint i8* %431 to i8
  %433 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i32 0, i32 9
  %435 = load i8*, i8** %434, align 8
  %436 = getelementptr inbounds i8, i8* %435, i64 0
  store i8 %432, i8* %436, align 1
  %437 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %437, i32 0, i32 7
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i32 0, i32 8
  %440 = load i32, i32* %439, align 4
  %441 = call i8* @CHR_WR_1(i32 %440)
  %442 = ptrtoint i8* %441 to i8
  %443 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 9
  %445 = load i8*, i8** %444, align 8
  %446 = getelementptr inbounds i8, i8* %445, i64 1
  store i8 %442, i8* %446, align 1
  %447 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %448 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %447, i32 0, i32 7
  %449 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %448, i32 0, i32 8
  %450 = load i32, i32* %449, align 4
  %451 = call i8* @CHR_WR_2(i32 %450)
  %452 = ptrtoint i8* %451 to i8
  %453 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %453, i32 0, i32 10
  %455 = load i8*, i8** %454, align 8
  %456 = getelementptr inbounds i8, i8* %455, i64 0
  store i8 %452, i8* %456, align 1
  %457 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i32 0, i32 7
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %458, i32 0, i32 8
  %460 = load i32, i32* %459, align 4
  %461 = call i8* @CHR_WR_3(i32 %460)
  %462 = ptrtoint i8* %461 to i8
  %463 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %463, i32 0, i32 10
  %465 = load i8*, i8** %464, align 8
  %466 = getelementptr inbounds i8, i8* %465, i64 1
  store i8 %462, i8* %466, align 1
  %467 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %467, i32 0, i32 9
  %469 = load i8*, i8** %468, align 8
  %470 = call i64 @SHRT_EXT(i8* %469)
  %471 = trunc i64 %470 to i32
  store i32 %471, i32* %9, align 4
  %472 = load i32, i32* %9, align 4
  %473 = shl i32 %472, 16
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 10
  %476 = load i8*, i8** %475, align 8
  %477 = call i64 @SHRT_EXT(i8* %476)
  %478 = trunc i64 %477 to i32
  %479 = or i32 %473, %478
  store i32 %479, i32* %9, align 4
  %480 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %480, i32 0, i32 7
  %482 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %481, i32 0, i32 8
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* %9, align 4
  %485 = icmp ne i32 %483, %484
  br i1 %485, label %486, label %487

486:                                              ; preds = %426
  br label %584

487:                                              ; preds = %426
  %488 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %489 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %488, i32 0, i32 3
  %490 = load i32, i32* %489, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %5, align 4
  %492 = load i32, i32* %5, align 4
  %493 = call i8* @CHR_WR_2(i32 %492)
  %494 = ptrtoint i8* %493 to i8
  %495 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %496 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %495, i32 0, i32 11
  %497 = load i8*, i8** %496, align 8
  %498 = getelementptr inbounds i8, i8* %497, i64 0
  store i8 %494, i8* %498, align 1
  %499 = load i32, i32* %5, align 4
  %500 = call i8* @CHR_WR_3(i32 %499)
  %501 = ptrtoint i8* %500 to i8
  %502 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %502, i32 0, i32 11
  %504 = load i8*, i8** %503, align 8
  %505 = getelementptr inbounds i8, i8* %504, i64 1
  store i8 %501, i8* %505, align 1
  %506 = load i32, i32* %5, align 4
  %507 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %508 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %507, i32 0, i32 11
  %509 = load i8*, i8** %508, align 8
  %510 = call i64 @SHRT_EXT(i8* %509)
  %511 = trunc i64 %510 to i32
  %512 = icmp ne i32 %506, %511
  br i1 %512, label %513, label %514

513:                                              ; preds = %487
  br label %584

514:                                              ; preds = %487
  %515 = bitcast %struct.TYPE_7__* %6 to i8*
  %516 = call i64 @wr_rdbuf(i8* %515, i32 104)
  %517 = icmp slt i64 %516, 0
  br i1 %517, label %534, label %518

518:                                              ; preds = %514
  %519 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %520 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %519, i32 0, i32 4
  %521 = load i8*, i8** %520, align 8
  %522 = load i32, i32* %5, align 4
  %523 = call i64 @wr_rdbuf(i8* %521, i32 %522)
  %524 = icmp slt i64 %523, 0
  br i1 %524, label %534, label %525

525:                                              ; preds = %518
  %526 = load i32, i32* %5, align 4
  %527 = sext i32 %526 to i64
  %528 = add i64 104, %527
  %529 = trunc i64 %528 to i32
  %530 = call i64 @BCPIO_PAD(i32 %529)
  %531 = trunc i64 %530 to i32
  %532 = call i64 @wr_skip(i32 %531)
  %533 = icmp slt i64 %532, 0
  br i1 %533, label %534, label %539

534:                                              ; preds = %525, %518, %514
  %535 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %536 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %535, i32 0, i32 6
  %537 = load i32, i32* %536, align 8
  %538 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %537)
  store i32 -1, i32* %2, align 4
  br label %589

539:                                              ; preds = %525
  %540 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = icmp eq i32 %542, 131
  br i1 %543, label %554, label %544

544:                                              ; preds = %539
  %545 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %546 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = icmp eq i32 %547, 129
  br i1 %548, label %554, label %549

549:                                              ; preds = %544
  %550 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %551 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 8
  %553 = icmp eq i32 %552, 130
  br i1 %553, label %554, label %555

554:                                              ; preds = %549, %544, %539
  store i32 0, i32* %2, align 4
  br label %589

555:                                              ; preds = %549
  %556 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %557 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = icmp ne i32 %558, 128
  br i1 %559, label %560, label %561

560:                                              ; preds = %555
  store i32 1, i32* %2, align 4
  br label %589

561:                                              ; preds = %555
  %562 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %563 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %562, i32 0, i32 5
  %564 = load i8*, i8** %563, align 8
  %565 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %566 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %565, i32 0, i32 2
  %567 = load i32, i32* %566, align 8
  %568 = call i64 @wr_rdbuf(i8* %564, i32 %567)
  %569 = icmp slt i64 %568, 0
  br i1 %569, label %578, label %570

570:                                              ; preds = %561
  %571 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %572 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %571, i32 0, i32 2
  %573 = load i32, i32* %572, align 8
  %574 = call i64 @BCPIO_PAD(i32 %573)
  %575 = trunc i64 %574 to i32
  %576 = call i64 @wr_skip(i32 %575)
  %577 = icmp slt i64 %576, 0
  br i1 %577, label %578, label %583

578:                                              ; preds = %570, %561
  %579 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %580 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %579, i32 0, i32 6
  %581 = load i32, i32* %580, align 8
  %582 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %581)
  store i32 -1, i32* %2, align 4
  br label %589

583:                                              ; preds = %570
  store i32 1, i32* %2, align 4
  br label %589

584:                                              ; preds = %513, %486, %425, %392, %360, %328, %296, %264, %232, %168
  %585 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %586 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %585, i32 0, i32 6
  %587 = load i32, i32* %586, align 8
  %588 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %587)
  store i32 1, i32* %2, align 4
  br label %589

589:                                              ; preds = %584, %583, %578, %560, %554, %534, %105, %17
  %590 = load i32, i32* %2, align 4
  ret i32 %590
}

declare dso_local i64 @map_dev(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @BCPIO_PAD(i32) #1

declare dso_local i8* @CHR_WR_0(i32) #1

declare dso_local i8* @CHR_WR_1(i32) #1

declare dso_local i8* @CHR_WR_2(i32) #1

declare dso_local i8* @CHR_WR_3(i32) #1

declare dso_local i64 @SHRT_EXT(i8*) #1

declare dso_local i32 @paxwarn(i32, i8*, i32) #1

declare dso_local i64 @wr_rdbuf(i8*, i32) #1

declare dso_local i64 @wr_skip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
