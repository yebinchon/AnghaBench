; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_iunique.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_iunique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.super_block = type { i32 }
%struct.inode = type { i32 }

@iunique.counter = internal global i32 0, align 4
@inode_lock = common dso_local global i32 0, align 4
@inode_hashtable = common dso_local global %struct.hlist_head* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iunique(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @spin_lock(i32* @inode_lock)
  br label %9

9:                                                ; preds = %29, %2
  %10 = load i32, i32* @iunique.counter, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ule i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* @iunique.counter, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32, i32* @iunique.counter, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* @iunique.counter, align 4
  store i32 %17, i32* %7, align 4
  %19 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @hash(%struct.super_block* %20, i32 %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %19, i64 %23
  store %struct.hlist_head* %24, %struct.hlist_head** %6, align 8
  %25 = load %struct.super_block*, %struct.super_block** %3, align 8
  %26 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.inode* @find_inode_fast(%struct.super_block* %25, %struct.hlist_head* %26, i32 %27)
  store %struct.inode* %28, %struct.inode** %5, align 8
  br label %29

29:                                               ; preds = %16
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %9, label %32

32:                                               ; preds = %29
  %33 = call i32 @spin_unlock(i32* @inode_lock)
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hash(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @find_inode_fast(%struct.super_block*, %struct.hlist_head*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
