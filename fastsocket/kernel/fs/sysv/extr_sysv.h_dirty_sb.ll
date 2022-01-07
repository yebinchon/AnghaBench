; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_sysv.h_dirty_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_sysv.h_dirty_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @dirty_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dirty_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.sysv_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %4)
  store %struct.sysv_sb_info* %5, %struct.sysv_sb_info** %3, align 8
  %6 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @mark_buffer_dirty(i64 %8)
  %10 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %11 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %14 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %19 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @mark_buffer_dirty(i64 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.super_block*, %struct.super_block** %2, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  ret void
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @mark_buffer_dirty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
