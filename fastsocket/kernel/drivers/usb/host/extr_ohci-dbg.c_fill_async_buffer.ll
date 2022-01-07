; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-dbg.c_fill_async_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-dbg.c_fill_async_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_buffer = type { i64, i64, %struct.ohci_hcd* }
%struct.ohci_hcd = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.debug_buffer*)* @fill_async_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fill_async_buffer(%struct.debug_buffer* %0) #0 {
  %2 = alloca %struct.debug_buffer*, align 8
  %3 = alloca %struct.ohci_hcd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.debug_buffer* %0, %struct.debug_buffer** %2, align 8
  %6 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %7 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %6, i32 0, i32 2
  %8 = load %struct.ohci_hcd*, %struct.ohci_hcd** %7, align 8
  store %struct.ohci_hcd* %8, %struct.ohci_hcd** %3, align 8
  %9 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %14 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %18 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @show_list(%struct.ohci_hcd* %13, i64 %16, i64 %19, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %25 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %26 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %31 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = sub i64 %32, %33
  %35 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %36 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @show_list(%struct.ohci_hcd* %24, i64 %29, i64 %34, i32 %37)
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %4, align 8
  %41 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %42 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @show_list(%struct.ohci_hcd*, i64, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
