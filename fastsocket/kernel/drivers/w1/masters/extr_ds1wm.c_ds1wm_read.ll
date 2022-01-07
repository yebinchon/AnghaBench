; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds1wm.c_ds1wm_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds1wm.c_ds1wm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1wm_data = type { i32, i32* }

@read_done = common dso_local global i32 0, align 4
@DS1WM_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds1wm_data*, i8)* @ds1wm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1wm_read(%struct.ds1wm_data* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.ds1wm_data*, align 8
  %4 = alloca i8, align 1
  store %struct.ds1wm_data* %0, %struct.ds1wm_data** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* @read_done, align 4
  %6 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %5)
  %7 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %8 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %7, i32 0, i32 1
  store i32* @read_done, i32** %8, align 8
  %9 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %10 = load i8, i8* %4, align 1
  %11 = call i32 @ds1wm_write(%struct.ds1wm_data* %9, i8 zeroext %10)
  %12 = load i32, i32* @DS1WM_TIMEOUT, align 4
  %13 = call i32 @wait_for_completion_timeout(i32* @read_done, i32 %12)
  %14 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %15 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %17 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  ret i32 %18
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @ds1wm_write(%struct.ds1wm_data*, i8 zeroext) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
