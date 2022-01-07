; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_do_immediate_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_do_immediate_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32, i32 }

@FLUSH_DAT_BIT = common dso_local global i32 0, align 4
@SC_FLUSH_DAT = common dso_local global i32 0, align 4
@SC_FLUSH_FILE = common dso_local global i32 0, align 4
@FLUSH_FILE_BIT = common dso_local global i32 0, align 4
@NILFS_SC_PRIOR_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*)* @nilfs_segctor_do_immediate_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_do_immediate_flush(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca %struct.nilfs_sc_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %6 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %5, i32 0, i32 2
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %9 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FLUSH_DAT_BIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @SC_FLUSH_DAT, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @SC_FLUSH_FILE, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %3, align 4
  %20 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %21 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %20, i32 0, i32 2
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %18
  %26 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @nilfs_segctor_do_construct(%struct.nilfs_sc_info* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %30 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %29, i32 0, i32 2
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SC_FLUSH_FILE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @FLUSH_FILE_BIT, align 4
  %37 = xor i32 %36, -1
  br label %41

38:                                               ; preds = %25
  %39 = load i32, i32* @FLUSH_DAT_BIT, align 4
  %40 = xor i32 %39, -1
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %37, %35 ], [ %40, %38 ]
  %43 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %44 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %48 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %47, i32 0, i32 2
  %49 = call i32 @spin_unlock(i32* %48)
  br label %50

50:                                               ; preds = %41, %18
  %51 = load i32, i32* @NILFS_SC_PRIOR_FLUSH, align 4
  %52 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %53 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %52, i32 0, i32 1
  %54 = call i32 @clear_bit(i32 %51, i32* %53)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nilfs_segctor_do_construct(%struct.nilfs_sc_info*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
