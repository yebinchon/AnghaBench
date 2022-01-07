; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_alloc_extent_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_alloc_extent_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"Entering.\00", align 1
@ntfs_inode_cache = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Allocation of NTFS inode structure failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* ()* @ntfs_alloc_extent_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @ntfs_alloc_extent_inode() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = call i32 @ntfs_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @ntfs_inode_cache, align 4
  %5 = load i32, i32* @GFP_NOFS, align 4
  %6 = call %struct.TYPE_4__* @kmem_cache_alloc(i32 %4, i32 %5)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %1, align 8
  br label %18

16:                                               ; preds = %0
  %17 = call i32 @ntfs_error(i32* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %18

18:                                               ; preds = %16, %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %19
}

declare dso_local i32 @ntfs_debug(i8*) #1

declare dso_local %struct.TYPE_4__* @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ntfs_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
