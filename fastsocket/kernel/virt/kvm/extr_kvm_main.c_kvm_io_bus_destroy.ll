; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_io_bus_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_io_bus_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_io_bus = type { i32, %struct.kvm_io_device** }
%struct.kvm_io_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_io_bus*)* @kvm_io_bus_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_io_bus_destroy(%struct.kvm_io_bus* %0) #0 {
  %2 = alloca %struct.kvm_io_bus*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_io_device*, align 8
  store %struct.kvm_io_bus* %0, %struct.kvm_io_bus** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %5
  %12 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %2, align 8
  %13 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %12, i32 0, i32 1
  %14 = load %struct.kvm_io_device**, %struct.kvm_io_device*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.kvm_io_device*, %struct.kvm_io_device** %14, i64 %16
  %18 = load %struct.kvm_io_device*, %struct.kvm_io_device** %17, align 8
  store %struct.kvm_io_device* %18, %struct.kvm_io_device** %4, align 8
  %19 = load %struct.kvm_io_device*, %struct.kvm_io_device** %4, align 8
  %20 = call i32 @kvm_iodevice_destructor(%struct.kvm_io_device* %19)
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %5

24:                                               ; preds = %5
  %25 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %2, align 8
  %26 = call i32 @kfree(%struct.kvm_io_bus* %25)
  ret void
}

declare dso_local i32 @kvm_iodevice_destructor(%struct.kvm_io_device*) #1

declare dso_local i32 @kfree(%struct.kvm_io_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
