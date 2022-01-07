; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_transaction_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_transaction_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i64, i64, i32, %struct.nilfs_transaction_info* }
%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@NILFS_TI_MAGIC = common dso_local global i64 0, align 8
@NILFS_TI_DYNAMIC_ALLOC = common dso_local global i32 0, align 4
@nilfs_transaction_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_transaction_abort(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.nilfs_transaction_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  store %struct.nilfs_transaction_info* %6, %struct.nilfs_transaction_info** %3, align 8
  %7 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %8 = icmp eq %struct.nilfs_transaction_info* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %11 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NILFS_TI_MAGIC, align 8
  %14 = icmp ne i64 %12, %13
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i1 [ true, %1 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %20 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %25 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  br label %50

28:                                               ; preds = %15
  %29 = load %struct.super_block*, %struct.super_block** %2, align 8
  %30 = call %struct.TYPE_6__* @NILFS_SB(%struct.super_block* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @up_read(i32* %33)
  %35 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %36 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %35, i32 0, i32 3
  %37 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store %struct.nilfs_transaction_info* %37, %struct.nilfs_transaction_info** %39, align 8
  %40 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %41 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NILFS_TI_DYNAMIC_ALLOC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %28
  %47 = load i32, i32* @nilfs_transaction_cachep, align 4
  %48 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %49 = call i32 @kmem_cache_free(i32 %47, %struct.nilfs_transaction_info* %48)
  br label %50

50:                                               ; preds = %23, %46, %28
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.TYPE_6__* @NILFS_SB(%struct.super_block*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nilfs_transaction_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
