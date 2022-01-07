; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_pcm_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_pcm_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i64, i64, i64, i32* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"(devc=0x%p, rport=0x%p, wport=0x%p)\0A\00", align 1
@MIN_FRAGSIZE = common dso_local global i32 0, align 4
@MAX_FRAGSIZE = common dso_local global i32 0, align 4
@DMACHUNK_SIZE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"hwfrags = %d, swfrags = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"read hwbuf_max = %d, swbuf_size = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"hwfrags = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"write hwbuf_max = %d, swbuf_size = %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SW_RUN = common dso_local global i8* null, align 8
@li_comm1 = common dso_local global i32 0, align 4
@HWBUF_SHIFT = common dso_local global i32 0, align 4
@READ_INTR_MASK = common dso_local global i32 0, align 4
@DISABLED = common dso_local global i32 0, align 4
@HW_RUNNING = common dso_local global i32 0, align 4
@ERFLOWN = common dso_local global i32 0, align 4
@li_comm2 = common dso_local global i32 0, align 4
@WRITE_INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @pcm_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_setup(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  br label %23

21:                                               ; preds = %3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi %struct.TYPE_11__* [ %20, %19 ], [ %22, %21 ]
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %8, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = call i32 @DBGEV(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %25, %struct.TYPE_11__* %26, %struct.TYPE_11__* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 26
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %493

38:                                               ; preds = %23
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %47 [
    i32 131, label %42
    i32 132, label %43
    i32 128, label %44
    i32 129, label %45
    i32 130, label %46
  ]

42:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  store i32 2139062143, i32* %10, align 4
  br label %49

43:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  store i32 1431655765, i32* %10, align 4
  br label %49

44:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  store i32 -2139062144, i32* %10, align 4
  br label %49

45:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %49

46:                                               ; preds = %38
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %49

47:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %48 = call i32 @ASSERT(i32 0)
  br label %49

49:                                               ; preds = %47, %46, %45, %44, %43, %42
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 1, %76
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %82, %85
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 9
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @MIN_FRAGSIZE, align 4
  %93 = icmp sge i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @ASSERT(i32 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @MAX_FRAGSIZE, align 4
  %100 = icmp sle i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @ASSERT(i32 %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @MIN_FRAGCOUNT(i32 %108)
  %110 = icmp sge i32 %105, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @ASSERT(i32 %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @MAX_FRAGCOUNT(i32 %118)
  %120 = icmp sle i32 %115, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @ASSERT(i32 %121)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = icmp ne %struct.TYPE_11__* %123, null
  br i1 %124, label %125, label %169

125:                                              ; preds = %49
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 12
  %128 = load i8*, i8** %127, align 8
  %129 = load i8*, i8** @DMACHUNK_SIZE, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = trunc i64 %132 to i32
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 11
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 11
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %138, %141
  store i32 %142, i32* %11, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %11, align 4
  %147 = sub nsw i32 %145, %146
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %148, 2
  br i1 %149, label %150, label %151

150:                                              ; preds = %125
  store i32 2, i32* %12, align 4
  br label %151

151:                                              ; preds = %150, %125
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = mul nsw i32 %152, %155
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 13
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i32 (i8*, i32, ...) @DBGPV(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 11
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 13
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i8*, i32, ...) @DBGPV(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %151, %49
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %171 = icmp ne %struct.TYPE_11__* %170, null
  br i1 %171, label %172, label %235

172:                                              ; preds = %169
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 8
  %179 = mul nsw i32 %175, %178
  store i32 %179, i32* %15, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 12
  %182 = load i8*, i8** %181, align 8
  %183 = load i8*, i8** @DMACHUNK_SIZE, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = trunc i64 %186 to i32
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 11
  store i32 %187, i32* %189, align 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 11
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %15, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %172
  %196 = load i32, i32* %15, align 4
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 11
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %195, %172
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 11
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = ashr i32 %202, %205
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %13, align 4
  %208 = call i32 (i8*, i32, ...) @DBGPV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %13, align 4
  %213 = sub nsw i32 %211, %212
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = icmp slt i32 %214, 2
  br i1 %215, label %216, label %217

216:                                              ; preds = %199
  store i32 2, i32* %14, align 4
  br label %217

217:                                              ; preds = %216, %199
  %218 = load i32, i32* %14, align 4
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 8
  %222 = mul nsw i32 %218, %221
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 13
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %14, align 4
  %227 = call i32 (i8*, i32, ...) @DBGPV(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %225, i32 %226)
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 11
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 13
  %233 = load i32, i32* %232, align 8
  %234 = call i32 (i8*, i32, ...) @DBGPV(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %230, i32 %233)
  br label %235

235:                                              ; preds = %217, %169
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 25
  store i64 0, i64* %237, align 8
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 24
  store i64 0, i64* %239, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 23
  store i64 0, i64* %241, align 8
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 13
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @PAGE_SIZE, align 4
  %246 = add nsw i32 %244, %245
  %247 = call i8* @vmalloc(i32 %246)
  %248 = bitcast i8* %247 to i32*
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 26
  store i32* %248, i32** %250, align 8
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 26
  %253 = load i32*, i32** %252, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %258, label %255

255:                                              ; preds = %235
  %256 = load i32, i32* @ENOMEM, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %4, align 4
  br label %493

258:                                              ; preds = %235
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %260 = icmp ne %struct.TYPE_11__* %259, null
  br i1 %260, label %261, label %354

261:                                              ; preds = %258
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %263 = icmp ne %struct.TYPE_11__* %262, null
  br i1 %263, label %264, label %354

264:                                              ; preds = %261
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %267 = icmp eq %struct.TYPE_11__* %265, %266
  %268 = zext i1 %267 to i32
  %269 = call i32 @ASSERT(i32 %268)
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 26
  %272 = load i32*, i32** %271, align 8
  %273 = icmp eq i32* %272, null
  %274 = zext i1 %273 to i32
  %275 = call i32 @ASSERT(i32 %274)
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 13
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @PAGE_SIZE, align 4
  %280 = add nsw i32 %278, %279
  %281 = call i8* @vmalloc(i32 %280)
  %282 = bitcast i8* %281 to i32*
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 26
  store i32* %282, i32** %284, align 8
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 26
  %287 = load i32*, i32** %286, align 8
  %288 = icmp ne i32* %287, null
  br i1 %288, label %298, label %289

289:                                              ; preds = %264
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 26
  %292 = load i32*, i32** %291, align 8
  %293 = call i32 @vfree(i32* %292)
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 26
  store i32* null, i32** %295, align 8
  %296 = load i32, i32* @ENOMEM, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %4, align 4
  br label %493

298:                                              ; preds = %264
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 1
  store i32 %301, i32* %303, align 4
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 2
  store i32 %306, i32* %308, align 8
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 3
  store i32 %311, i32* %313, align 4
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 5
  store i32 %316, i32* %318, align 4
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 8
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 8
  store i32 %321, i32* %323, align 8
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 9
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 9
  store i32 %326, i32* %328, align 4
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 13
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 13
  store i32 %331, i32* %333, align 8
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 11
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 11
  store i32 %336, i32* %338, align 4
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 25
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 25
  store i64 %341, i64* %343, align 8
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 24
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 24
  store i64 %346, i64* %348, align 8
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 23
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 23
  store i64 %351, i64* %353, align 8
  br label %354

354:                                              ; preds = %298, %261, %258
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %356 = icmp ne %struct.TYPE_11__* %355, null
  br i1 %356, label %357, label %423

357:                                              ; preds = %354
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 14
  store i32 0, i32* %359, align 4
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 13
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 15
  store i32 %362, i32* %364, align 8
  %365 = load i8*, i8** @SW_RUN, align 8
  %366 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 20
  store i8* %365, i8** %367, align 8
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 19
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 0
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 18
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @HWBUF_SHIFT, align 4
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 5
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @li_setup_dma(i32* %369, i32* @li_comm1, i32* %371, i32 %374, i32 %375, i32 %378, i32 %381, i32 %384)
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 0
  %388 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 17
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @ad1843_setup_adc(i32* %387, i32 %390, i32 %393, i32 %396)
  %398 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 0
  %400 = load i32, i32* @READ_INTR_MASK, align 4
  %401 = call i32 @li_enable_interrupts(i32* %399, i32 %400)
  %402 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 16
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* @DISABLED, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %422, label %408

408:                                              ; preds = %357
  %409 = load i32, i32* @HW_RUNNING, align 4
  %410 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 22
  store i32 %409, i32* %411, align 4
  %412 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 19
  %414 = call i32 @li_activate_dma(i32* %413)
  %415 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %415, i32 0, i32 19
  %417 = call i32 @li_read_USTMSC(i32* %416, %struct.TYPE_13__* %16)
  %418 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %420, i32 0, i32 21
  store i32 %419, i32* %421, align 8
  br label %422

422:                                              ; preds = %408, %357
  br label %423

423:                                              ; preds = %422, %354
  %424 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %425 = icmp ne %struct.TYPE_11__* %424, null
  br i1 %425, label %426, label %491

426:                                              ; preds = %423
  %427 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %428 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i32 0, i32 11
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 13
  %432 = load i32, i32* %431, align 8
  %433 = icmp sgt i32 %429, %432
  br i1 %433, label %434, label %440

434:                                              ; preds = %426
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 13
  %437 = load i32, i32* %436, align 8
  %438 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %438, i32 0, i32 11
  store i32 %437, i32* %439, align 4
  br label %440

440:                                              ; preds = %434, %426
  %441 = load i32, i32* @ERFLOWN, align 4
  %442 = xor i32 %441, -1
  %443 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 16
  %445 = load i32, i32* %444, align 4
  %446 = and i32 %445, %442
  store i32 %446, i32* %444, align 4
  %447 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %447, i32 0, i32 13
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %451 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %450, i32 0, i32 14
  store i32 %449, i32* %451, align 4
  %452 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %453 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %452, i32 0, i32 15
  store i32 0, i32* %453, align 8
  %454 = load i8*, i8** @SW_RUN, align 8
  %455 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %456 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %455, i32 0, i32 20
  store i8* %454, i8** %456, align 8
  %457 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i32 0, i32 19
  %459 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %459, i32 0, i32 0
  %461 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %461, i32 0, i32 18
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* @HWBUF_SHIFT, align 4
  %465 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %466 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %465, i32 0, i32 5
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %468, i32 0, i32 4
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %472 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = call i32 @li_setup_dma(i32* %458, i32* @li_comm2, i32* %460, i32 %463, i32 %464, i32 %467, i32 %470, i32 %473)
  %475 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %475, i32 0, i32 0
  %477 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %478 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %477, i32 0, i32 17
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %481 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %484 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %483, i32 0, i32 4
  %485 = load i32, i32* %484, align 8
  %486 = call i32 @ad1843_setup_dac(i32* %476, i32 %479, i32 %482, i32 %485)
  %487 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %488 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %487, i32 0, i32 0
  %489 = load i32, i32* @WRITE_INTR_MASK, align 4
  %490 = call i32 @li_enable_interrupts(i32* %488, i32 %489)
  br label %491

491:                                              ; preds = %440, %423
  %492 = call i32 (...) @DBGRV()
  store i32 0, i32* %4, align 4
  br label %493

493:                                              ; preds = %491, %289, %255, %37
  %494 = load i32, i32* %4, align 4
  ret i32 %494
}

declare dso_local i32 @DBGEV(i8*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MIN_FRAGCOUNT(i32) #1

declare dso_local i32 @MAX_FRAGCOUNT(i32) #1

declare dso_local i32 @DBGPV(i8*, i32, ...) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @li_setup_dma(i32*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ad1843_setup_adc(i32*, i32, i32, i32) #1

declare dso_local i32 @li_enable_interrupts(i32*, i32) #1

declare dso_local i32 @li_activate_dma(i32*) #1

declare dso_local i32 @li_read_USTMSC(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @ad1843_setup_dac(i32*, i32, i32, i32) #1

declare dso_local i32 @DBGRV(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
