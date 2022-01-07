; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_put_lseg_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_put_lseg_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_segment = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NFS_LSEG_VALID = common dso_local global i32 0, align 4
@NFS_LAYOUT_DESTROYED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnfs_layout_segment*)* @put_lseg_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_lseg_common(%struct.pnfs_layout_segment* %0) #0 {
  %2 = alloca %struct.pnfs_layout_segment*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %2, align 8
  %4 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %2, align 8
  %5 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %8, %struct.inode** %3, align 8
  %9 = load i32, i32* @NFS_LSEG_VALID, align 4
  %10 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %2, align 8
  %11 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %10, i32 0, i32 2
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %2, align 8
  %15 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %14, i32 0, i32 1
  %16 = call i32 @list_del_init(i32* %15)
  %17 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %2, align 8
  %18 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = call i64 @list_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load i32, i32* @NFS_LAYOUT_DESTROYED, align 4
  %25 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %2, align 8
  %26 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %24, i32* %28)
  %30 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %2, align 8
  %31 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32 @pnfs_put_layout_hdr_locked(%struct.TYPE_3__* %32)
  br label %34

34:                                               ; preds = %23, %1
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = call %struct.TYPE_4__* @NFS_SERVER(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @rpc_wake_up(i32* %37)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pnfs_put_layout_hdr_locked(%struct.TYPE_3__*) #1

declare dso_local i32 @rpc_wake_up(i32*) #1

declare dso_local %struct.TYPE_4__* @NFS_SERVER(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
