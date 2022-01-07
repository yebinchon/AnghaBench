; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_init_cachep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_init_cachep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"btrfs_inode_cache\00", align 1
@SLAB_RECLAIM_ACCOUNT = common dso_local global i32 0, align 4
@SLAB_MEM_SPREAD = common dso_local global i32 0, align 4
@init_once = common dso_local global i32* null, align 8
@btrfs_inode_cachep = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"btrfs_trans_handle_cache\00", align 1
@btrfs_trans_handle_cachep = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"btrfs_transaction_cache\00", align 1
@btrfs_transaction_cachep = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"btrfs_path_cache\00", align 1
@btrfs_path_cachep = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"btrfs_free_space_cache\00", align 1
@btrfs_free_space_cachep = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_init_cachep() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SLAB_RECLAIM_ACCOUNT, align 4
  %3 = load i32, i32* @SLAB_MEM_SPREAD, align 4
  %4 = or i32 %2, %3
  %5 = load i32*, i32** @init_once, align 8
  %6 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 %4, i32* %5)
  store i8* %6, i8** @btrfs_inode_cachep, align 8
  %7 = load i8*, i8** @btrfs_inode_cachep, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %43

10:                                               ; preds = %0
  %11 = load i32, i32* @SLAB_RECLAIM_ACCOUNT, align 4
  %12 = load i32, i32* @SLAB_MEM_SPREAD, align 4
  %13 = or i32 %11, %12
  %14 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 0, i32 %13, i32* null)
  store i8* %14, i8** @btrfs_trans_handle_cachep, align 8
  %15 = load i8*, i8** @btrfs_trans_handle_cachep, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %43

18:                                               ; preds = %10
  %19 = load i32, i32* @SLAB_RECLAIM_ACCOUNT, align 4
  %20 = load i32, i32* @SLAB_MEM_SPREAD, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 4, i32 0, i32 %21, i32* null)
  store i8* %22, i8** @btrfs_transaction_cachep, align 8
  %23 = load i8*, i8** @btrfs_transaction_cachep, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %43

26:                                               ; preds = %18
  %27 = load i32, i32* @SLAB_RECLAIM_ACCOUNT, align 4
  %28 = load i32, i32* @SLAB_MEM_SPREAD, align 4
  %29 = or i32 %27, %28
  %30 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 4, i32 0, i32 %29, i32* null)
  store i8* %30, i8** @btrfs_path_cachep, align 8
  %31 = load i8*, i8** @btrfs_path_cachep, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %43

34:                                               ; preds = %26
  %35 = load i32, i32* @SLAB_RECLAIM_ACCOUNT, align 4
  %36 = load i32, i32* @SLAB_MEM_SPREAD, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 4, i32 0, i32 %37, i32* null)
  store i8* %38, i8** @btrfs_free_space_cachep, align 8
  %39 = load i8*, i8** @btrfs_free_space_cachep, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  br label %47

43:                                               ; preds = %41, %33, %25, %17, %9
  %44 = call i32 (...) @btrfs_destroy_cachep()
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %43, %42
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_destroy_cachep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
