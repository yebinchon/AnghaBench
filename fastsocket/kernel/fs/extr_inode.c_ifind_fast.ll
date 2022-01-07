; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_ifind_fast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_ifind_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.hlist_head = type { i32 }

@inode_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.hlist_head*, i64)* @ifind_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @ifind_fast(%struct.super_block* %0, %struct.hlist_head* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.hlist_head* %1, %struct.hlist_head** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = call i32 @spin_lock(i32* @inode_lock)
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call %struct.inode* @find_inode_fast(%struct.super_block* %10, %struct.hlist_head* %11, i64 %12)
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call i32 @__iget(%struct.inode* %17)
  %19 = call i32 @spin_unlock(i32* @inode_lock)
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = call i32 @wait_on_inode(%struct.inode* %20)
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %22, %struct.inode** %4, align 8
  br label %25

23:                                               ; preds = %3
  %24 = call i32 @spin_unlock(i32* @inode_lock)
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %25

25:                                               ; preds = %23, %16
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %26
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @find_inode_fast(%struct.super_block*, %struct.hlist_head*, i64) #1

declare dso_local i32 @__iget(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_on_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
