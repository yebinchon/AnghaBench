; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c___inode_add_to_lists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c___inode_add_to_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.super_block = type { i32 }
%struct.hlist_head = type { i32 }
%struct.inode = type { i32, i32, i32 }

@inodes_stat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@inode_in_use = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.hlist_head*, %struct.inode*)* @__inode_add_to_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__inode_add_to_lists(%struct.super_block* %0, %struct.hlist_head* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.hlist_head*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.hlist_head* %1, %struct.hlist_head** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inodes_stat, i32 0, i32 0), align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inodes_stat, i32 0, i32 0), align 4
  %9 = load %struct.inode*, %struct.inode** %6, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 2
  %11 = call i32 @list_add(i32* %10, i32* @inode_in_use)
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = call i32 @list_add(i32* %13, i32* %15)
  %17 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %18 = icmp ne %struct.hlist_head* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %23 = call i32 @hlist_add_head(i32* %21, %struct.hlist_head* %22)
  br label %24

24:                                               ; preds = %19, %3
  ret void
}

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
