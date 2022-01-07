; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_populate_slot_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_populate_slot_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32, %struct.o2hb_disk_slot* }
%struct.o2hb_disk_slot = type { i8*, i8*, i64 }
%struct.o2hb_disk_heartbeat_block = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2hb_region*)* @o2hb_populate_slot_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_populate_slot_data(%struct.o2hb_region* %0) #0 {
  %2 = alloca %struct.o2hb_region*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.o2hb_disk_slot*, align 8
  %6 = alloca %struct.o2hb_disk_heartbeat_block*, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %2, align 8
  %7 = call i32 (...) @mlog_entry_void()
  %8 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %9 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %10 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @o2hb_read_slots(%struct.o2hb_region* %8, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @mlog_errno(i32 %16)
  br label %52

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %48, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %22 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %19
  %26 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %27 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %26, i32 0, i32 1
  %28 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %28, i64 %30
  store %struct.o2hb_disk_slot* %31, %struct.o2hb_disk_slot** %5, align 8
  %32 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %33 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.o2hb_disk_heartbeat_block*
  store %struct.o2hb_disk_heartbeat_block* %35, %struct.o2hb_disk_heartbeat_block** %6, align 8
  %36 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %6, align 8
  %37 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @le64_to_cpu(i32 %38)
  %40 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %41 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %6, align 8
  %43 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le64_to_cpu(i32 %44)
  %46 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %47 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %25
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %19

51:                                               ; preds = %19
  br label %52

52:                                               ; preds = %51, %15
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @mlog_exit(i32 %53)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @o2hb_read_slots(%struct.o2hb_region*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
