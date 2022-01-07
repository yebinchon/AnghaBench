; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_UnloadStateExt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_UnloadStateExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*)* @UnloadStateExt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UnloadStateExt(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @VGA_WR08(i32 %7, i32 980, i32 25)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @VGA_RD08(i32 %11, i32 981)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 30
  store i8* %12, i8** %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @VGA_WR08(i32 %17, i32 980, i32 26)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @VGA_RD08(i32 %21, i32 981)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 29
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @VGA_WR08(i32 %27, i32 980, i32 37)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @VGA_RD08(i32 %31, i32 981)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 28
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @VGA_WR08(i32 %37, i32 980, i32 40)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @VGA_RD08(i32 %41, i32 981)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 27
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @VGA_WR08(i32 %47, i32 980, i32 45)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @VGA_RD08(i32 %51, i32 981)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 26
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @VGA_WR08(i32 %57, i32 980, i32 27)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @VGA_RD08(i32 %61, i32 981)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 25
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @VGA_WR08(i32 %67, i32 980, i32 32)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @VGA_RD08(i32 %71, i32 981)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 24
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @VGA_WR08(i32 %77, i32 980, i32 48)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @VGA_RD08(i32 %81, i32 981)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 23
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @VGA_WR08(i32 %87, i32 980, i32 49)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @VGA_RD08(i32 %91, i32 981)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 22
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @VGA_WR08(i32 %97, i32 980, i32 47)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @VGA_RD08(i32 %101, i32 981)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 21
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @VGA_WR08(i32 %107, i32 980, i32 57)
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @VGA_RD08(i32 %111, i32 981)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 20
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @NV_RD32(i32 %117, i32 1288)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 19
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @NV_RD32(i32 %123, i32 1312)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 18
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @NV_RD32(i32 %129, i32 1292)
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 17
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @NV_RD32(i32 %135, i32 1536)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 16
  store i8* %136, i8** %138, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @NV_RD32(i32 %141, i32 2120)
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 15
  store i8* %142, i8** %144, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @NV_RD32(i32 %147, i32 512)
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 14
  store i8* %148, i8** %150, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %372 [
    i32 132, label %154
    i32 131, label %203
    i32 130, label %252
    i32 129, label %252
    i32 128, label %252
  ]

154:                                              ; preds = %2
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @NV_RD32(i32 %157, i32 1584)
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 13
  store i8* %158, i8** %160, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @NV_RD32(i32 %163, i32 1588)
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 12
  store i8* %164, i8** %166, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @NV_RD32(i32 %169, i32 1592)
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 11
  store i8* %170, i8** %172, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @NV_RD32(i32 %175, i32 1596)
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 10
  store i8* %176, i8** %178, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @NV_RD32(i32 %181, i32 1616)
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 9
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @NV_RD32(i32 %187, i32 1620)
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 8
  store i8* %188, i8** %190, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @NV_RD32(i32 %193, i32 1624)
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 7
  store i8* %194, i8** %196, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 4
  %200 = call i8* @NV_RD32(i32 %199, i32 1628)
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 6
  store i8* %200, i8** %202, align 8
  br label %372

203:                                              ; preds = %2
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 4
  %207 = call i8* @NV_RD32(i32 %206, i32 1600)
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 13
  store i8* %207, i8** %209, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 4
  %213 = call i8* @NV_RD32(i32 %212, i32 1604)
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 12
  store i8* %213, i8** %215, align 8
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = call i8* @NV_RD32(i32 %218, i32 1608)
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 11
  store i8* %219, i8** %221, align 8
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 4
  %225 = call i8* @NV_RD32(i32 %224, i32 1612)
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 10
  store i8* %225, i8** %227, align 8
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = call i8* @NV_RD32(i32 %230, i32 1648)
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 9
  store i8* %231, i8** %233, align 8
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 4
  %237 = call i8* @NV_RD32(i32 %236, i32 1652)
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 8
  store i8* %237, i8** %239, align 8
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = call i8* @NV_RD32(i32 %242, i32 1656)
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 7
  store i8* %243, i8** %245, align 8
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @NV_RD32(i32 %248, i32 1660)
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 6
  store i8* %249, i8** %251, align 8
  br label %372

252:                                              ; preds = %2, %2, %2
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @NV_RD32(i32 %255, i32 1600)
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 13
  store i8* %256, i8** %258, align 8
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 4
  %262 = call i8* @NV_RD32(i32 %261, i32 1604)
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 12
  store i8* %262, i8** %264, align 8
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 7
  %267 = load i32, i32* %266, align 4
  %268 = call i8* @NV_RD32(i32 %267, i32 1608)
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 11
  store i8* %268, i8** %270, align 8
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 7
  %273 = load i32, i32* %272, align 4
  %274 = call i8* @NV_RD32(i32 %273, i32 1612)
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 10
  store i8* %274, i8** %276, align 8
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 4
  %280 = call i8* @NV_RD32(i32 %279, i32 1648)
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 9
  store i8* %280, i8** %282, align 8
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 7
  %285 = load i32, i32* %284, align 4
  %286 = call i8* @NV_RD32(i32 %285, i32 1652)
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 8
  store i8* %286, i8** %288, align 8
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 4
  %292 = call i8* @NV_RD32(i32 %291, i32 1656)
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 7
  store i8* %292, i8** %294, align 8
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 7
  %297 = load i32, i32* %296, align 4
  %298 = call i8* @NV_RD32(i32 %297, i32 1660)
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 6
  store i8* %298, i8** %300, align 8
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %328

305:                                              ; preds = %252
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 4
  %309 = call i8* @NV_RD32(i32 %308, i32 2144)
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 5
  store i8* %309, i8** %311, align 8
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 4
  %315 = call i8* @NV_RD32(i32 %314, i32 10336)
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 4
  store i8* %315, i8** %317, align 8
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @VGA_WR08(i32 %320, i32 980, i32 68)
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 4
  %324 = load i32, i32* %323, align 4
  %325 = call i8* @VGA_RD08(i32 %324, i32 981)
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 3
  store i8* %325, i8** %327, align 8
  br label %328

328:                                              ; preds = %305, %252
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @VGA_WR08(i32 %331, i32 980, i32 65)
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 4
  %336 = call i8* @VGA_RD08(i32 %335, i32 981)
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 2
  store i8* %336, i8** %338, align 8
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = call i8* @NV_RD32(i32 %341, i32 2064)
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 1
  store i8* %342, i8** %344, align 8
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, 4080
  %349 = icmp eq i32 %348, 272
  br i1 %349, label %350, label %357

350:                                              ; preds = %328
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = call i8* @NV_RD32(i32 %353, i32 1320)
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 0
  store i8* %354, i8** %356, align 8
  br label %371

357:                                              ; preds = %328
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = and i32 %360, 4080
  %362 = icmp sge i32 %361, 368
  br i1 %362, label %363, label %370

363:                                              ; preds = %357
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = call i8* @NV_RD32(i32 %366, i32 2108)
  %368 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 0
  store i8* %367, i8** %369, align 8
  br label %370

370:                                              ; preds = %363, %357
  br label %371

371:                                              ; preds = %370, %350
  br label %372

372:                                              ; preds = %2, %371, %203, %154
  ret void
}

declare dso_local i32 @VGA_WR08(i32, i32, i32) #1

declare dso_local i8* @VGA_RD08(i32, i32) #1

declare dso_local i8* @NV_RD32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
