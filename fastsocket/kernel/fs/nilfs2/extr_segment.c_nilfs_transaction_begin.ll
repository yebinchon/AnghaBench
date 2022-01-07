; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_transaction_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_transaction_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i32, %struct.nilfs_transaction_info* }
%struct.super_block = type { i32 }
%struct.nilfs_sb_info = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@NILFS_TI_DYNAMIC_ALLOC = common dso_local global i32 0, align 4
@nilfs_transaction_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_transaction_begin(%struct.super_block* %0, %struct.nilfs_transaction_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.nilfs_transaction_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nilfs_sb_info*, align 8
  %9 = alloca %struct.the_nilfs*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.nilfs_transaction_info* %1, %struct.nilfs_transaction_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %12 = call i32 @nilfs_prepare_segment_lock(%struct.nilfs_transaction_info* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %67

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %67

24:                                               ; preds = %20
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = call %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block* %25)
  store %struct.nilfs_sb_info* %26, %struct.nilfs_sb_info** %8, align 8
  %27 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %8, align 8
  %28 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %27, i32 0, i32 0
  %29 = load %struct.the_nilfs*, %struct.the_nilfs** %28, align 8
  store %struct.the_nilfs* %29, %struct.the_nilfs** %9, align 8
  %30 = load %struct.the_nilfs*, %struct.the_nilfs** %9, align 8
  %31 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %30, i32 0, i32 0
  %32 = call i32 @down_read(i32* %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load %struct.the_nilfs*, %struct.the_nilfs** %9, align 8
  %37 = call i64 @nilfs_near_disk_full(%struct.the_nilfs* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.the_nilfs*, %struct.the_nilfs** %9, align 8
  %41 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %40, i32 0, i32 0
  %42 = call i32 @up_read(i32* %41)
  %43 = load i32, i32* @ENOSPC, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %46

45:                                               ; preds = %35, %24
  store i32 0, i32* %4, align 4
  br label %67

46:                                               ; preds = %39
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %48, align 8
  store %struct.nilfs_transaction_info* %49, %struct.nilfs_transaction_info** %6, align 8
  %50 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %51 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %50, i32 0, i32 1
  %52 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %51, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store %struct.nilfs_transaction_info* %52, %struct.nilfs_transaction_info** %54, align 8
  %55 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %56 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NILFS_TI_DYNAMIC_ALLOC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = load i32, i32* @nilfs_transaction_cachep, align 4
  %63 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %64 = call i32 @kmem_cache_free(i32 %62, %struct.nilfs_transaction_info* %63)
  br label %65

65:                                               ; preds = %61, %46
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %45, %23, %18
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @nilfs_prepare_segment_lock(%struct.nilfs_transaction_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @nilfs_near_disk_full(%struct.the_nilfs*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nilfs_transaction_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
