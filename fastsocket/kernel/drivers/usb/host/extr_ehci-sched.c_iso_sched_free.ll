; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_iso_sched_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_iso_sched_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_iso_stream = type { i32 }
%struct.ehci_iso_sched = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_iso_stream*, %struct.ehci_iso_sched*)* @iso_sched_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iso_sched_free(%struct.ehci_iso_stream* %0, %struct.ehci_iso_sched* %1) #0 {
  %3 = alloca %struct.ehci_iso_stream*, align 8
  %4 = alloca %struct.ehci_iso_sched*, align 8
  store %struct.ehci_iso_stream* %0, %struct.ehci_iso_stream** %3, align 8
  store %struct.ehci_iso_sched* %1, %struct.ehci_iso_sched** %4, align 8
  %5 = load %struct.ehci_iso_sched*, %struct.ehci_iso_sched** %4, align 8
  %6 = icmp ne %struct.ehci_iso_sched* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %16

8:                                                ; preds = %2
  %9 = load %struct.ehci_iso_sched*, %struct.ehci_iso_sched** %4, align 8
  %10 = getelementptr inbounds %struct.ehci_iso_sched, %struct.ehci_iso_sched* %9, i32 0, i32 0
  %11 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %3, align 8
  %12 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %11, i32 0, i32 0
  %13 = call i32 @list_splice(i32* %10, i32* %12)
  %14 = load %struct.ehci_iso_sched*, %struct.ehci_iso_sched** %4, align 8
  %15 = call i32 @kfree(%struct.ehci_iso_sched* %14)
  br label %16

16:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @list_splice(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ehci_iso_sched*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
