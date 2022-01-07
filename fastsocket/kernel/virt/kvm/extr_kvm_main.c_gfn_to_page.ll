; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_gfn_to_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_gfn_to_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.kvm = type { i32 }

@bad_page = common dso_local global %struct.page* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @gfn_to_page(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kvm*, %struct.kvm** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @gfn_to_pfn(%struct.kvm* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @kvm_is_mmio_pfn(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.page* @pfn_to_page(i32 %14)
  store %struct.page* %15, %struct.page** %3, align 8
  br label %23

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @kvm_is_mmio_pfn(i32 %17)
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.page*, %struct.page** @bad_page, align 8
  %21 = call i32 @get_page(%struct.page* %20)
  %22 = load %struct.page*, %struct.page** @bad_page, align 8
  store %struct.page* %22, %struct.page** %3, align 8
  br label %23

23:                                               ; preds = %16, %13
  %24 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %24
}

declare dso_local i32 @gfn_to_pfn(%struct.kvm*, i32) #1

declare dso_local i32 @kvm_is_mmio_pfn(i32) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
