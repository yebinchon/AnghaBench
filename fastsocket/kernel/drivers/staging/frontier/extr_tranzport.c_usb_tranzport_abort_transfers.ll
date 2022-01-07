; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_tranzport.c_usb_tranzport_abort_transfers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_tranzport.c_usb_tranzport_abort_transfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_tranzport = type { i32, i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_tranzport*)* @usb_tranzport_abort_transfers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_tranzport_abort_transfers(%struct.usb_tranzport* %0) #0 {
  %2 = alloca %struct.usb_tranzport*, align 8
  store %struct.usb_tranzport* %0, %struct.usb_tranzport** %2, align 8
  %3 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %4 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %9 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %11 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %16 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @usb_kill_urb(i32 %17)
  br label %19

19:                                               ; preds = %14, %7
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %22 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %27 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %32 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @usb_kill_urb(i32 %33)
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35, %20
  ret void
}

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
