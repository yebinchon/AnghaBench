; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_virtio.c_p9_virtio_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_virtio.c_p9_virtio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_2__*, %struct.virtio_chan* }
%struct.TYPE_2__ = type { i32 (%struct.virtio_device*)* }
%struct.virtio_chan = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @p9_virtio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p9_virtio_remove(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtio_chan*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %4 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %5 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %4, i32 0, i32 1
  %6 = load %struct.virtio_chan*, %struct.virtio_chan** %5, align 8
  store %struct.virtio_chan* %6, %struct.virtio_chan** %3, align 8
  %7 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %12 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %17 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %19, align 8
  %21 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %22 = call i32 %20(%struct.virtio_device* %21)
  %23 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %24 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
