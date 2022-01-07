; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_get_new_inode_fast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_get_new_inode_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.super_block = type { i32 }
%struct.hlist_head = type { i32 }

@inode_lock = common dso_local global i32 0, align 4
@I_LOCK = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.hlist_head*, i64)* @get_new_inode_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @get_new_inode_fast(%struct.super_block* %0, %struct.hlist_head* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.hlist_head* %1, %struct.hlist_head** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.inode* @alloc_inode(%struct.super_block* %10)
  store %struct.inode* %11, %struct.inode** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %8, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %14, label %46

14:                                               ; preds = %3
  %15 = call i32 @spin_lock(i32* @inode_lock)
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.inode* @find_inode_fast(%struct.super_block* %16, %struct.hlist_head* %17, i64 %18)
  store %struct.inode* %19, %struct.inode** %9, align 8
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = icmp ne %struct.inode* %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call i32 @__inode_add_to_lists(%struct.super_block* %26, %struct.hlist_head* %27, %struct.inode* %28)
  %30 = load i32, i32* @I_LOCK, align 4
  %31 = load i32, i32* @I_NEW, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = call i32 @spin_unlock(i32* @inode_lock)
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %36, %struct.inode** %4, align 8
  br label %48

37:                                               ; preds = %14
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = call i32 @__iget(%struct.inode* %38)
  %40 = call i32 @spin_unlock(i32* @inode_lock)
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = call i32 @destroy_inode(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %43, %struct.inode** %8, align 8
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = call i32 @wait_on_inode(%struct.inode* %44)
  br label %46

46:                                               ; preds = %37, %3
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %47, %struct.inode** %4, align 8
  br label %48

48:                                               ; preds = %46, %22
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %49
}

declare dso_local %struct.inode* @alloc_inode(%struct.super_block*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @find_inode_fast(%struct.super_block*, %struct.hlist_head*, i64) #1

declare dso_local i32 @__inode_add_to_lists(%struct.super_block*, %struct.hlist_head*, %struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__iget(%struct.inode*) #1

declare dso_local i32 @destroy_inode(%struct.inode*) #1

declare dso_local i32 @wait_on_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
