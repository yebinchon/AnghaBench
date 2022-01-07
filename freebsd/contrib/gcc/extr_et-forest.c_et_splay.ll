; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_et-forest.c_et_splay.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_et-forest.c_et_splay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_occ = type { i32, %struct.et_occ*, %struct.et_occ*, %struct.et_occ*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_occ*)* @et_splay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_splay(%struct.et_occ* %0) #0 {
  %2 = alloca %struct.et_occ*, align 8
  %3 = alloca %struct.et_occ*, align 8
  %4 = alloca %struct.et_occ*, align 8
  %5 = alloca %struct.et_occ*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.et_occ* %0, %struct.et_occ** %2, align 8
  br label %9

9:                                                ; preds = %295, %1
  %10 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %11 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %10, i32 0, i32 3
  %12 = load %struct.et_occ*, %struct.et_occ** %11, align 8
  %13 = icmp ne %struct.et_occ* %12, null
  br i1 %13, label %14, label %300

14:                                               ; preds = %9
  %15 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %16 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %19 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %18, i32 0, i32 3
  %20 = load %struct.et_occ*, %struct.et_occ** %19, align 8
  store %struct.et_occ* %20, %struct.et_occ** %3, align 8
  %21 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %22 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %25 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %24, i32 0, i32 3
  %26 = load %struct.et_occ*, %struct.et_occ** %25, align 8
  store %struct.et_occ* %26, %struct.et_occ** %4, align 8
  %27 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %28 = icmp ne %struct.et_occ* %27, null
  br i1 %28, label %85, label %29

29:                                               ; preds = %14
  %30 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @set_depth_add(%struct.et_occ* %30, i32 %31)
  %33 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %34 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %37 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %39 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %42 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %44 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %43, i32 0, i32 2
  %45 = load %struct.et_occ*, %struct.et_occ** %44, align 8
  %46 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %47 = icmp eq %struct.et_occ* %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %29
  %49 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %50 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %51 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %50, i32 0, i32 1
  %52 = load %struct.et_occ*, %struct.et_occ** %51, align 8
  %53 = call i32 @set_prev(%struct.et_occ* %49, %struct.et_occ* %52)
  %54 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %55 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %56 = call i32 @set_next(%struct.et_occ* %54, %struct.et_occ* %55)
  %57 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %58 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %57, i32 0, i32 2
  %59 = load %struct.et_occ*, %struct.et_occ** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @set_depth_add(%struct.et_occ* %59, i32 %60)
  br label %76

62:                                               ; preds = %29
  %63 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %64 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %65 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %64, i32 0, i32 2
  %66 = load %struct.et_occ*, %struct.et_occ** %65, align 8
  %67 = call i32 @set_next(%struct.et_occ* %63, %struct.et_occ* %66)
  %68 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %69 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %70 = call i32 @set_prev(%struct.et_occ* %68, %struct.et_occ* %69)
  %71 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %72 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %71, i32 0, i32 1
  %73 = load %struct.et_occ*, %struct.et_occ** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @set_depth_add(%struct.et_occ* %73, i32 %74)
  br label %76

76:                                               ; preds = %62, %48
  %77 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 0, %78
  %80 = call i32 @set_depth(%struct.et_occ* %77, i32 %79)
  %81 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %82 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %81, i32 0, i32 3
  store %struct.et_occ* null, %struct.et_occ** %82, align 8
  %83 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %84 = call i32 @et_recomp_min(%struct.et_occ* %83)
  br label %300

85:                                               ; preds = %14
  %86 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %87 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %8, align 4
  %89 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %90, %91
  %93 = call i32 @set_depth_add(%struct.et_occ* %89, i32 %92)
  %94 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %95 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %98 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %100 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %103 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %105 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %104, i32 0, i32 3
  %106 = load %struct.et_occ*, %struct.et_occ** %105, align 8
  store %struct.et_occ* %106, %struct.et_occ** %5, align 8
  %107 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %108 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %107, i32 0, i32 2
  %109 = load %struct.et_occ*, %struct.et_occ** %108, align 8
  %110 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %111 = icmp eq %struct.et_occ* %109, %110
  br i1 %111, label %112, label %193

112:                                              ; preds = %85
  %113 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %114 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %113, i32 0, i32 2
  %115 = load %struct.et_occ*, %struct.et_occ** %114, align 8
  %116 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %117 = icmp eq %struct.et_occ* %115, %116
  br i1 %117, label %118, label %153

118:                                              ; preds = %112
  %119 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %120 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %121 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %120, i32 0, i32 1
  %122 = load %struct.et_occ*, %struct.et_occ** %121, align 8
  %123 = call i32 @set_prev(%struct.et_occ* %119, %struct.et_occ* %122)
  %124 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %125 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %126 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %125, i32 0, i32 1
  %127 = load %struct.et_occ*, %struct.et_occ** %126, align 8
  %128 = call i32 @set_prev(%struct.et_occ* %124, %struct.et_occ* %127)
  %129 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %130 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %131 = call i32 @set_next(%struct.et_occ* %129, %struct.et_occ* %130)
  %132 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %133 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %134 = call i32 @set_next(%struct.et_occ* %132, %struct.et_occ* %133)
  %135 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sub nsw i32 0, %136
  %138 = call i32 @set_depth(%struct.et_occ* %135, i32 %137)
  %139 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %140 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %139, i32 0, i32 2
  %141 = load %struct.et_occ*, %struct.et_occ** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @set_depth_add(%struct.et_occ* %141, i32 %142)
  %144 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sub nsw i32 0, %145
  %147 = call i32 @set_depth(%struct.et_occ* %144, i32 %146)
  %148 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %149 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %148, i32 0, i32 2
  %150 = load %struct.et_occ*, %struct.et_occ** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @set_depth_add(%struct.et_occ* %150, i32 %151)
  br label %192

153:                                              ; preds = %112
  %154 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %155 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %156 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %155, i32 0, i32 1
  %157 = load %struct.et_occ*, %struct.et_occ** %156, align 8
  %158 = call i32 @set_prev(%struct.et_occ* %154, %struct.et_occ* %157)
  %159 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %160 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %161 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %160, i32 0, i32 2
  %162 = load %struct.et_occ*, %struct.et_occ** %161, align 8
  %163 = call i32 @set_next(%struct.et_occ* %159, %struct.et_occ* %162)
  %164 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %165 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %166 = call i32 @set_prev(%struct.et_occ* %164, %struct.et_occ* %165)
  %167 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %168 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %169 = call i32 @set_next(%struct.et_occ* %167, %struct.et_occ* %168)
  %170 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sub nsw i32 0, %171
  %173 = call i32 @set_depth(%struct.et_occ* %170, i32 %172)
  %174 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %175 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %174, i32 0, i32 1
  %176 = load %struct.et_occ*, %struct.et_occ** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @set_depth_add(%struct.et_occ* %176, i32 %177)
  %179 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sub nsw i32 0, %180
  %182 = load i32, i32* %7, align 4
  %183 = sub nsw i32 %181, %182
  %184 = call i32 @set_depth(%struct.et_occ* %179, i32 %183)
  %185 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %186 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %185, i32 0, i32 2
  %187 = load %struct.et_occ*, %struct.et_occ** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %188, %189
  %191 = call i32 @set_depth_add(%struct.et_occ* %187, i32 %190)
  br label %192

192:                                              ; preds = %153, %118
  br label %274

193:                                              ; preds = %85
  %194 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %195 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %194, i32 0, i32 2
  %196 = load %struct.et_occ*, %struct.et_occ** %195, align 8
  %197 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %198 = icmp eq %struct.et_occ* %196, %197
  br i1 %198, label %199, label %238

199:                                              ; preds = %193
  %200 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %201 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %202 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %201, i32 0, i32 2
  %203 = load %struct.et_occ*, %struct.et_occ** %202, align 8
  %204 = call i32 @set_next(%struct.et_occ* %200, %struct.et_occ* %203)
  %205 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %206 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %207 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %206, i32 0, i32 1
  %208 = load %struct.et_occ*, %struct.et_occ** %207, align 8
  %209 = call i32 @set_prev(%struct.et_occ* %205, %struct.et_occ* %208)
  %210 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %211 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %212 = call i32 @set_prev(%struct.et_occ* %210, %struct.et_occ* %211)
  %213 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %214 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %215 = call i32 @set_next(%struct.et_occ* %213, %struct.et_occ* %214)
  %216 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sub nsw i32 0, %217
  %219 = call i32 @set_depth(%struct.et_occ* %216, i32 %218)
  %220 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %221 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %220, i32 0, i32 2
  %222 = load %struct.et_occ*, %struct.et_occ** %221, align 8
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @set_depth_add(%struct.et_occ* %222, i32 %223)
  %225 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %226 = load i32, i32* %6, align 4
  %227 = sub nsw i32 0, %226
  %228 = load i32, i32* %7, align 4
  %229 = sub nsw i32 %227, %228
  %230 = call i32 @set_depth(%struct.et_occ* %225, i32 %229)
  %231 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %232 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %231, i32 0, i32 1
  %233 = load %struct.et_occ*, %struct.et_occ** %232, align 8
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* %7, align 4
  %236 = add nsw i32 %234, %235
  %237 = call i32 @set_depth_add(%struct.et_occ* %233, i32 %236)
  br label %273

238:                                              ; preds = %193
  %239 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %240 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %241 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %240, i32 0, i32 2
  %242 = load %struct.et_occ*, %struct.et_occ** %241, align 8
  %243 = call i32 @set_next(%struct.et_occ* %239, %struct.et_occ* %242)
  %244 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %245 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %246 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %245, i32 0, i32 2
  %247 = load %struct.et_occ*, %struct.et_occ** %246, align 8
  %248 = call i32 @set_next(%struct.et_occ* %244, %struct.et_occ* %247)
  %249 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %250 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %251 = call i32 @set_prev(%struct.et_occ* %249, %struct.et_occ* %250)
  %252 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %253 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %254 = call i32 @set_prev(%struct.et_occ* %252, %struct.et_occ* %253)
  %255 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %256 = load i32, i32* %6, align 4
  %257 = sub nsw i32 0, %256
  %258 = call i32 @set_depth(%struct.et_occ* %255, i32 %257)
  %259 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %260 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %259, i32 0, i32 1
  %261 = load %struct.et_occ*, %struct.et_occ** %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @set_depth_add(%struct.et_occ* %261, i32 %262)
  %264 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %265 = load i32, i32* %7, align 4
  %266 = sub nsw i32 0, %265
  %267 = call i32 @set_depth(%struct.et_occ* %264, i32 %266)
  %268 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %269 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %268, i32 0, i32 1
  %270 = load %struct.et_occ*, %struct.et_occ** %269, align 8
  %271 = load i32, i32* %7, align 4
  %272 = call i32 @set_depth_add(%struct.et_occ* %270, i32 %271)
  br label %273

273:                                              ; preds = %238, %199
  br label %274

274:                                              ; preds = %273, %192
  %275 = load %struct.et_occ*, %struct.et_occ** %5, align 8
  %276 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %277 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %276, i32 0, i32 3
  store %struct.et_occ* %275, %struct.et_occ** %277, align 8
  %278 = load %struct.et_occ*, %struct.et_occ** %5, align 8
  %279 = icmp ne %struct.et_occ* %278, null
  br i1 %279, label %280, label %295

280:                                              ; preds = %274
  %281 = load %struct.et_occ*, %struct.et_occ** %5, align 8
  %282 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %281, i32 0, i32 2
  %283 = load %struct.et_occ*, %struct.et_occ** %282, align 8
  %284 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %285 = icmp eq %struct.et_occ* %283, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %280
  %287 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %288 = load %struct.et_occ*, %struct.et_occ** %5, align 8
  %289 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %288, i32 0, i32 2
  store %struct.et_occ* %287, %struct.et_occ** %289, align 8
  br label %294

290:                                              ; preds = %280
  %291 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %292 = load %struct.et_occ*, %struct.et_occ** %5, align 8
  %293 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %292, i32 0, i32 1
  store %struct.et_occ* %291, %struct.et_occ** %293, align 8
  br label %294

294:                                              ; preds = %290, %286
  br label %295

295:                                              ; preds = %294, %274
  %296 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %297 = call i32 @et_recomp_min(%struct.et_occ* %296)
  %298 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %299 = call i32 @et_recomp_min(%struct.et_occ* %298)
  br label %9

300:                                              ; preds = %76, %9
  ret void
}

declare dso_local i32 @set_depth_add(%struct.et_occ*, i32) #1

declare dso_local i32 @set_prev(%struct.et_occ*, %struct.et_occ*) #1

declare dso_local i32 @set_next(%struct.et_occ*, %struct.et_occ*) #1

declare dso_local i32 @set_depth(%struct.et_occ*, i32) #1

declare dso_local i32 @et_recomp_min(%struct.et_occ*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
