; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_new_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.super_block = type { i32 }

@new_inode.last_ino = internal global i32 0, align 4
@inode_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @new_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = call i32 @spin_lock_prefetch(i32* @inode_lock)
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.inode* @alloc_inode(%struct.super_block* %5)
  store %struct.inode* %6, %struct.inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = icmp ne %struct.inode* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = call i32 @spin_lock(i32* @inode_lock)
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i32 @__inode_add_to_lists(%struct.super_block* %11, i32* null, %struct.inode* %12)
  %14 = load i32, i32* @new_inode.last_ino, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* @new_inode.last_ino, align 4
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = call i32 @spin_unlock(i32* @inode_lock)
  br label %21

21:                                               ; preds = %9, %1
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %22
}

declare dso_local i32 @spin_lock_prefetch(i32*) #1

declare dso_local %struct.inode* @alloc_inode(%struct.super_block*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__inode_add_to_lists(%struct.super_block*, i32*, %struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
