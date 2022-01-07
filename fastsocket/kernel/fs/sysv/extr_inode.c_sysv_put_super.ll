; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_inode.c_sysv_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_inode.c_sysv_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i64 }
%struct.sysv_sb_info = type { i64, i64 }

@MS_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @sysv_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysv_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.sysv_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %4)
  store %struct.sysv_sb_info* %5, %struct.sysv_sb_info** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = call i32 @sysv_write_super(%struct.super_block* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MS_RDONLY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %13
  %21 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %22 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @mark_buffer_dirty(i64 %23)
  %25 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %26 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %29 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %34 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mark_buffer_dirty(i64 %35)
  br label %37

37:                                               ; preds = %32, %20
  br label %38

38:                                               ; preds = %37, %13
  %39 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %40 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @brelse(i64 %41)
  %43 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %44 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %47 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %52 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @brelse(i64 %53)
  br label %55

55:                                               ; preds = %50, %38
  %56 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %57 = call i32 @kfree(%struct.sysv_sb_info* %56)
  ret void
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @sysv_write_super(%struct.super_block*) #1

declare dso_local i32 @mark_buffer_dirty(i64) #1

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @kfree(%struct.sysv_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
