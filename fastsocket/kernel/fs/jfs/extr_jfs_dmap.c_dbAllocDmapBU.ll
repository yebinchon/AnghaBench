; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbAllocDmapBU.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbAllocDmapBU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmap = type { i32, i32, i32*, i32 }
%struct.dmap = type { i32, i32*, i32 }
%struct.dmaptree = type { i64* }

@ROOT = common dso_local global i64 0, align 8
@LEAFIND = common dso_local global i32 0, align 4
@BPERDMAP = common dso_local global i32 0, align 4
@L2DBWORD = common dso_local global i32 0, align 4
@DBWORD = common dso_local global i32 0, align 4
@ONES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmap*, %struct.dmap*, i32, i32)* @dbAllocDmapBU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbAllocDmapBU(%struct.bmap* %0, %struct.dmap* %1, i32 %2, i32 %3) #0 {
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
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca %struct.dmaptree*, align 8
  store %struct.bmap* %0, %struct.bmap** %6, align 8
  store %struct.dmap* %1, %struct.dmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.dmap*, %struct.dmap** %7, align 8
  %22 = getelementptr inbounds %struct.dmap, %struct.dmap* %21, i32 0, i32 2
  %23 = bitcast i32* %22 to %struct.dmaptree*
  store %struct.dmaptree* %23, %struct.dmaptree** %20, align 8
  %24 = load %struct.dmaptree*, %struct.dmaptree** %20, align 8
  %25 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @ROOT, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %18, align 8
  %30 = load %struct.dmaptree*, %struct.dmaptree** %20, align 8
  %31 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* @LEAFIND, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64* %35, i64** %19, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @BPERDMAP, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %36, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @L2DBWORD, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* @BPERDMAP, align 4
  %47 = icmp sle i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %107, %4
  %52 = load i32, i32* %13, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %114

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @DBWORD, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @DBWORD, align 4
  %61 = load i32, i32* %16, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 @min(i32 %59, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @DBWORD, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %54
  %68 = load i32, i32* @ONES, align 4
  %69 = load i32, i32* @DBWORD, align 4
  %70 = load i32, i32* %14, align 4
  %71 = sub nsw i32 %69, %70
  %72 = shl i32 %68, %71
  %73 = load i32, i32* %16, align 4
  %74 = ashr i32 %72, %73
  %75 = call i32 @cpu_to_le32(i32 %74)
  %76 = load %struct.dmap*, %struct.dmap** %7, align 8
  %77 = getelementptr inbounds %struct.dmap, %struct.dmap* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %75
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %106

86:                                               ; preds = %54
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @L2DBWORD, align 4
  %89 = ashr i32 %87, %88
  store i32 %89, i32* %15, align 4
  %90 = load %struct.dmap*, %struct.dmap** %7, align 8
  %91 = getelementptr inbounds %struct.dmap, %struct.dmap* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* @ONES, align 4
  %97 = load i32, i32* %15, align 4
  %98 = mul nsw i32 %97, 4
  %99 = call i32 @memset(i32* %95, i32 %96, i32 %98)
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @L2DBWORD, align 4
  %102 = shl i32 %100, %101
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %86, %67
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %13, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %11, align 4
  br label %51

114:                                              ; preds = %51
  %115 = load %struct.dmap*, %struct.dmap** %7, align 8
  %116 = getelementptr inbounds %struct.dmap, %struct.dmap* %115, i32 0, i32 0
  %117 = load i32, i32* %9, align 4
  %118 = sub nsw i32 0, %117
  %119 = call i32 @le32_add_cpu(i32* %116, i32 %118)
  %120 = load %struct.dmap*, %struct.dmap** %7, align 8
  %121 = call i32 @dbInitDmapTree(%struct.dmap* %120)
  %122 = load %struct.bmap*, %struct.bmap** %6, align 8
  %123 = call i32 @BMAP_LOCK(%struct.bmap* %122)
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.bmap*, %struct.bmap** %6, align 8
  %126 = getelementptr inbounds %struct.bmap, %struct.bmap* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = ashr i32 %124, %127
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load %struct.bmap*, %struct.bmap** %6, align 8
  %131 = getelementptr inbounds %struct.bmap, %struct.bmap* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %129, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %114
  %135 = load i32, i32* %17, align 4
  %136 = load %struct.bmap*, %struct.bmap** %6, align 8
  %137 = getelementptr inbounds %struct.bmap, %struct.bmap* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %134, %114
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.bmap*, %struct.bmap** %6, align 8
  %141 = getelementptr inbounds %struct.bmap, %struct.bmap* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, %139
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.bmap*, %struct.bmap** %6, align 8
  %150 = getelementptr inbounds %struct.bmap, %struct.bmap* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load %struct.bmap*, %struct.bmap** %6, align 8
  %154 = call i32 @BMAP_UNLOCK(%struct.bmap* %153)
  %155 = load %struct.dmaptree*, %struct.dmaptree** %20, align 8
  %156 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = load i64, i64* @ROOT, align 8
  %159 = getelementptr inbounds i64, i64* %157, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %18, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %183

164:                                              ; preds = %138
  %165 = load %struct.bmap*, %struct.bmap** %6, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.dmaptree*, %struct.dmaptree** %20, align 8
  %168 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = load i64, i64* @ROOT, align 8
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @dbAdjCtl(%struct.bmap* %165, i32 %166, i64 %172, i32 1, i32 0)
  store i32 %173, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %164
  %176 = load %struct.bmap*, %struct.bmap** %6, align 8
  %177 = load %struct.dmap*, %struct.dmap** %7, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @dbFreeBits(%struct.bmap* %176, %struct.dmap* %177, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %175, %164
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %181, %163
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @dbInitDmapTree(%struct.dmap*) #1

declare dso_local i32 @BMAP_LOCK(%struct.bmap*) #1

declare dso_local i32 @BMAP_UNLOCK(%struct.bmap*) #1

declare dso_local i32 @dbAdjCtl(%struct.bmap*, i32, i64, i32, i32) #1

declare dso_local i32 @dbFreeBits(%struct.bmap*, %struct.dmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
