; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_iface.c_lapb_disconnect_confirmation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_iface.c_lapb_disconnect_confirmation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapb_disconnect_confirmation(%struct.lapb_cb* %0, i32 %1) #0 {
  %3 = alloca %struct.lapb_cb*, align 8
  %4 = alloca i32, align 4
  store %struct.lapb_cb* %0, %struct.lapb_cb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %6 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %9 = icmp ne i32 (i32, i32)* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %12 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %16 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 %14(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %10, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
