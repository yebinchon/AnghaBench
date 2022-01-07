; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_bdi_wb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_bdi_wb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdi_writeback = type { i32, i32, i32, i32, %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdi_writeback*, %struct.backing_dev_info*)* @bdi_wb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdi_wb_init(%struct.bdi_writeback* %0, %struct.backing_dev_info* %1) #0 {
  %3 = alloca %struct.bdi_writeback*, align 8
  %4 = alloca %struct.backing_dev_info*, align 8
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %3, align 8
  store %struct.backing_dev_info* %1, %struct.backing_dev_info** %4, align 8
  %5 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %6 = call i32 @memset(%struct.bdi_writeback* %5, i32 0, i32 24)
  %7 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %8 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %9 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %8, i32 0, i32 4
  store %struct.backing_dev_info* %7, %struct.backing_dev_info** %9, align 8
  %10 = load i32, i32* @jiffies, align 4
  %11 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %12 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %14 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %13, i32 0, i32 2
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %17 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %20 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %19, i32 0, i32 0
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  ret void
}

declare dso_local i32 @memset(%struct.bdi_writeback*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
