; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_confirm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, %struct.nilfs_sb_info* }
%struct.nilfs_sb_info = type { i32, i32 }

@NILFS_SC_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*)* @nilfs_segctor_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_confirm(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca %struct.nilfs_sc_info*, align 8
  %3 = alloca %struct.nilfs_sb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %2, align 8
  %5 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %6 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %5, i32 0, i32 1
  %7 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  store %struct.nilfs_sb_info* %7, %struct.nilfs_sb_info** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %9 = call i64 @nilfs_test_metadata_dirty(%struct.nilfs_sb_info* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @NILFS_SC_DIRTY, align 4
  %13 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %14 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %18 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %21 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %20, i32 0, i32 1
  %22 = call i64 @list_empty(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %26 = call i64 @nilfs_segctor_clean(%struct.nilfs_sc_info* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %24, %16
  %32 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %33 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @nilfs_test_metadata_dirty(%struct.nilfs_sb_info*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @nilfs_segctor_clean(%struct.nilfs_sc_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
