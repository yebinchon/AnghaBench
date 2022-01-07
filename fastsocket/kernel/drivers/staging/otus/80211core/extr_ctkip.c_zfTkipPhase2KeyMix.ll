; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfTkipPhase2KeyMix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfTkipPhase2KeyMix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zsTkipSeed = type { i32*, i32*, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfTkipPhase2KeyMix(i32 %0, %struct.zsTkipSeed* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.zsTkipSeed*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.zsTkipSeed* %1, %struct.zsTkipSeed** %5, align 8
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %9 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %14 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %18 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %23 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %27 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %32 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %30, i32* %34, align 4
  %35 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %36 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %41 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32 %39, i32* %43, align 4
  %44 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %45 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %50 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32 %48, i32* %52, align 4
  %53 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %54 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  %60 = and i32 %59, 65535
  %61 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %62 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  store i32 %60, i32* %64, align 4
  %65 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %66 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %71 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %76 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %81 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ZM_BYTE_TO_WORD(i32 %79, i32 %84)
  %86 = xor i32 %74, %85
  %87 = call i8* @zfTkipSbox(i32 %86)
  %88 = sext i32 %69 to i64
  %89 = getelementptr i8, i8* %87, i64 %88
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %92 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %90, i32* %94, align 4
  %95 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %96 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %101 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %106 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %111 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ZM_BYTE_TO_WORD(i32 %109, i32 %114)
  %116 = xor i32 %104, %115
  %117 = call i8* @zfTkipSbox(i32 %116)
  %118 = sext i32 %99 to i64
  %119 = getelementptr i8, i8* %117, i64 %118
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %122 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %120, i32* %124, align 4
  %125 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %126 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %131 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %136 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 5
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %141 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @ZM_BYTE_TO_WORD(i32 %139, i32 %144)
  %146 = xor i32 %134, %145
  %147 = call i8* @zfTkipSbox(i32 %146)
  %148 = sext i32 %129 to i64
  %149 = getelementptr i8, i8* %147, i64 %148
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %152 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  store i32 %150, i32* %154, align 4
  %155 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %156 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %161 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %166 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 7
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %171 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 6
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ZM_BYTE_TO_WORD(i32 %169, i32 %174)
  %176 = xor i32 %164, %175
  %177 = call i8* @zfTkipSbox(i32 %176)
  %178 = sext i32 %159 to i64
  %179 = getelementptr i8, i8* %177, i64 %178
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %182 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  store i32 %180, i32* %184, align 4
  %185 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %186 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 4
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %191 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %196 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 9
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %201 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 8
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @ZM_BYTE_TO_WORD(i32 %199, i32 %204)
  %206 = xor i32 %194, %205
  %207 = call i8* @zfTkipSbox(i32 %206)
  %208 = sext i32 %189 to i64
  %209 = getelementptr i8, i8* %207, i64 %208
  %210 = ptrtoint i8* %209 to i32
  %211 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %212 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 4
  store i32 %210, i32* %214, align 4
  %215 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %216 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 5
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %221 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 4
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %226 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %225, i32 0, i32 4
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 11
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %231 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 10
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @ZM_BYTE_TO_WORD(i32 %229, i32 %234)
  %236 = xor i32 %224, %235
  %237 = call i8* @zfTkipSbox(i32 %236)
  %238 = sext i32 %219 to i64
  %239 = getelementptr i8, i8* %237, i64 %238
  %240 = ptrtoint i8* %239 to i32
  %241 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %242 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 5
  store i32 %240, i32* %244, align 4
  %245 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %246 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %251 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 5
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %256 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %255, i32 0, i32 4
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 13
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %261 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %260, i32 0, i32 4
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 12
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @ZM_BYTE_TO_WORD(i32 %259, i32 %264)
  %266 = xor i32 %254, %265
  %267 = call i8* @zfrotr1(i32 %266)
  %268 = sext i32 %249 to i64
  %269 = getelementptr i8, i8* %267, i64 %268
  %270 = ptrtoint i8* %269 to i32
  %271 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %272 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  store i32 %270, i32* %274, align 4
  %275 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %276 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %281 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %286 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %285, i32 0, i32 4
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 15
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %291 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %290, i32 0, i32 4
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 14
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @ZM_BYTE_TO_WORD(i32 %289, i32 %294)
  %296 = xor i32 %284, %295
  %297 = call i8* @zfrotr1(i32 %296)
  %298 = sext i32 %279 to i64
  %299 = getelementptr i8, i8* %297, i64 %298
  %300 = ptrtoint i8* %299 to i32
  %301 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %302 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  store i32 %300, i32* %304, align 4
  %305 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %306 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 2
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %311 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 1
  %314 = load i32, i32* %313, align 4
  %315 = call i8* @zfrotr1(i32 %314)
  %316 = sext i32 %309 to i64
  %317 = getelementptr i8, i8* %315, i64 %316
  %318 = ptrtoint i8* %317 to i32
  %319 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %320 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 2
  store i32 %318, i32* %322, align 4
  %323 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %324 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 3
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %329 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %328, i32 0, i32 0
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 2
  %332 = load i32, i32* %331, align 4
  %333 = call i8* @zfrotr1(i32 %332)
  %334 = sext i32 %327 to i64
  %335 = getelementptr i8, i8* %333, i64 %334
  %336 = ptrtoint i8* %335 to i32
  %337 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %338 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %337, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 3
  store i32 %336, i32* %340, align 4
  %341 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %342 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 4
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %347 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 3
  %350 = load i32, i32* %349, align 4
  %351 = call i8* @zfrotr1(i32 %350)
  %352 = sext i32 %345 to i64
  %353 = getelementptr i8, i8* %351, i64 %352
  %354 = ptrtoint i8* %353 to i32
  %355 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %356 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %355, i32 0, i32 0
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 4
  store i32 %354, i32* %358, align 4
  %359 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %360 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 5
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %365 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 4
  %368 = load i32, i32* %367, align 4
  %369 = call i8* @zfrotr1(i32 %368)
  %370 = sext i32 %363 to i64
  %371 = getelementptr i8, i8* %369, i64 %370
  %372 = ptrtoint i8* %371 to i32
  %373 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %374 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %373, i32 0, i32 0
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 5
  store i32 %372, i32* %376, align 4
  %377 = load i32, i32* %4, align 4
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %388

379:                                              ; preds = %2
  %380 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %381 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = icmp eq i32 %382, 65535
  br i1 %383, label %384, label %387

384:                                              ; preds = %379
  %385 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %386 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %385, i32 0, i32 3
  store i32 0, i32* %386, align 4
  store i32 1, i32* %3, align 4
  br label %400

387:                                              ; preds = %379
  store i32 0, i32* %3, align 4
  br label %400

388:                                              ; preds = %2
  %389 = load i32, i32* %4, align 4
  %390 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %391 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = add nsw i32 %392, 1
  %394 = icmp eq i32 %389, %393
  br i1 %394, label %395, label %399

395:                                              ; preds = %388
  %396 = load i32, i32* %4, align 4
  %397 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %398 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %397, i32 0, i32 3
  store i32 %396, i32* %398, align 4
  store i32 1, i32* %3, align 4
  br label %400

399:                                              ; preds = %388
  store i32 0, i32* %3, align 4
  br label %400

400:                                              ; preds = %399, %395, %387, %384
  %401 = load i32, i32* %3, align 4
  ret i32 %401
}

declare dso_local i8* @zfTkipSbox(i32) #1

declare dso_local i32 @ZM_BYTE_TO_WORD(i32, i32) #1

declare dso_local i8* @zfrotr1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
