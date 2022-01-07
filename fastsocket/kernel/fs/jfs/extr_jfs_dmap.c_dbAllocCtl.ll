; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbAllocCtl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbAllocCtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmap = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.metapage = type { i64 }
%struct.dmap = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@L2BPERDMAP = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BPERDMAP = common dso_local global i32 0, align 4
@ROOT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"dbAllocCtl: the dmap is not all free\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"dbAllocCtl: I/O Error: Block Leakage.\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"dbAllocCtl: Block Leakage.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmap*, i32, i32, i32, i32*)* @dbAllocCtl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbAllocCtl(%struct.bmap* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.metapage*, align 8
  %18 = alloca %struct.dmap*, align 8
  store %struct.bmap* %0, %struct.bmap** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @L2BPERDMAP, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.bmap*, %struct.bmap** %7, align 8
  %25 = getelementptr inbounds %struct.bmap, %struct.bmap* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @BLKTODMAP(i32 %23, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load %struct.bmap*, %struct.bmap** %7, align 8
  %29 = getelementptr inbounds %struct.bmap, %struct.bmap* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @PSIZE, align 4
  %33 = call %struct.metapage* @read_metapage(%struct.TYPE_4__* %30, i32 %31, i32 %32, i32 0)
  store %struct.metapage* %33, %struct.metapage** %17, align 8
  %34 = load %struct.metapage*, %struct.metapage** %17, align 8
  %35 = icmp eq %struct.metapage* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %201

39:                                               ; preds = %22
  %40 = load %struct.metapage*, %struct.metapage** %17, align 8
  %41 = getelementptr inbounds %struct.metapage, %struct.metapage* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.dmap*
  store %struct.dmap* %43, %struct.dmap** %18, align 8
  %44 = load %struct.bmap*, %struct.bmap** %7, align 8
  %45 = load %struct.dmap*, %struct.dmap** %18, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @dbAllocDmapLev(%struct.bmap* %44, %struct.dmap* %45, i32 %46, i32 %47, i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load %struct.metapage*, %struct.metapage** %17, align 8
  %54 = call i32 @mark_metapage_dirty(%struct.metapage* %53)
  br label %55

55:                                               ; preds = %52, %39
  %56 = load %struct.metapage*, %struct.metapage** %17, align 8
  %57 = call i32 @release_metapage(%struct.metapage* %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %201

59:                                               ; preds = %5
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @BPERDMAP, align 4
  %62 = sub nsw i32 %61, 1
  %63 = and i32 %60, %62
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %130, %59
  %70 = load i32, i32* %16, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %137

72:                                               ; preds = %69
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.bmap*, %struct.bmap** %7, align 8
  %75 = getelementptr inbounds %struct.bmap, %struct.bmap* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @BLKTODMAP(i32 %73, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load %struct.bmap*, %struct.bmap** %7, align 8
  %79 = getelementptr inbounds %struct.bmap, %struct.bmap* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @PSIZE, align 4
  %83 = call %struct.metapage* @read_metapage(%struct.TYPE_4__* %80, i32 %81, i32 %82, i32 0)
  store %struct.metapage* %83, %struct.metapage** %17, align 8
  %84 = load %struct.metapage*, %struct.metapage** %17, align 8
  %85 = icmp eq %struct.metapage* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %72
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %140

89:                                               ; preds = %72
  %90 = load %struct.metapage*, %struct.metapage** %17, align 8
  %91 = getelementptr inbounds %struct.metapage, %struct.metapage* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.dmap*
  store %struct.dmap* %93, %struct.dmap** %18, align 8
  %94 = load %struct.dmap*, %struct.dmap** %18, align 8
  %95 = getelementptr inbounds %struct.dmap, %struct.dmap* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @ROOT, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @L2BPERDMAP, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %89
  %104 = load %struct.metapage*, %struct.metapage** %17, align 8
  %105 = call i32 @release_metapage(%struct.metapage* %104)
  %106 = load %struct.bmap*, %struct.bmap** %7, align 8
  %107 = getelementptr inbounds %struct.bmap, %struct.bmap* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @jfs_error(i32 %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %12, align 4
  br label %140

114:                                              ; preds = %89
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @BPERDMAP, align 4
  %117 = call i32 @min(i32 %115, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load %struct.bmap*, %struct.bmap** %7, align 8
  %119 = load %struct.dmap*, %struct.dmap** %18, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @dbAllocDmap(%struct.bmap* %118, %struct.dmap* %119, i32 %120, i32 %121)
  store i32 %122, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %114
  %125 = load %struct.metapage*, %struct.metapage** %17, align 8
  %126 = call i32 @release_metapage(%struct.metapage* %125)
  br label %140

127:                                              ; preds = %114
  %128 = load %struct.metapage*, %struct.metapage** %17, align 8
  %129 = call i32 @write_metapage(%struct.metapage* %128)
  br label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %16, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %14, align 4
  br label %69

137:                                              ; preds = %69
  %138 = load i32, i32* %10, align 4
  %139 = load i32*, i32** %11, align 8
  store i32 %138, i32* %139, align 4
  store i32 0, i32* %6, align 4
  br label %201

140:                                              ; preds = %124, %103, %86
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %16, align 4
  %143 = sub nsw i32 %141, %142
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %14, align 4
  br label %145

145:                                              ; preds = %192, %140
  %146 = load i32, i32* %16, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %199

148:                                              ; preds = %145
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.bmap*, %struct.bmap** %7, align 8
  %151 = getelementptr inbounds %struct.bmap, %struct.bmap* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @BLKTODMAP(i32 %149, i32 %152)
  store i32 %153, i32* %15, align 4
  %154 = load %struct.bmap*, %struct.bmap** %7, align 8
  %155 = getelementptr inbounds %struct.bmap, %struct.bmap* %154, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* @PSIZE, align 4
  %159 = call %struct.metapage* @read_metapage(%struct.TYPE_4__* %156, i32 %157, i32 %158, i32 0)
  store %struct.metapage* %159, %struct.metapage** %17, align 8
  %160 = load %struct.metapage*, %struct.metapage** %17, align 8
  %161 = icmp eq %struct.metapage* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %148
  %163 = load %struct.bmap*, %struct.bmap** %7, align 8
  %164 = getelementptr inbounds %struct.bmap, %struct.bmap* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @jfs_error(i32 %167, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %192

169:                                              ; preds = %148
  %170 = load %struct.metapage*, %struct.metapage** %17, align 8
  %171 = getelementptr inbounds %struct.metapage, %struct.metapage* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to %struct.dmap*
  store %struct.dmap* %173, %struct.dmap** %18, align 8
  %174 = load %struct.bmap*, %struct.bmap** %7, align 8
  %175 = load %struct.dmap*, %struct.dmap** %18, align 8
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* @BPERDMAP, align 4
  %178 = call i64 @dbFreeDmap(%struct.bmap* %174, %struct.dmap* %175, i32 %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %169
  %181 = load %struct.metapage*, %struct.metapage** %17, align 8
  %182 = call i32 @release_metapage(%struct.metapage* %181)
  %183 = load %struct.bmap*, %struct.bmap** %7, align 8
  %184 = getelementptr inbounds %struct.bmap, %struct.bmap* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @jfs_error(i32 %187, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %192

189:                                              ; preds = %169
  %190 = load %struct.metapage*, %struct.metapage** %17, align 8
  %191 = call i32 @write_metapage(%struct.metapage* %190)
  br label %192

192:                                              ; preds = %189, %180, %162
  %193 = load i32, i32* @BPERDMAP, align 4
  %194 = load i32, i32* %16, align 4
  %195 = sub nsw i32 %194, %193
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* @BPERDMAP, align 4
  %197 = load i32, i32* %14, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %14, align 4
  br label %145

199:                                              ; preds = %145
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %199, %137, %55, %36
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @BLKTODMAP(i32, i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @dbAllocDmapLev(%struct.bmap*, %struct.dmap*, i32, i32, i32*) #1

declare dso_local i32 @mark_metapage_dirty(%struct.metapage*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dbAllocDmap(%struct.bmap*, %struct.dmap*, i32, i32) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

declare dso_local i64 @dbFreeDmap(%struct.bmap*, %struct.dmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
