; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_iint.c_ima_inode_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_iint.c_ima_inode_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ima_iint_cache = type { i32 }

@ima_enabled = common dso_local global i32 0, align 4
@iint_cache = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ima_iint_lock = common dso_local global i32 0, align 4
@ima_iint_store = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_inode_alloc(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ima_iint_cache*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ima_iint_cache* null, %struct.ima_iint_cache** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @ima_enabled, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

9:                                                ; preds = %1
  %10 = load i32, i32* @iint_cache, align 4
  %11 = load i32, i32* @GFP_NOFS, align 4
  %12 = call %struct.ima_iint_cache* @kmem_cache_alloc(i32 %10, i32 %11)
  store %struct.ima_iint_cache* %12, %struct.ima_iint_cache** %4, align 8
  %13 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %4, align 8
  %14 = icmp ne %struct.ima_iint_cache* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %41

18:                                               ; preds = %9
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call i32 @radix_tree_preload(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %32

24:                                               ; preds = %18
  %25 = call i32 @spin_lock(i32* @ima_iint_lock)
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = ptrtoint %struct.inode* %26 to i64
  %28 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %4, align 8
  %29 = call i32 @radix_tree_insert(i32* @ima_iint_store, i64 %27, %struct.ima_iint_cache* %28)
  store i32 %29, i32* %5, align 4
  %30 = call i32 @spin_unlock(i32* @ima_iint_lock)
  %31 = call i32 (...) @radix_tree_preload_end()
  br label %32

32:                                               ; preds = %24, %23
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @iint_cache, align 4
  %37 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %4, align 8
  %38 = call i32 @kmem_cache_free(i32 %36, %struct.ima_iint_cache* %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %15, %8
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.ima_iint_cache* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @radix_tree_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i64, %struct.ima_iint_cache*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ima_iint_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
