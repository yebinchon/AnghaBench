; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_eventfd.c_kvm_ioeventfd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_eventfd.c_kvm_ioeventfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_ioeventfd = type { i32 }

@KVM_IOEVENTFD_FLAG_DEASSIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_ioeventfd(%struct.kvm* %0, %struct.kvm_ioeventfd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_ioeventfd*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_ioeventfd* %1, %struct.kvm_ioeventfd** %5, align 8
  %6 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %7 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @KVM_IOEVENTFD_FLAG_DEASSIGN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.kvm*, %struct.kvm** %4, align 8
  %14 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %15 = call i32 @kvm_deassign_ioeventfd(%struct.kvm* %13, %struct.kvm_ioeventfd* %14)
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.kvm*, %struct.kvm** %4, align 8
  %18 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %19 = call i32 @kvm_assign_ioeventfd(%struct.kvm* %17, %struct.kvm_ioeventfd* %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @kvm_deassign_ioeventfd(%struct.kvm*, %struct.kvm_ioeventfd*) #1

declare dso_local i32 @kvm_assign_ioeventfd(%struct.kvm*, %struct.kvm_ioeventfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
