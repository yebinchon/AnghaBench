; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.inode*)* }
%struct.super_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }

@inode_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load %struct.super_block*, %struct.super_block** %3, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to %struct.inode* (%struct.super_block*)**
  %10 = load %struct.inode* (%struct.super_block*)*, %struct.inode* (%struct.super_block*)** %9, align 8
  %11 = icmp ne %struct.inode* (%struct.super_block*)* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to %struct.inode* (%struct.super_block*)**
  %18 = load %struct.inode* (%struct.super_block*)*, %struct.inode* (%struct.super_block*)** %17, align 8
  %19 = load %struct.super_block*, %struct.super_block** %3, align 8
  %20 = call %struct.inode* %18(%struct.super_block* %19)
  store %struct.inode* %20, %struct.inode** %4, align 8
  br label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @inode_cachep, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.inode* @kmem_cache_alloc(i32 %22, i32 %23)
  store %struct.inode* %24, %struct.inode** %4, align 8
  br label %25

25:                                               ; preds = %21, %12
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = icmp ne %struct.inode* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %61

29:                                               ; preds = %25
  %30 = load %struct.super_block*, %struct.super_block** %3, align 8
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call i32 @inode_init_always(%struct.super_block* %30, %struct.inode* %31)
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (%struct.inode*)*, i32 (%struct.inode*)** %41, align 8
  %43 = icmp ne i32 (%struct.inode*)* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %35
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32 (%struct.inode*)*, i32 (%struct.inode*)** %50, align 8
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = call i32 %51(%struct.inode* %52)
  br label %58

54:                                               ; preds = %35
  %55 = load i32, i32* @inode_cachep, align 4
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = call i32 @kmem_cache_free(i32 %55, %struct.inode* %56)
  br label %58

58:                                               ; preds = %54, %44
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %61

59:                                               ; preds = %29
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  store %struct.inode* %60, %struct.inode** %2, align 8
  br label %61

61:                                               ; preds = %59, %58, %28
  %62 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %62
}

declare dso_local %struct.inode* @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inode_init_always(%struct.super_block*, %struct.inode*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
