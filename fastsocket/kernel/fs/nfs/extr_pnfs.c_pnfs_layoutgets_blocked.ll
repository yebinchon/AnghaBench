; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_layoutgets_blocked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_layoutgets_blocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NFS_LAYOUT_DESTROYED = common dso_local global i32 0, align 4
@NFS_LAYOUT_BULK_RECALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_hdr*, %struct.TYPE_5__*, i32)* @pnfs_layoutgets_blocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnfs_layoutgets_blocked(%struct.pnfs_layout_hdr* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnfs_layout_hdr*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store %struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_hdr** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @be32_to_cpu(i32 %17)
  %19 = sub nsw i64 %13, %18
  %20 = trunc i64 %19 to i32
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  store i32 1, i32* %4, align 4
  br label %56

23:                                               ; preds = %10, %3
  %24 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @NFS_LAYOUT_DESTROYED, align 4
  %30 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %31 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %30, i32 0, i32 2
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @NFS_LAYOUT_BULK_RECALL, align 4
  %36 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %37 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %36, i32 0, i32 2
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %34
  %41 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %41, i32 0, i32 1
  %43 = call i64 @list_empty(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %47 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %46, i32 0, i32 0
  %48 = call i32 @atomic_read(i32* %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %48, %49
  br label %51

51:                                               ; preds = %45, %40
  %52 = phi i1 [ false, %40 ], [ %50, %45 ]
  br label %53

53:                                               ; preds = %51, %34, %28, %23
  %54 = phi i1 [ true, %34 ], [ true, %28 ], [ true, %23 ], [ %52, %51 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
