; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_vm_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_vm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.vm_fault = type { %struct.page*, i32 }
%struct.page = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @kvm_vm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vm_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca [1 x %struct.page*], align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %11 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %12 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.kvm*, %struct.kvm** %17, align 8
  store %struct.kvm* %18, %struct.kvm** %10, align 8
  %19 = load %struct.kvm*, %struct.kvm** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @gfn_to_hva(%struct.kvm* %19, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @kvm_is_error_hva(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %26, i32* %3, align 4
  br label %47

27:                                               ; preds = %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %6, i64 0, i64 0
  %34 = call i32 @get_user_pages(%struct.TYPE_5__* %28, i32 %31, i64 %32, i32 1, i32 1, i32 0, %struct.page** %33, i32* null)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %27
  %43 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %6, i64 0, i64 0
  %44 = load %struct.page*, %struct.page** %43, align 8
  %45 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %46 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %45, i32 0, i32 0
  store %struct.page* %44, %struct.page** %46, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %40, %25
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @gfn_to_hva(%struct.kvm*, i32) #1

declare dso_local i64 @kvm_is_error_hva(i64) #1

declare dso_local i32 @get_user_pages(%struct.TYPE_5__*, i32, i64, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
