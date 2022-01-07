; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.ubifs_inode = type { %struct.inode, i32, i32 }

@ubifs_inode_slab = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @ubifs_alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @ubifs_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ubifs_inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @ubifs_inode_slab, align 4
  %6 = load i32, i32* @GFP_NOFS, align 4
  %7 = call %struct.ubifs_inode* @kmem_cache_alloc(i32 %5, i32 %6)
  store %struct.ubifs_inode* %7, %struct.ubifs_inode** %4, align 8
  %8 = load %struct.ubifs_inode*, %struct.ubifs_inode** %4, align 8
  %9 = icmp ne %struct.ubifs_inode* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.ubifs_inode*, %struct.ubifs_inode** %4, align 8
  %13 = bitcast %struct.ubifs_inode* %12 to i8*
  %14 = getelementptr i8, i8* %13, i64 4
  %15 = call i32 @memset(i8* %14, i32 0, i32 8)
  %16 = load %struct.ubifs_inode*, %struct.ubifs_inode** %4, align 8
  %17 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %16, i32 0, i32 2
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.ubifs_inode*, %struct.ubifs_inode** %4, align 8
  %20 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.ubifs_inode*, %struct.ubifs_inode** %4, align 8
  %23 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %22, i32 0, i32 0
  store %struct.inode* %23, %struct.inode** %2, align 8
  br label %24

24:                                               ; preds = %11, %10
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %25
}

declare dso_local %struct.ubifs_inode* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
