; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbFreeBits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbFreeBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmap = type { i32, i32, i32*, i32, i32, i32, i32, i64 }
%struct.dmap = type { i32, i32*, i32 }

@BPERDMAP = common dso_local global i32 0, align 4
@L2DBWORD = common dso_local global i32 0, align 4
@DBWORD = common dso_local global i32 0, align 4
@ONES = common dso_local global i32 0, align 4
@L2LPERDMAP = common dso_local global i32 0, align 4
@BUDMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmap*, %struct.dmap*, i32, i32)* @dbFreeBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbFreeBits(%struct.bmap* %0, %struct.dmap* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bmap*, align 8
  %7 = alloca %struct.dmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.bmap* %0, %struct.bmap** %6, align 8
  store %struct.dmap* %1, %struct.dmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.dmap*, %struct.dmap** %7, align 8
  %22 = getelementptr inbounds %struct.dmap, %struct.dmap* %21, i32 0, i32 2
  store i32* %22, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @BPERDMAP, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %23, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @L2DBWORD, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* @BPERDMAP, align 4
  %34 = icmp sle i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %137, %4
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %144

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @DBWORD, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %42, %44
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @DBWORD, align 4
  %48 = load i32, i32* %15, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i32 @min(i32 %46, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @DBWORD, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %41
  %55 = load i32, i32* @ONES, align 4
  %56 = load i32, i32* @DBWORD, align 4
  %57 = load i32, i32* %13, align 4
  %58 = sub nsw i32 %56, %57
  %59 = shl i32 %55, %58
  %60 = load i32, i32* %15, align 4
  %61 = ashr i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = load %struct.dmap*, %struct.dmap** %7, align 8
  %65 = getelementptr inbounds %struct.dmap, %struct.dmap* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %63
  store i32 %71, i32* %69, align 4
  %72 = load i32*, i32** %18, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.dmap*, %struct.dmap** %7, align 8
  %75 = getelementptr inbounds %struct.dmap, %struct.dmap* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i32 @dbMaxBud(i32* %79)
  %81 = call i32 @dbJoin(i32* %72, i32 %73, i32 %80)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %54
  %85 = load i32, i32* %19, align 4
  store i32 %85, i32* %5, align 4
  br label %255

86:                                               ; preds = %54
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %136

89:                                               ; preds = %41
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @L2DBWORD, align 4
  %92 = ashr i32 %90, %91
  store i32 %92, i32* %14, align 4
  %93 = load %struct.dmap*, %struct.dmap** %7, align 8
  %94 = getelementptr inbounds %struct.dmap, %struct.dmap* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %14, align 4
  %100 = mul nsw i32 %99, 4
  %101 = call i32 @memset(i32* %98, i32 0, i32 %100)
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @L2DBWORD, align 4
  %104 = shl i32 %102, %103
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %131, %89
  %106 = load i32, i32* %14, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @L2LPERDMAP, align 4
  %111 = load i32, i32* @BUDMIN, align 4
  %112 = call i32 @LITOL2BSZ(i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @NLSTOL2BSZ(i32 %113)
  %115 = call i32 @min(i32 %112, i32 %114)
  store i32 %115, i32* %20, align 4
  %116 = load i32*, i32** %18, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %20, align 4
  %119 = call i32 @dbJoin(i32* %116, i32 %117, i32 %118)
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %108
  %123 = load i32, i32* %19, align 4
  store i32 %123, i32* %5, align 4
  br label %255

124:                                              ; preds = %108
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* @BUDMIN, align 4
  %127 = call i32 @BUDSIZE(i32 %125, i32 %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %124
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %14, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %14, align 4
  br label %105

135:                                              ; preds = %105
  br label %136

136:                                              ; preds = %135, %86
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %12, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %10, align 4
  br label %38

144:                                              ; preds = %38
  %145 = load %struct.dmap*, %struct.dmap** %7, align 8
  %146 = getelementptr inbounds %struct.dmap, %struct.dmap* %145, i32 0, i32 0
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @le32_add_cpu(i32* %146, i32 %147)
  %149 = load %struct.bmap*, %struct.bmap** %6, align 8
  %150 = call i32 @BMAP_LOCK(%struct.bmap* %149)
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.bmap*, %struct.bmap** %6, align 8
  %153 = getelementptr inbounds %struct.bmap, %struct.bmap* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = ashr i32 %151, %154
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.bmap*, %struct.bmap** %6, align 8
  %158 = getelementptr inbounds %struct.bmap, %struct.bmap* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.bmap*, %struct.bmap** %6, align 8
  %163 = getelementptr inbounds %struct.bmap, %struct.bmap* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %161
  store i32 %169, i32* %167, align 4
  %170 = load %struct.bmap*, %struct.bmap** %6, align 8
  %171 = getelementptr inbounds %struct.bmap, %struct.bmap* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.bmap*, %struct.bmap** %6, align 8
  %178 = getelementptr inbounds %struct.bmap, %struct.bmap* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %176, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %144
  %182 = load i32, i32* %17, align 4
  %183 = load %struct.bmap*, %struct.bmap** %6, align 8
  %184 = getelementptr inbounds %struct.bmap, %struct.bmap* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %182, %185
  br i1 %186, label %209, label %187

187:                                              ; preds = %181, %144
  %188 = load i32, i32* %17, align 4
  %189 = load %struct.bmap*, %struct.bmap** %6, align 8
  %190 = getelementptr inbounds %struct.bmap, %struct.bmap* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %191, 1
  %193 = icmp eq i32 %188, %192
  br i1 %193, label %194, label %252

194:                                              ; preds = %187
  %195 = load %struct.bmap*, %struct.bmap** %6, align 8
  %196 = getelementptr inbounds %struct.bmap, %struct.bmap* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %17, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.bmap*, %struct.bmap** %6, align 8
  %203 = getelementptr inbounds %struct.bmap, %struct.bmap* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @BPERDMAP, align 4
  %206 = sub nsw i32 %205, 1
  %207 = and i32 %204, %206
  %208 = icmp eq i32 %201, %207
  br i1 %208, label %209, label %252

209:                                              ; preds = %194, %181
  br label %210

210:                                              ; preds = %234, %209
  %211 = load %struct.bmap*, %struct.bmap** %6, align 8
  %212 = getelementptr inbounds %struct.bmap, %struct.bmap* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %235

215:                                              ; preds = %210
  %216 = load %struct.bmap*, %struct.bmap** %6, align 8
  %217 = getelementptr inbounds %struct.bmap, %struct.bmap* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = sub nsw i32 %218, 1
  store i32 %219, i32* %217, align 4
  %220 = load %struct.bmap*, %struct.bmap** %6, align 8
  %221 = getelementptr inbounds %struct.bmap, %struct.bmap* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.bmap*, %struct.bmap** %6, align 8
  %224 = getelementptr inbounds %struct.bmap, %struct.bmap* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %222, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.bmap*, %struct.bmap** %6, align 8
  %230 = getelementptr inbounds %struct.bmap, %struct.bmap* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %228, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %215
  br label %235

234:                                              ; preds = %215
  br label %210

235:                                              ; preds = %233, %210
  %236 = load %struct.bmap*, %struct.bmap** %6, align 8
  %237 = getelementptr inbounds %struct.bmap, %struct.bmap* %236, i32 0, i32 7
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.bmap*, %struct.bmap** %6, align 8
  %240 = getelementptr inbounds %struct.bmap, %struct.bmap* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = icmp ugt i64 %238, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %235
  %245 = load %struct.bmap*, %struct.bmap** %6, align 8
  %246 = getelementptr inbounds %struct.bmap, %struct.bmap* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = load %struct.bmap*, %struct.bmap** %6, align 8
  %250 = getelementptr inbounds %struct.bmap, %struct.bmap* %249, i32 0, i32 7
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %244, %235
  br label %252

252:                                              ; preds = %251, %194, %187
  %253 = load %struct.bmap*, %struct.bmap** %6, align 8
  %254 = call i32 @BMAP_UNLOCK(%struct.bmap* %253)
  store i32 0, i32* %5, align 4
  br label %255

255:                                              ; preds = %252, %122, %84
  %256 = load i32, i32* %5, align 4
  ret i32 %256
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dbJoin(i32*, i32, i32) #1

declare dso_local i32 @dbMaxBud(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @LITOL2BSZ(i32, i32, i32) #1

declare dso_local i32 @NLSTOL2BSZ(i32) #1

declare dso_local i32 @BUDSIZE(i32, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @BMAP_LOCK(%struct.bmap*) #1

declare dso_local i32 @BMAP_UNLOCK(%struct.bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
