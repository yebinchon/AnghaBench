; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_propagate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_bmap_propagate(%struct.nilfs_bmap* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.nilfs_bmap*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %6 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %7 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %6, i32 0, i32 0
  %8 = call i32 @down_write(i32* %7)
  %9 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %10 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.nilfs_bmap*, %struct.buffer_head*)**
  %14 = load i32 (%struct.nilfs_bmap*, %struct.buffer_head*)*, i32 (%struct.nilfs_bmap*, %struct.buffer_head*)** %13, align 8
  %15 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %17 = call i32 %14(%struct.nilfs_bmap* %15, %struct.buffer_head* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %19 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %18, i32 0, i32 0
  %20 = call i32 @up_write(i32* %19)
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
