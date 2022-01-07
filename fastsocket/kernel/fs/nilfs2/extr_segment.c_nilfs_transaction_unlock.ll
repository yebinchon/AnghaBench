; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_transaction_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_transaction_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i64, i64, i32, %struct.nilfs_transaction_info* }
%struct.nilfs_sb_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@NILFS_TI_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sb_info*)* @nilfs_transaction_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_transaction_unlock(%struct.nilfs_sb_info* %0) #0 {
  %2 = alloca %struct.nilfs_sb_info*, align 8
  %3 = alloca %struct.nilfs_transaction_info*, align 8
  store %struct.nilfs_sb_info* %0, %struct.nilfs_sb_info** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
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
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %2, align 8
  %26 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @up_write(i32* %28)
  %30 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %31 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %30, i32 0, i32 3
  %32 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.nilfs_transaction_info* %32, %struct.nilfs_transaction_info** %34, align 8
  %35 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %36 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %35, i32 0, i32 2
  %37 = call i32 @list_empty(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %15
  %40 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %2, align 8
  %41 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %42 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %41, i32 0, i32 2
  %43 = call i32 @nilfs_dispose_list(%struct.nilfs_sb_info* %40, i32* %42, i32 0)
  br label %44

44:                                               ; preds = %39, %15
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @nilfs_dispose_list(%struct.nilfs_sb_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
