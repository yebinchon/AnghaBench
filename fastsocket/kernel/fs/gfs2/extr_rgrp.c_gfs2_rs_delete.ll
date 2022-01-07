; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rs_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rs_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.TYPE_3__*, %struct.inode }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }

@gfs2_rsrv_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_rs_delete(%struct.gfs2_inode* %0) #0 {
  %2 = alloca %struct.gfs2_inode*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %2, align 8
  %4 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %4, i32 0, i32 2
  store %struct.inode* %5, %struct.inode** %3, align 8
  %6 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %7 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %6, i32 0, i32 0
  %8 = call i32 @down_write(i32* %7)
  %9 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %10 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = call i32 @atomic_read(i32* %15)
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @gfs2_rs_deltree(%struct.TYPE_3__* %21)
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %24 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i32, i32* @gfs2_rsrv_cachep, align 4
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32 @kmem_cache_free(i32 %29, %struct.TYPE_3__* %32)
  %34 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %35 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %34, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %35, align 8
  br label %36

36:                                               ; preds = %18, %13, %1
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %38 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %37, i32 0, i32 0
  %39 = call i32 @up_write(i32* %38)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @gfs2_rs_deltree(%struct.TYPE_3__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
