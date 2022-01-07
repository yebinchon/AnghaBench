; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_bdi_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_bdi_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backing_dev_info = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdi_unregister(%struct.backing_dev_info* %0) #0 {
  %2 = alloca %struct.backing_dev_info*, align 8
  store %struct.backing_dev_info* %0, %struct.backing_dev_info** %2, align 8
  %3 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %4 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %9 = call i32 @trace_writeback_bdi_unregister(%struct.backing_dev_info* %8)
  %10 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %11 = call i32 @bdi_prune_sb(%struct.backing_dev_info* %10)
  %12 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %13 = call i32 @bdi_cap_flush_forker(%struct.backing_dev_info* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %17 = call i32 @bdi_wb_shutdown(%struct.backing_dev_info* %16)
  br label %18

18:                                               ; preds = %15, %7
  %19 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %20 = call i32 @bdi_debug_unregister(%struct.backing_dev_info* %19)
  %21 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %22 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @device_unregister(i32* %23)
  %25 = load %struct.backing_dev_info*, %struct.backing_dev_info** %2, align 8
  %26 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @trace_writeback_bdi_unregister(%struct.backing_dev_info*) #1

declare dso_local i32 @bdi_prune_sb(%struct.backing_dev_info*) #1

declare dso_local i32 @bdi_cap_flush_forker(%struct.backing_dev_info*) #1

declare dso_local i32 @bdi_wb_shutdown(%struct.backing_dev_info*) #1

declare dso_local i32 @bdi_debug_unregister(%struct.backing_dev_info*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
