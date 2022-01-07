; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_trans_go_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_trans_go_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i64, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }

@LM_ST_UNLOCKED = common dso_local global i64 0, align 8
@SDF_JOURNAL_LIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*)* @trans_go_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trans_go_sync(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %4 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %4, i32 0, i32 1
  %6 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  store %struct.gfs2_sbd* %6, %struct.gfs2_sbd** %3, align 8
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %8 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LM_ST_UNLOCKED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i32, i32* @SDF_JOURNAL_LIVE, align 4
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %15 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %14, i32 0, i32 0
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %20 = call i32 @gfs2_meta_syncfs(%struct.gfs2_sbd* %19)
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %22 = call i32 @gfs2_log_shutdown(%struct.gfs2_sbd* %21)
  br label %23

23:                                               ; preds = %18, %12, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @gfs2_meta_syncfs(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_log_shutdown(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
