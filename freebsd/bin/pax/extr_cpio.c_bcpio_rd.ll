; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_cpio.c_bcpio_rd.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_cpio.c_bcpio_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i8*, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@swp_head = common dso_local global i64 0, align 8
@C_IFMT = common dso_local global i32 0, align 4
@C_ISLNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcpio_rd(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @bcpio_id(i8* %8, i32 48)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %315

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  %17 = load i64, i64* @swp_head, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %126

19:                                               ; preds = %12
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @RSHRT_EXT(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 10
  store i8* %24, i8** %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @RSHRT_EXT(i32 %30)
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 9
  store i8* %32, i8** %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @RSHRT_EXT(i32 %38)
  %40 = inttoptr i64 %39 to i8*
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @RSHRT_EXT(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 8
  store i8* %49, i8** %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @RSHRT_EXT(i32 %55)
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 7
  store i8* %57, i8** %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @RSHRT_EXT(i32 %63)
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 6
  store i8* %65, i8** %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @RSHRT_EXT(i32 %71)
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  store i8* %73, i8** %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @RSHRT_EXT(i32 %79)
  %81 = trunc i64 %80 to i32
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 16
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @RSHRT_EXT(i32 %92)
  %94 = trunc i64 %93 to i32
  %95 = or i32 %89, %94
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @RSHRT_EXT(i32 %101)
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 %110, 16
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @RSHRT_EXT(i32 %114)
  %116 = trunc i64 %115 to i32
  %117 = or i32 %111, %116
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  store i32 %117, i32* %120, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @RSHRT_EXT(i32 %123)
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %7, align 4
  br label %233

126:                                              ; preds = %12
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 11
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @SHRT_EXT(i32 %129)
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 10
  store i8* %131, i8** %134, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 10
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @SHRT_EXT(i32 %137)
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 9
  store i8* %139, i8** %142, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @SHRT_EXT(i32 %145)
  %147 = inttoptr i64 %146 to i8*
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @SHRT_EXT(i32 %154)
  %156 = inttoptr i64 %155 to i8*
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 8
  store i8* %156, i8** %159, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @SHRT_EXT(i32 %162)
  %164 = inttoptr i64 %163 to i8*
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 7
  store i8* %164, i8** %167, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @SHRT_EXT(i32 %170)
  %172 = inttoptr i64 %171 to i8*
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 6
  store i8* %172, i8** %175, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @SHRT_EXT(i32 %178)
  %180 = inttoptr i64 %179 to i8*
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 5
  store i8* %180, i8** %183, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @SHRT_EXT(i32 %186)
  %188 = trunc i64 %187 to i32
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  store i32 %188, i32* %191, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 %195, 16
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @SHRT_EXT(i32 %199)
  %201 = trunc i64 %200 to i32
  %202 = or i32 %196, %201
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  store i32 %202, i32* %205, align 4
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = call i64 @SHRT_EXT(i32 %208)
  %210 = trunc i64 %209 to i32
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 2
  store i32 %210, i32* %213, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = shl i32 %217, 16
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @SHRT_EXT(i32 %221)
  %223 = trunc i64 %222 to i32
  %224 = or i32 %218, %223
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  store i32 %224, i32* %227, align 8
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @SHRT_EXT(i32 %230)
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %7, align 4
  br label %233

233:                                              ; preds = %126, %19
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 4
  store i32 %237, i32* %240, align 8
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 3
  store i32 %237, i32* %243, align 4
  %244 = load i32, i32* %7, align 4
  %245 = icmp slt i32 %244, 2
  br i1 %245, label %246, label %247

246:                                              ; preds = %233
  store i32 -1, i32* %3, align 4
  br label %315

247:                                              ; preds = %233
  %248 = load i32, i32* %7, align 4
  %249 = sub nsw i32 %248, 1
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 8
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %253 = load i32, i32* %7, align 4
  %254 = call i64 @rd_nm(%struct.TYPE_10__* %252, i32 %253)
  %255 = icmp slt i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %247
  store i32 -1, i32* %3, align 4
  br label %315

257:                                              ; preds = %247
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = add i64 48, %259
  %261 = trunc i64 %260 to i32
  %262 = call i64 @BCPIO_PAD(i32 %261)
  %263 = trunc i64 %262 to i32
  %264 = call i64 @rd_skip(i32 %263)
  %265 = icmp slt i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %257
  store i32 -1, i32* %3, align 4
  br label %315

267:                                              ; preds = %257
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @C_IFMT, align 4
  %273 = and i32 %271, %272
  %274 = load i32, i32* @C_ISLNK, align 4
  %275 = icmp ne i32 %273, %274
  br i1 %275, label %282, label %276

276:                                              ; preds = %267
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %298

282:                                              ; preds = %276, %267
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 4
  store i64 0, i64* %284, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 2
  %287 = load i8*, i8** %286, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 0
  store i8 0, i8* %288, align 1
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = call i64 @BCPIO_PAD(i32 %292)
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 0
  store i64 %293, i64* %295, align 8
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %297 = call i32 @com_rd(%struct.TYPE_10__* %296)
  store i32 %297, i32* %3, align 4
  br label %315

298:                                              ; preds = %276
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %300 = call i64 @rd_ln_nm(%struct.TYPE_10__* %299)
  %301 = icmp slt i64 %300, 0
  br i1 %301, label %311, label %302

302:                                              ; preds = %298
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = call i64 @BCPIO_PAD(i32 %306)
  %308 = trunc i64 %307 to i32
  %309 = call i64 @rd_skip(i32 %308)
  %310 = icmp slt i64 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %302, %298
  store i32 -1, i32* %3, align 4
  br label %315

312:                                              ; preds = %302
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %314 = call i32 @com_rd(%struct.TYPE_10__* %313)
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %312, %311, %282, %266, %256, %246, %11
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local i64 @bcpio_id(i8*, i32) #1

declare dso_local i64 @RSHRT_EXT(i32) #1

declare dso_local i64 @SHRT_EXT(i32) #1

declare dso_local i64 @rd_nm(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @rd_skip(i32) #1

declare dso_local i64 @BCPIO_PAD(i32) #1

declare dso_local i32 @com_rd(%struct.TYPE_10__*) #1

declare dso_local i64 @rd_ln_nm(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
