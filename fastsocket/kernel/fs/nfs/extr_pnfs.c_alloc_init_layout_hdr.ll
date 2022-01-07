; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_alloc_init_layout_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_alloc_init_layout_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32, %struct.inode*, i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.nfs_open_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pnfs_layout_hdr* (%struct.inode*, %struct.nfs_open_context*, i32)* @alloc_init_layout_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pnfs_layout_hdr* @alloc_init_layout_hdr(%struct.inode* %0, %struct.nfs_open_context* %1, i32 %2) #0 {
  %4 = alloca %struct.pnfs_layout_hdr*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs_open_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pnfs_layout_hdr*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.pnfs_layout_hdr* @pnfs_alloc_layout_hdr(%struct.inode* %9, i32 %10)
  store %struct.pnfs_layout_hdr* %11, %struct.pnfs_layout_hdr** %8, align 8
  %12 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %13 = icmp ne %struct.pnfs_layout_hdr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.pnfs_layout_hdr* null, %struct.pnfs_layout_hdr** %4, align 8
  br label %42

15:                                               ; preds = %3
  %16 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %17 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %16, i32 0, i32 5
  %18 = call i32 @atomic_set(i32* %17, i32 1)
  %19 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %20 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %19, i32 0, i32 4
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %23 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %22, i32 0, i32 3
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %26 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %25, i32 0, i32 2
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %30 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %29, i32 0, i32 1
  store %struct.inode* %28, %struct.inode** %30, align 8
  %31 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %32 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @get_rpccred(i32 %37)
  %39 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %40 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  store %struct.pnfs_layout_hdr* %41, %struct.pnfs_layout_hdr** %4, align 8
  br label %42

42:                                               ; preds = %15, %14
  %43 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  ret %struct.pnfs_layout_hdr* %43
}

declare dso_local %struct.pnfs_layout_hdr* @pnfs_alloc_layout_hdr(%struct.inode*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_rpccred(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
