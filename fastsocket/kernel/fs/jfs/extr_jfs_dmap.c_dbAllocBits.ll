; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbAllocBits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbAllocBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmap = type { i32, i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dmap = type { i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@LEAFIND = common dso_local global i32 0, align 4
@BPERDMAP = common dso_local global i32 0, align 4
@L2DBWORD = common dso_local global i32 0, align 4
@DBWORD = common dso_local global i32 0, align 4
@ONES = common dso_local global i32 0, align 4
@BUDMIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"dbAllocBits: leaf page corrupt\00", align 1
@NOFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bmap*, %struct.dmap*, i32, i32)* @dbAllocBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbAllocBits(%struct.bmap* %0, %struct.dmap* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bmap*, align 8
  %6 = alloca %struct.dmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  store %struct.bmap* %0, %struct.bmap** %5, align 8
  store %struct.dmap* %1, %struct.dmap** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load %struct.dmap*, %struct.dmap** %6, align 8
  %21 = getelementptr inbounds %struct.dmap, %struct.dmap* %20, i32 0, i32 2
  %22 = bitcast %struct.TYPE_3__* %21 to i32*
  store i32* %22, i32** %17, align 8
  %23 = load %struct.dmap*, %struct.dmap** %6, align 8
  %24 = getelementptr inbounds %struct.dmap, %struct.dmap* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* @LEAFIND, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64* %29, i64** %19, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @BPERDMAP, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %30, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @L2DBWORD, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* @BPERDMAP, align 4
  %41 = icmp sle i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %154, %4
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %161

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @DBWORD, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %49, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @DBWORD, align 4
  %55 = load i32, i32* %14, align 4
  %56 = sub nsw i32 %54, %55
  %57 = call i32 @min(i32 %53, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @DBWORD, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %48
  %62 = load i32, i32* @ONES, align 4
  %63 = load i32, i32* @DBWORD, align 4
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 %63, %64
  %66 = shl i32 %62, %65
  %67 = load i32, i32* %14, align 4
  %68 = ashr i32 %66, %67
  %69 = call i32 @cpu_to_le32(i32 %68)
  %70 = load %struct.dmap*, %struct.dmap** %6, align 8
  %71 = getelementptr inbounds %struct.dmap, %struct.dmap* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %69
  store i32 %77, i32* %75, align 4
  %78 = load i32*, i32** %17, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i64, i64* @BUDMIN, align 8
  %81 = trunc i64 %80 to i32
  %82 = load %struct.dmap*, %struct.dmap** %6, align 8
  %83 = getelementptr inbounds %struct.dmap, %struct.dmap* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @dbMaxBud(i32* %87)
  %89 = call i32 @dbSplit(i32* %78, i32 %79, i32 %81, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %153

92:                                               ; preds = %48
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @L2DBWORD, align 4
  %95 = ashr i32 %93, %94
  store i32 %95, i32* %13, align 4
  %96 = load %struct.dmap*, %struct.dmap** %6, align 8
  %97 = getelementptr inbounds %struct.dmap, %struct.dmap* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* @ONES, align 4
  %103 = load i32, i32* %13, align 4
  %104 = mul nsw i32 %103, 4
  %105 = call i32 @memset(i32* %101, i32 %102, i32 %104)
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @L2DBWORD, align 4
  %108 = shl i32 %106, %107
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %148, %92
  %110 = load i32, i32* %13, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %152

112:                                              ; preds = %109
  %113 = load i64*, i64** %19, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @BUDMIN, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %112
  %121 = load %struct.bmap*, %struct.bmap** %5, align 8
  %122 = getelementptr inbounds %struct.bmap, %struct.bmap* %121, i32 0, i32 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @jfs_error(i32 %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %152

127:                                              ; preds = %112
  %128 = load i64*, i64** %19, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @NLSTOL2BSZ(i32 %134)
  %136 = call i32 @min(i32 %133, i32 %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32*, i32** %17, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* @NOFREE, align 4
  %141 = call i32 @dbSplit(i32* %137, i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %18, align 4
  %143 = load i64, i64* @BUDMIN, align 8
  %144 = call i32 @BUDSIZE(i32 %142, i64 %143)
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %127
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %13, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %13, align 4
  br label %109

152:                                              ; preds = %120, %109
  br label %153

153:                                              ; preds = %152, %61
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %11, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %9, align 4
  br label %45

161:                                              ; preds = %45
  %162 = load %struct.dmap*, %struct.dmap** %6, align 8
  %163 = getelementptr inbounds %struct.dmap, %struct.dmap* %162, i32 0, i32 0
  %164 = load i32, i32* %8, align 4
  %165 = sub nsw i32 0, %164
  %166 = call i32 @le32_add_cpu(i32* %163, i32 %165)
  %167 = load %struct.bmap*, %struct.bmap** %5, align 8
  %168 = call i32 @BMAP_LOCK(%struct.bmap* %167)
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.bmap*, %struct.bmap** %5, align 8
  %171 = getelementptr inbounds %struct.bmap, %struct.bmap* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = ashr i32 %169, %172
  store i32 %173, i32* %16, align 4
  %174 = load i32, i32* %16, align 4
  %175 = load %struct.bmap*, %struct.bmap** %5, align 8
  %176 = getelementptr inbounds %struct.bmap, %struct.bmap* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp sgt i32 %174, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %161
  %180 = load i32, i32* %16, align 4
  %181 = load %struct.bmap*, %struct.bmap** %5, align 8
  %182 = getelementptr inbounds %struct.bmap, %struct.bmap* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %179, %161
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.bmap*, %struct.bmap** %5, align 8
  %186 = getelementptr inbounds %struct.bmap, %struct.bmap* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %191, %184
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.bmap*, %struct.bmap** %5, align 8
  %195 = getelementptr inbounds %struct.bmap, %struct.bmap* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load %struct.bmap*, %struct.bmap** %5, align 8
  %199 = call i32 @BMAP_UNLOCK(%struct.bmap* %198)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dbSplit(i32*, i32, i32, i32) #1

declare dso_local i32 @dbMaxBud(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @NLSTOL2BSZ(i32) #1

declare dso_local i32 @BUDSIZE(i32, i64) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @BMAP_LOCK(%struct.bmap*) #1

declare dso_local i32 @BMAP_UNLOCK(%struct.bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
