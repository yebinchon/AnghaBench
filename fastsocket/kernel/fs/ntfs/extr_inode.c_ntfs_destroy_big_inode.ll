; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_destroy_big_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_destroy_big_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Entering.\00", align 1
@ntfs_big_inode_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntfs_destroy_big_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.TYPE_4__* @NTFS_I(%struct.inode* %4)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %3, align 8
  %6 = call i32 @ntfs_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @atomic_dec_and_test(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i32, i32* @ntfs_big_inode_cache, align 4
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = call %struct.TYPE_4__* @NTFS_I(%struct.inode* %19)
  %21 = call i32 @kmem_cache_free(i32 %18, %struct.TYPE_4__* %20)
  ret void
}

declare dso_local %struct.TYPE_4__* @NTFS_I(%struct.inode*) #1

declare dso_local i32 @ntfs_debug(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
