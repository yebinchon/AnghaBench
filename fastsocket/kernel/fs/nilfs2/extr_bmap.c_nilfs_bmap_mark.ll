; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_mark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_bmap_mark(%struct.nilfs_bmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %10 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.nilfs_bmap*, i32, i32)**
  %14 = load i32 (%struct.nilfs_bmap*, i32, i32)*, i32 (%struct.nilfs_bmap*, i32, i32)** %13, align 8
  %15 = icmp eq i32 (%struct.nilfs_bmap*, i32, i32)* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %19 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %18, i32 0, i32 0
  %20 = call i32 @down_write(i32* %19)
  %21 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %22 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.nilfs_bmap*, i32, i32)**
  %26 = load i32 (%struct.nilfs_bmap*, i32, i32)*, i32 (%struct.nilfs_bmap*, i32, i32)** %25, align 8
  %27 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 %26(%struct.nilfs_bmap* %27, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %32 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %31, i32 0, i32 0
  %33 = call i32 @up_write(i32* %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %17, %16
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
