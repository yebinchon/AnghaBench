; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_inode.c_sysv_sync_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_inode.c_sysv_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i64, i64*, i32, i64* }

@FSTYPE_SYSV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @sysv_sync_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysv_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysv_sb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %8)
  store %struct.sysv_sb_info* %9, %struct.sysv_sb_info** %5, align 8
  %10 = call i64 (...) @get_seconds()
  store i64 %10, i64* %6, align 8
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call i32 @lock_super(%struct.super_block* %11)
  %13 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %14 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %15 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %14, i32 0, i32 3
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @fs32_to_cpu(%struct.sysv_sb_info* %13, i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %20 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FSTYPE_SYSV4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %2
  %25 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %26 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 2082905400, %30
  %32 = call i64 @cpu_to_fs32(%struct.sysv_sb_info* %29, i64 %31)
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 2082905400, %36
  %38 = call i64 @cpu_to_fs32(%struct.sysv_sb_info* %35, i64 %37)
  %39 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %40 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %24
  %43 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @cpu_to_fs32(%struct.sysv_sb_info* %43, i64 %44)
  %46 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %47 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %46, i32 0, i32 3
  %48 = load i64*, i64** %47, align 8
  store i64 %45, i64* %48, align 8
  %49 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %50 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @mark_buffer_dirty(i32 %51)
  br label %53

53:                                               ; preds = %42, %2
  %54 = load %struct.super_block*, %struct.super_block** %3, align 8
  %55 = call i32 @unlock_super(%struct.super_block* %54)
  ret i32 0
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i64 @fs32_to_cpu(%struct.sysv_sb_info*, i64) #1

declare dso_local i64 @cpu_to_fs32(%struct.sysv_sb_info*, i64) #1

declare dso_local i32 @mark_buffer_dirty(i32) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
