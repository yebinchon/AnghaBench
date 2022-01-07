; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_ifind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_ifind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.hlist_head = type { i32 }

@inode_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.hlist_head*, i32 (%struct.inode*, i8*)*, i8*, i32)* @ifind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @ifind(%struct.super_block* %0, %struct.hlist_head* %1, i32 (%struct.inode*, i8*)* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.hlist_head*, align 8
  %9 = alloca i32 (%struct.inode*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.hlist_head* %1, %struct.hlist_head** %8, align 8
  store i32 (%struct.inode*, i8*)* %2, i32 (%struct.inode*, i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = call i32 @spin_lock(i32* @inode_lock)
  %14 = load %struct.super_block*, %struct.super_block** %7, align 8
  %15 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %16 = load i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call %struct.inode* @find_inode(%struct.super_block* %14, %struct.hlist_head* %15, i32 (%struct.inode*, i8*)* %16, i8* %17)
  store %struct.inode* %18, %struct.inode** %12, align 8
  %19 = load %struct.inode*, %struct.inode** %12, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %5
  %22 = load %struct.inode*, %struct.inode** %12, align 8
  %23 = call i32 @__iget(%struct.inode* %22)
  %24 = call i32 @spin_unlock(i32* @inode_lock)
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %12, align 8
  %30 = call i32 @wait_on_inode(%struct.inode* %29)
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %32, %struct.inode** %6, align 8
  br label %35

33:                                               ; preds = %5
  %34 = call i32 @spin_unlock(i32* @inode_lock)
  store %struct.inode* null, %struct.inode** %6, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  ret %struct.inode* %36
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @find_inode(%struct.super_block*, %struct.hlist_head*, i32 (%struct.inode*, i8*)*, i8*) #1

declare dso_local i32 @__iget(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wait_on_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
