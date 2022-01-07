; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_get_new_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_get_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.hlist_head = type { i32 }

@inode_lock = common dso_local global i32 0, align 4
@I_LOCK = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.hlist_head*, i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)*, i8*)* @get_new_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @get_new_inode(%struct.super_block* %0, %struct.hlist_head* %1, i32 (%struct.inode*, i8*)* %2, i32 (%struct.inode*, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.hlist_head*, align 8
  %9 = alloca i32 (%struct.inode*, i8*)*, align 8
  %10 = alloca i32 (%struct.inode*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.hlist_head* %1, %struct.hlist_head** %8, align 8
  store i32 (%struct.inode*, i8*)* %2, i32 (%struct.inode*, i8*)** %9, align 8
  store i32 (%struct.inode*, i8*)* %3, i32 (%struct.inode*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.super_block*, %struct.super_block** %7, align 8
  %15 = call %struct.inode* @alloc_inode(%struct.super_block* %14)
  store %struct.inode* %15, %struct.inode** %12, align 8
  %16 = load %struct.inode*, %struct.inode** %12, align 8
  %17 = icmp ne %struct.inode* %16, null
  br i1 %17, label %18, label %55

18:                                               ; preds = %5
  %19 = call i32 @spin_lock(i32* @inode_lock)
  %20 = load %struct.super_block*, %struct.super_block** %7, align 8
  %21 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %22 = load i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)** %9, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call %struct.inode* @find_inode(%struct.super_block* %20, %struct.hlist_head* %21, i32 (%struct.inode*, i8*)* %22, i8* %23)
  store %struct.inode* %24, %struct.inode** %13, align 8
  %25 = load %struct.inode*, %struct.inode** %13, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %18
  %28 = load i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)** %10, align 8
  %29 = load %struct.inode*, %struct.inode** %12, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 %28(%struct.inode* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %57

34:                                               ; preds = %27
  %35 = load %struct.super_block*, %struct.super_block** %7, align 8
  %36 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %37 = load %struct.inode*, %struct.inode** %12, align 8
  %38 = call i32 @__inode_add_to_lists(%struct.super_block* %35, %struct.hlist_head* %36, %struct.inode* %37)
  %39 = load i32, i32* @I_LOCK, align 4
  %40 = load i32, i32* @I_NEW, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.inode*, %struct.inode** %12, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = call i32 @spin_unlock(i32* @inode_lock)
  %45 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %45, %struct.inode** %6, align 8
  br label %61

46:                                               ; preds = %18
  %47 = load %struct.inode*, %struct.inode** %13, align 8
  %48 = call i32 @__iget(%struct.inode* %47)
  %49 = call i32 @spin_unlock(i32* @inode_lock)
  %50 = load %struct.inode*, %struct.inode** %12, align 8
  %51 = call i32 @destroy_inode(%struct.inode* %50)
  %52 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %52, %struct.inode** %12, align 8
  %53 = load %struct.inode*, %struct.inode** %12, align 8
  %54 = call i32 @wait_on_inode(%struct.inode* %53)
  br label %55

55:                                               ; preds = %46, %5
  %56 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %56, %struct.inode** %6, align 8
  br label %61

57:                                               ; preds = %33
  %58 = call i32 @spin_unlock(i32* @inode_lock)
  %59 = load %struct.inode*, %struct.inode** %12, align 8
  %60 = call i32 @destroy_inode(%struct.inode* %59)
  store %struct.inode* null, %struct.inode** %6, align 8
  br label %61

61:                                               ; preds = %57, %55, %34
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  ret %struct.inode* %62
}

declare dso_local %struct.inode* @alloc_inode(%struct.super_block*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @find_inode(%struct.super_block*, %struct.hlist_head*, i32 (%struct.inode*, i8*)*, i8*) #1

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
