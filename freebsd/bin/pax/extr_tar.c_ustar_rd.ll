; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tar.c_ustar_rd.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tar.c_ustar_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32, i8*, i32, %struct.TYPE_5__, i8*, i64, i32, i32* }
%struct.TYPE_5__ = type { i32, i64, i8*, i64, i32, i32, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }

@BLKMULT = common dso_local global i32 0, align 4
@OCT = common dso_local global i32 0, align 4
@PAX_FIF = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i64 0, align 8
@PAX_DIR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i64 0, align 8
@PAX_BLK = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i64 0, align 8
@PAX_CHR = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i64 0, align 8
@PAX_SLK = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i64 0, align 8
@PAX_HLK = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i64 0, align 8
@PAX_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ustar_rd(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @BLKMULT, align 4
  %13 = call i64 @ustar_id(i8* %11, i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %339

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 9
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %6, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %7, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %16
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @MIN(i32 8, i32 6)
  %46 = call i32 @l_strncpy(i8* %41, i8* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %7, align 8
  store i8 47, i8* %51, align 1
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %40, %16
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 8, %62
  %64 = sub i64 %63, 1
  %65 = trunc i64 %64 to i32
  %66 = call i32 @MIN(i32 8, i32 %65)
  %67 = call i32 @l_strncpy(i8* %57, i8* %60, i32 %66)
  %68 = add nsw i32 %56, %67
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 12
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @OCT, align 4
  %83 = call i32 @asc_ul(i32 %81, i32 4, i32 %82)
  %84 = and i32 %83, 4095
  %85 = sext i32 %84 to i64
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i64 %85, i64* %88, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 11
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @OCT, align 4
  %93 = call i64 @asc_uqd(i32 %91, i32 4, i32 %92)
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  store i8* %94, i8** %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @OCT, align 4
  %102 = call i64 @asc_uqd(i32 %100, i32 4, i32 %101)
  %103 = inttoptr i64 %102 to i8*
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 6
  store i8* %103, i8** %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 6
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 7
  store i8* %110, i8** %113, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 8
  store i8* %110, i8** %116, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 7
  store i8 0, i8* %120, align 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 5
  %127 = call i64 @gid_name(i8* %123, i32* %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %55
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @OCT, align 4
  %134 = call i32 @asc_ul(i32 %132, i32 4, i32 %133)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 5
  store i32 %134, i32* %137, align 4
  br label %138

138:                                              ; preds = %129, %55
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 7
  store i8 0, i8* %142, align 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 4
  %149 = call i64 @uid_name(i8* %145, i32* %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %138
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @OCT, align 4
  %156 = call i32 @asc_ul(i32 %154, i32 4, i32 %155)
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 4
  store i32 %156, i32* %159, align 8
  br label %160

160:                                              ; preds = %151, %138
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  store i8 0, i8* %164, align 1
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 4
  store i32 0, i32* %166, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 7
  store i64 0, i64* %168, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 6
  store i8* null, i8** %170, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  switch i32 %176, label %315 [
    i32 131, label %177
    i32 132, label %187
    i32 135, label %223
    i32 134, label %223
    i32 128, label %267
    i32 130, label %267
    i32 133, label %314
    i32 136, label %314
    i32 129, label %314
  ]

177:                                              ; preds = %160
  %178 = load i32, i32* @PAX_FIF, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 8
  store i32 %178, i32* %180, align 8
  %181 = load i64, i64* @S_IFIFO, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = or i64 %185, %181
  store i64 %186, i64* %184, align 8
  br label %338

187:                                              ; preds = %160
  %188 = load i32, i32* @PAX_DIR, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 8
  store i32 %188, i32* %190, align 8
  %191 = load i64, i64* @S_IFDIR, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = or i64 %195, %191
  store i64 %196, i64* %194, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  store i32 2, i32* %199, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %202, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 47
  br i1 %211, label %212, label %222

212:                                              ; preds = %187
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %217, align 8
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %215, i64 %220
  store i8 0, i8* %221, align 1
  br label %222

222:                                              ; preds = %212, %187
  br label %338

223:                                              ; preds = %160, %160
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 135
  br i1 %227, label %228, label %238

228:                                              ; preds = %223
  %229 = load i32, i32* @PAX_BLK, align 4
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 8
  store i32 %229, i32* %231, align 8
  %232 = load i64, i64* @S_IFBLK, align 8
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = or i64 %236, %232
  store i64 %237, i64* %235, align 8
  br label %248

238:                                              ; preds = %223
  %239 = load i32, i32* @PAX_CHR, align 4
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 8
  store i32 %239, i32* %241, align 8
  %242 = load i64, i64* @S_IFCHR, align 8
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 5
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = or i64 %246, %242
  store i64 %247, i64* %245, align 8
  br label %248

248:                                              ; preds = %238, %228
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 7
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @OCT, align 4
  %253 = call i32 @asc_ul(i32 %251, i32 4, i32 %252)
  %254 = sext i32 %253 to i64
  store i64 %254, i64* %9, align 8
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @OCT, align 4
  %259 = call i32 @asc_ul(i32 %257, i32 4, i32 %258)
  %260 = sext i32 %259 to i64
  store i64 %260, i64* %10, align 8
  %261 = load i64, i64* %9, align 8
  %262 = load i64, i64* %10, align 8
  %263 = call i64 @TODEV(i64 %261, i64 %262)
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 3
  store i64 %263, i64* %266, align 8
  br label %338

267:                                              ; preds = %160, %160
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, 128
  br i1 %271, label %272, label %282

272:                                              ; preds = %267
  %273 = load i32, i32* @PAX_SLK, align 4
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 8
  store i32 %273, i32* %275, align 8
  %276 = load i64, i64* @S_IFLNK, align 8
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = or i64 %280, %276
  store i64 %281, i64* %279, align 8
  br label %295

282:                                              ; preds = %267
  %283 = load i32, i32* @PAX_HLK, align 4
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 8
  store i32 %283, i32* %285, align 8
  %286 = load i64, i64* @S_IFREG, align 8
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = or i64 %290, %286
  store i64 %291, i64* %289, align 8
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 5
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 0
  store i32 2, i32* %294, align 8
  br label %295

295:                                              ; preds = %282, %272
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 3
  %298 = load i8*, i8** %297, align 8
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 5
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @MIN(i32 8, i32 7)
  %303 = call i32 @l_strncpy(i8* %298, i8* %301, i32 %302)
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 4
  store i32 %303, i32* %305, align 8
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 3
  %308 = load i8*, i8** %307, align 8
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %308, i64 %312
  store i8 0, i8* %313, align 1
  br label %338

314:                                              ; preds = %160, %160, %160
  br label %315

315:                                              ; preds = %160, %314
  %316 = load i32, i32* @PAX_REG, align 4
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 8
  store i32 %316, i32* %318, align 8
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 5
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 2
  %322 = load i8*, i8** %321, align 8
  %323 = call i64 @TAR_PAD(i8* %322)
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 7
  store i64 %323, i64* %325, align 8
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 5
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 2
  %329 = load i8*, i8** %328, align 8
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 6
  store i8* %329, i8** %331, align 8
  %332 = load i64, i64* @S_IFREG, align 8
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 5
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = or i64 %336, %332
  store i64 %337, i64* %335, align 8
  br label %338

338:                                              ; preds = %315, %295, %248, %222, %177
  store i32 0, i32* %3, align 4
  br label %339

339:                                              ; preds = %338, %15
  %340 = load i32, i32* %3, align 4
  ret i32 %340
}

declare dso_local i64 @ustar_id(i8*, i32) #1

declare dso_local i32 @l_strncpy(i8*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @asc_ul(i32, i32, i32) #1

declare dso_local i64 @asc_uqd(i32, i32, i32) #1

declare dso_local i64 @gid_name(i8*, i32*) #1

declare dso_local i64 @uid_name(i8*, i32*) #1

declare dso_local i64 @TODEV(i64, i64) #1

declare dso_local i64 @TAR_PAD(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
