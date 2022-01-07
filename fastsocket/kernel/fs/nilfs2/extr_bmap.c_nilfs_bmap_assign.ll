; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_assign.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.buffer_head = type { i32 }
%union.nilfs_binfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_bmap_assign(%struct.nilfs_bmap* %0, %struct.buffer_head** %1, i64 %2, %union.nilfs_binfo* %3) #0 {
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca %struct.buffer_head**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.nilfs_binfo*, align 8
  %9 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %6, align 8
  store i64 %2, i64* %7, align 8
  store %union.nilfs_binfo* %3, %union.nilfs_binfo** %8, align 8
  %10 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %11 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %10, i32 0, i32 0
  %12 = call i32 @down_write(i32* %11)
  %13 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %14 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.nilfs_bmap*, %struct.buffer_head**, i64, %union.nilfs_binfo*)**
  %18 = load i32 (%struct.nilfs_bmap*, %struct.buffer_head**, i64, %union.nilfs_binfo*)*, i32 (%struct.nilfs_bmap*, %struct.buffer_head**, i64, %union.nilfs_binfo*)** %17, align 8
  %19 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %20 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %union.nilfs_binfo*, %union.nilfs_binfo** %8, align 8
  %23 = call i32 %18(%struct.nilfs_bmap* %19, %struct.buffer_head** %20, i64 %21, %union.nilfs_binfo* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %25 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %24, i32 0, i32 0
  %26 = call i32 @up_write(i32* %25)
  %27 = load i32, i32* %9, align 4
  ret i32 %27
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
