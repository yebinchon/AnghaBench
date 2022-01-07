; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_write_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acm = type { i32, i32 }
%struct.acm_wb = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acm*, %struct.acm_wb*)* @acm_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_write_done(%struct.acm* %0, %struct.acm_wb* %1) #0 {
  %3 = alloca %struct.acm*, align 8
  %4 = alloca %struct.acm_wb*, align 8
  store %struct.acm* %0, %struct.acm** %3, align 8
  store %struct.acm_wb* %1, %struct.acm_wb** %4, align 8
  %5 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %6 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.acm*, %struct.acm** %3, align 8
  %8 = getelementptr inbounds %struct.acm, %struct.acm* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %8, align 4
  %11 = load %struct.acm*, %struct.acm** %3, align 8
  %12 = getelementptr inbounds %struct.acm, %struct.acm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @usb_autopm_put_interface_async(i32 %13)
  ret void
}

declare dso_local i32 @usb_autopm_put_interface_async(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
