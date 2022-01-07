; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_flush_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_flush_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.nilfs_sb_info = type { i32 }
%struct.nilfs_sc_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_flush_segment(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_sb_info*, align 8
  %6 = alloca %struct.nilfs_sc_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block* %7)
  store %struct.nilfs_sb_info* %8, %struct.nilfs_sb_info** %5, align 8
  %9 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %10 = call %struct.nilfs_sc_info* @NILFS_SC(%struct.nilfs_sb_info* %9)
  store %struct.nilfs_sc_info* %10, %struct.nilfs_sc_info** %6, align 8
  %11 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %12 = icmp ne %struct.nilfs_sc_info* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i64 (...) @nilfs_doing_construction()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  br label %29

17:                                               ; preds = %13
  %18 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %19 = load %struct.super_block*, %struct.super_block** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @NILFS_MDT_INODE(%struct.super_block* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  br label %26

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = call i32 @nilfs_segctor_do_flush(%struct.nilfs_sc_info* %18, i32 %27)
  br label %29

29:                                               ; preds = %26, %16
  ret void
}

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block*) #1

declare dso_local %struct.nilfs_sc_info* @NILFS_SC(%struct.nilfs_sb_info*) #1

declare dso_local i64 @nilfs_doing_construction(...) #1

declare dso_local i32 @nilfs_segctor_do_flush(%struct.nilfs_sc_info*, i32) #1

declare dso_local i64 @NILFS_MDT_INODE(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
