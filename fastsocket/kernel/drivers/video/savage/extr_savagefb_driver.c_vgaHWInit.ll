; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_vgaHWInit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_vgaHWInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }
%struct.savagefb_par = type { i32 }
%struct.xtimings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.savage_reg = type { i32, i32*, i32*, i32*, i32* }

@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, %struct.savagefb_par*, %struct.xtimings*, %struct.savage_reg*)* @vgaHWInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgaHWInit(%struct.fb_var_screeninfo* %0, %struct.savagefb_par* %1, %struct.xtimings* %2, %struct.savage_reg* %3) #0 {
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca %struct.savagefb_par*, align 8
  %7 = alloca %struct.xtimings*, align 8
  %8 = alloca %struct.savage_reg*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %5, align 8
  store %struct.savagefb_par* %1, %struct.savagefb_par** %6, align 8
  store %struct.xtimings* %2, %struct.xtimings** %7, align 8
  store %struct.savage_reg* %3, %struct.savage_reg** %8, align 8
  %9 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %10 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %9, i32 0, i32 0
  store i32 35, i32* %10, align 8
  %11 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %12 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %19 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, 64
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %17, %4
  %23 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %24 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %31 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, 128
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %36 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %40 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %44 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 15, i32* %46, align 4
  %47 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %48 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 0, i32* %50, align 4
  %51 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %52 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  store i32 14, i32* %54, align 4
  %55 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %56 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 3
  %59 = sub nsw i32 %58, 5
  %60 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %61 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %59, i32* %63, align 4
  %64 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %65 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %66, 3
  %68 = sub nsw i32 %67, 1
  %69 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %70 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %68, i32* %72, align 4
  %73 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %74 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 3
  %77 = sub nsw i32 %76, 1
  %78 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %79 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 %77, i32* %81, align 4
  %82 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %83 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = ashr i32 %84, 3
  %86 = sub nsw i32 %85, 1
  %87 = and i32 %86, 31
  %88 = or i32 %87, 128
  %89 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %90 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  store i32 %88, i32* %92, align 4
  %93 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %94 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 3
  %97 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %98 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  store i32 %96, i32* %100, align 4
  %101 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %102 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = ashr i32 %103, 3
  %105 = sub nsw i32 %104, 1
  %106 = and i32 %105, 32
  %107 = shl i32 %106, 2
  %108 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %109 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = ashr i32 %110, 3
  %112 = and i32 %111, 31
  %113 = or i32 %107, %112
  %114 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %115 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 5
  store i32 %113, i32* %117, align 4
  %118 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %119 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, 2
  %122 = and i32 %121, 255
  %123 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %124 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 6
  store i32 %122, i32* %126, align 4
  %127 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %128 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, 2
  %131 = and i32 %130, 256
  %132 = ashr i32 %131, 8
  %133 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %134 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 1
  %137 = and i32 %136, 256
  %138 = ashr i32 %137, 7
  %139 = or i32 %132, %138
  %140 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %141 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 256
  %144 = ashr i32 %143, 6
  %145 = or i32 %139, %144
  %146 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %147 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, 1
  %150 = and i32 %149, 256
  %151 = ashr i32 %150, 5
  %152 = or i32 %145, %151
  %153 = or i32 %152, 16
  %154 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %155 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %156, 2
  %158 = and i32 %157, 512
  %159 = ashr i32 %158, 4
  %160 = or i32 %153, %159
  %161 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %162 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %163, 1
  %165 = and i32 %164, 512
  %166 = ashr i32 %165, 3
  %167 = or i32 %160, %166
  %168 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %169 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 512
  %172 = ashr i32 %171, 2
  %173 = or i32 %167, %172
  %174 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %175 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 7
  store i32 %173, i32* %177, align 4
  %178 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %179 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 8
  store i32 0, i32* %181, align 4
  %182 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %183 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %184, 1
  %186 = and i32 %185, 512
  %187 = ashr i32 %186, 4
  %188 = or i32 %187, 64
  %189 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %190 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 9
  store i32 %188, i32* %192, align 4
  %193 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %194 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %193, i32 0, i32 9
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %34
  %198 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %199 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 9
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, 128
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %197, %34
  %205 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %206 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 10
  store i32 0, i32* %208, align 4
  %209 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %210 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 11
  store i32 0, i32* %212, align 4
  %213 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %214 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 12
  store i32 0, i32* %216, align 4
  %217 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %218 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 13
  store i32 0, i32* %220, align 4
  %221 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %222 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 14
  store i32 0, i32* %224, align 4
  %225 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %226 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 15
  store i32 0, i32* %228, align 4
  %229 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %230 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, 255
  %233 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %234 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 16
  store i32 %232, i32* %236, align 4
  %237 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %238 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 8
  %240 = and i32 %239, 15
  %241 = or i32 %240, 32
  %242 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %243 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 17
  store i32 %241, i32* %245, align 4
  %246 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %247 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = sub nsw i32 %248, 1
  %250 = and i32 %249, 255
  %251 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %252 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 18
  store i32 %250, i32* %254, align 4
  %255 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %256 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = ashr i32 %257, 4
  %259 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %260 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 19
  store i32 %258, i32* %262, align 4
  %263 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %264 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 20
  store i32 0, i32* %266, align 4
  %267 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %268 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 %269, 1
  %271 = and i32 %270, 255
  %272 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %273 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 21
  store i32 %271, i32* %275, align 4
  %276 = load %struct.xtimings*, %struct.xtimings** %7, align 8
  %277 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %276, i32 0, i32 8
  %278 = load i32, i32* %277, align 8
  %279 = sub nsw i32 %278, 1
  %280 = and i32 %279, 255
  %281 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %282 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 22
  store i32 %280, i32* %284, align 4
  %285 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %286 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 23
  store i32 195, i32* %288, align 4
  %289 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %290 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %289, i32 0, i32 2
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 24
  store i32 255, i32* %292, align 4
  %293 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %294 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %293, i32 0, i32 3
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  store i32 0, i32* %296, align 4
  %297 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %298 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %297, i32 0, i32 3
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 1
  store i32 0, i32* %300, align 4
  %301 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %302 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %301, i32 0, i32 3
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 2
  store i32 0, i32* %304, align 4
  %305 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %306 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %305, i32 0, i32 3
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 3
  store i32 0, i32* %308, align 4
  %309 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %310 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %309, i32 0, i32 3
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 4
  store i32 0, i32* %312, align 4
  %313 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %314 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %313, i32 0, i32 3
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 5
  store i32 64, i32* %316, align 4
  %317 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %318 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %317, i32 0, i32 3
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 6
  store i32 5, i32* %320, align 4
  %321 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %322 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %321, i32 0, i32 3
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 7
  store i32 15, i32* %324, align 4
  %325 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %326 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %325, i32 0, i32 3
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 8
  store i32 255, i32* %328, align 4
  %329 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %330 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %329, i32 0, i32 4
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  store i32 0, i32* %332, align 4
  %333 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %334 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %333, i32 0, i32 4
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 1
  store i32 1, i32* %336, align 4
  %337 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %338 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %337, i32 0, i32 4
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 2
  store i32 2, i32* %340, align 4
  %341 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %342 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %341, i32 0, i32 4
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 3
  store i32 3, i32* %344, align 4
  %345 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %346 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %345, i32 0, i32 4
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 4
  store i32 4, i32* %348, align 4
  %349 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %350 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %349, i32 0, i32 4
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 5
  store i32 5, i32* %352, align 4
  %353 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %354 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %353, i32 0, i32 4
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 6
  store i32 6, i32* %356, align 4
  %357 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %358 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %357, i32 0, i32 4
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 7
  store i32 7, i32* %360, align 4
  %361 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %362 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %361, i32 0, i32 4
  %363 = load i32*, i32** %362, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 8
  store i32 8, i32* %364, align 4
  %365 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %366 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %365, i32 0, i32 4
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 9
  store i32 9, i32* %368, align 4
  %369 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %370 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %369, i32 0, i32 4
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 10
  store i32 10, i32* %372, align 4
  %373 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %374 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %373, i32 0, i32 4
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 11
  store i32 11, i32* %376, align 4
  %377 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %378 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %377, i32 0, i32 4
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 12
  store i32 12, i32* %380, align 4
  %381 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %382 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %381, i32 0, i32 4
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 13
  store i32 13, i32* %384, align 4
  %385 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %386 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %385, i32 0, i32 4
  %387 = load i32*, i32** %386, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 14
  store i32 14, i32* %388, align 4
  %389 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %390 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %389, i32 0, i32 4
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 15
  store i32 15, i32* %392, align 4
  %393 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %394 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %393, i32 0, i32 4
  %395 = load i32*, i32** %394, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 16
  store i32 65, i32* %396, align 4
  %397 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %398 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %397, i32 0, i32 4
  %399 = load i32*, i32** %398, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 17
  store i32 255, i32* %400, align 4
  %401 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %402 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %401, i32 0, i32 4
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 18
  store i32 15, i32* %404, align 4
  %405 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %406 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %405, i32 0, i32 4
  %407 = load i32*, i32** %406, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 19
  store i32 0, i32* %408, align 4
  %409 = load %struct.savage_reg*, %struct.savage_reg** %8, align 8
  %410 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %409, i32 0, i32 4
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 20
  store i32 0, i32* %412, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
