; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_construct_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_construct_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i64 }
%struct.super_block = type { i32 }
%struct.nilfs_sb_info = type { i32 }
%struct.nilfs_sc_info = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@NILFS_TI_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_construct_segment(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.nilfs_sb_info*, align 8
  %5 = alloca %struct.nilfs_sc_info*, align 8
  %6 = alloca %struct.nilfs_transaction_info*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block* %8)
  store %struct.nilfs_sb_info* %9, %struct.nilfs_sb_info** %4, align 8
  %10 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %4, align 8
  %11 = call %struct.nilfs_sc_info* @NILFS_SC(%struct.nilfs_sb_info* %10)
  store %struct.nilfs_sc_info* %11, %struct.nilfs_sc_info** %5, align 8
  %12 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %5, align 8
  %13 = icmp ne %struct.nilfs_sc_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EROFS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %19, align 8
  store %struct.nilfs_transaction_info* %20, %struct.nilfs_transaction_info** %6, align 8
  %21 = icmp ne %struct.nilfs_transaction_info* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %24 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NILFS_TI_MAGIC, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %22, %17
  %29 = phi i1 [ false, %17 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %5, align 8
  %33 = call i32 @nilfs_segctor_sync(%struct.nilfs_sc_info* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %14
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block*) #1

declare dso_local %struct.nilfs_sc_info* @NILFS_SC(%struct.nilfs_sb_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nilfs_segctor_sync(%struct.nilfs_sc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
