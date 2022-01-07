; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_microtek.c_mts_scsi_host_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_microtek.c_mts_scsi_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }
%struct.mts_desc = type { i32, i32 }

@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @mts_scsi_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mts_scsi_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.mts_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %5 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.mts_desc*
  store %struct.mts_desc* %14, %struct.mts_desc** %3, align 8
  %15 = call i32 (...) @MTS_DEBUG_GOT_HERE()
  %16 = load %struct.mts_desc*, %struct.mts_desc** %3, align 8
  %17 = call i32 @mts_debug_dump(%struct.mts_desc* %16)
  %18 = load %struct.mts_desc*, %struct.mts_desc** %3, align 8
  %19 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mts_desc*, %struct.mts_desc** %3, align 8
  %22 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_lock_device_for_reset(i32 %20, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.mts_desc*, %struct.mts_desc** %3, align 8
  %29 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_reset_device(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.mts_desc*, %struct.mts_desc** %3, align 8
  %33 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_unlock_device(i32 %34)
  br label %36

36:                                               ; preds = %27, %1
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @FAILED, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @SUCCESS, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  ret i32 %44
}

declare dso_local i32 @MTS_DEBUG_GOT_HERE(...) #1

declare dso_local i32 @mts_debug_dump(%struct.mts_desc*) #1

declare dso_local i32 @usb_lock_device_for_reset(i32, i32) #1

declare dso_local i32 @usb_reset_device(i32) #1

declare dso_local i32 @usb_unlock_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
