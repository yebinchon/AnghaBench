; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_waitq.c_autofs_notify_daemon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_waitq.c_autofs_notify_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_sb_info = type { i32 }
%struct.autofs_wait_queue = type { i64, i32, i32 }
%struct.autofs_packet_missing = type { i64, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"autofs_wait: wait id = 0x%08lx, name = \00", align 1
@AUTOFS_PROTO_VERSION = common dso_local global i32 0, align 4
@autofs_ptype_missing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.autofs_sb_info*, %struct.autofs_wait_queue*)* @autofs_notify_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autofs_notify_daemon(%struct.autofs_sb_info* %0, %struct.autofs_wait_queue* %1) #0 {
  %3 = alloca %struct.autofs_sb_info*, align 8
  %4 = alloca %struct.autofs_wait_queue*, align 8
  %5 = alloca %struct.autofs_packet_missing, align 8
  store %struct.autofs_sb_info* %0, %struct.autofs_sb_info** %3, align 8
  store %struct.autofs_wait_queue* %1, %struct.autofs_wait_queue** %4, align 8
  %6 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %4, align 8
  %7 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @DPRINTK(i8* %10)
  %12 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %4, align 8
  %13 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %4, align 8
  %16 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @autofs_say(i32 %14, i64 %17)
  %19 = call i32 @memset(%struct.autofs_packet_missing* %5, i32 0, i32 32)
  %20 = load i32, i32* @AUTOFS_PROTO_VERSION, align 4
  %21 = getelementptr inbounds %struct.autofs_packet_missing, %struct.autofs_packet_missing* %5, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @autofs_ptype_missing, align 4
  %24 = getelementptr inbounds %struct.autofs_packet_missing, %struct.autofs_packet_missing* %5, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %4, align 8
  %27 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.autofs_packet_missing, %struct.autofs_packet_missing* %5, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %4, align 8
  %31 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.autofs_packet_missing, %struct.autofs_packet_missing* %5, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.autofs_packet_missing, %struct.autofs_packet_missing* %5, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %4, align 8
  %37 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.autofs_packet_missing, %struct.autofs_packet_missing* %5, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @memcpy(i8* %35, i32 %38, i64 %40)
  %42 = getelementptr inbounds %struct.autofs_packet_missing, %struct.autofs_packet_missing* %5, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.autofs_packet_missing, %struct.autofs_packet_missing* %5, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %48 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @autofs_write(i32 %49, %struct.autofs_packet_missing* %5, i32 32)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %2
  %53 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %54 = call i32 @autofs_catatonic_mode(%struct.autofs_sb_info* %53)
  br label %55

55:                                               ; preds = %52, %2
  ret void
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @autofs_say(i32, i64) #1

declare dso_local i32 @memset(%struct.autofs_packet_missing*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i64 @autofs_write(i32, %struct.autofs_packet_missing*, i32) #1

declare dso_local i32 @autofs_catatonic_mode(%struct.autofs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
