; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-dev.c_uwb_dev_BPST_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-dev.c_uwb_dev_BPST_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.uwb_dev = type { %struct.uwb_beca_e* }
%struct.uwb_beca_e = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.uwb_beacon_frame = type { i32 }

@UWB_BEACON_SLOT_LENGTH_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @uwb_dev_BPST_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_dev_BPST_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uwb_dev*, align 8
  %8 = alloca %struct.uwb_beca_e*, align 8
  %9 = alloca %struct.uwb_beacon_frame*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.uwb_dev* @to_uwb_dev(%struct.device* %11)
  store %struct.uwb_dev* %12, %struct.uwb_dev** %7, align 8
  %13 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %14 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %13, i32 0, i32 0
  %15 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %14, align 8
  store %struct.uwb_beca_e* %15, %struct.uwb_beca_e** %8, align 8
  %16 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %8, align 8
  %17 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %8, align 8
  %20 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.uwb_beacon_frame*
  store %struct.uwb_beacon_frame* %24, %struct.uwb_beacon_frame** %9, align 8
  %25 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %8, align 8
  %26 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.uwb_beacon_frame*, %struct.uwb_beacon_frame** %9, align 8
  %31 = getelementptr inbounds %struct.uwb_beacon_frame, %struct.uwb_beacon_frame* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UWB_BEACON_SLOT_LENGTH_US, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sub nsw i32 %29, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %8, align 8
  %37 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40)
  ret i32 %41
}

declare dso_local %struct.uwb_dev* @to_uwb_dev(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
