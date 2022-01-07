; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_go7007_vm_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_go7007_vm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.vm_fault = type { %struct.page*, i64 }
%struct.page = type { i32 }

@GFP_USER = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @go7007_vm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_vm_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %7 = load i32, i32* @GFP_USER, align 4
  %8 = load i32, i32* @__GFP_DMA32, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.page* @alloc_page(i32 %9)
  store %struct.page* %10, %struct.page** %6, align 8
  %11 = load %struct.page*, %struct.page** %6, align 8
  %12 = icmp ne %struct.page* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %18 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @clear_user_highpage(%struct.page* %16, i64 %19)
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %23 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %22, i32 0, i32 0
  store %struct.page* %21, %struct.page** %23, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %15, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @clear_user_highpage(%struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
