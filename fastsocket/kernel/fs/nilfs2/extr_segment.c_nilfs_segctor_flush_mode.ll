; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_flush_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_flush_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i64, i64, i32 }

@NILFS_SC_UNCLOSED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@FLUSH_FILE_BIT = common dso_local global i32 0, align 4
@SC_FLUSH_FILE = common dso_local global i32 0, align 4
@FLUSH_DAT_BIT = common dso_local global i32 0, align 4
@SC_FLUSH_DAT = common dso_local global i32 0, align 4
@SC_LSEG_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*)* @nilfs_segctor_flush_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_flush_mode(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nilfs_sc_info*, align 8
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  %4 = load i32, i32* @NILFS_SC_UNCLOSED, align 4
  %5 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %6 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %5, i32 0, i32 3
  %7 = call i32 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i32, i32* @jiffies, align 4
  %11 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %12 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %15 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = call i64 @time_before(i32 %10, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %9, %1
  %21 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %22 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FLUSH_FILE_BIT, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @SC_FLUSH_FILE, align 4
  store i32 %29, i32* %2, align 4
  br label %44

30:                                               ; preds = %20
  %31 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %32 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FLUSH_DAT_BIT, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @SC_FLUSH_DAT, align 4
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41, %9
  %43 = load i32, i32* @SC_LSEG_SR, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %38, %28
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
