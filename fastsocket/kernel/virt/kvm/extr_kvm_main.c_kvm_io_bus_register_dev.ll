; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_io_bus_register_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_io_bus_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.kvm_io_bus** }
%struct.kvm_io_bus = type { i32, %struct.kvm_io_device** }
%struct.kvm_io_device = type { i32 }

@NR_IOBUS_DEVS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_io_bus_register_dev(%struct.kvm* %0, i32 %1, %struct.kvm_io_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_io_device*, align 8
  %8 = alloca %struct.kvm_io_bus*, align 8
  %9 = alloca %struct.kvm_io_bus*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kvm_io_device* %2, %struct.kvm_io_device** %7, align 8
  %10 = load %struct.kvm*, %struct.kvm** %5, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 1
  %12 = load %struct.kvm_io_bus**, %struct.kvm_io_bus*** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.kvm_io_bus*, %struct.kvm_io_bus** %12, i64 %14
  %16 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %15, align 8
  store %struct.kvm_io_bus* %16, %struct.kvm_io_bus** %9, align 8
  %17 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %9, align 8
  %18 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NR_IOBUS_DEVS, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOSPC, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %62

26:                                               ; preds = %3
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.kvm_io_bus* @kzalloc(i32 16, i32 %27)
  store %struct.kvm_io_bus* %28, %struct.kvm_io_bus** %8, align 8
  %29 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %8, align 8
  %30 = icmp ne %struct.kvm_io_bus* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %62

34:                                               ; preds = %26
  %35 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %8, align 8
  %36 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %9, align 8
  %37 = call i32 @memcpy(%struct.kvm_io_bus* %35, %struct.kvm_io_bus* %36, i32 16)
  %38 = load %struct.kvm_io_device*, %struct.kvm_io_device** %7, align 8
  %39 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %8, align 8
  %40 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %39, i32 0, i32 1
  %41 = load %struct.kvm_io_device**, %struct.kvm_io_device*** %40, align 8
  %42 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %8, align 8
  %43 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds %struct.kvm_io_device*, %struct.kvm_io_device** %41, i64 %46
  store %struct.kvm_io_device* %38, %struct.kvm_io_device** %47, align 8
  %48 = load %struct.kvm*, %struct.kvm** %5, align 8
  %49 = getelementptr inbounds %struct.kvm, %struct.kvm* %48, i32 0, i32 1
  %50 = load %struct.kvm_io_bus**, %struct.kvm_io_bus*** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.kvm_io_bus*, %struct.kvm_io_bus** %50, i64 %52
  %54 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %53, align 8
  %55 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %8, align 8
  %56 = call i32 @rcu_assign_pointer(%struct.kvm_io_bus* %54, %struct.kvm_io_bus* %55)
  %57 = load %struct.kvm*, %struct.kvm** %5, align 8
  %58 = getelementptr inbounds %struct.kvm, %struct.kvm* %57, i32 0, i32 0
  %59 = call i32 @synchronize_srcu_expedited(i32* %58)
  %60 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %9, align 8
  %61 = call i32 @kfree(%struct.kvm_io_bus* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %34, %31, %23
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.kvm_io_bus* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.kvm_io_bus*, %struct.kvm_io_bus*, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.kvm_io_bus*, %struct.kvm_io_bus*) #1

declare dso_local i32 @synchronize_srcu_expedited(i32*) #1

declare dso_local i32 @kfree(%struct.kvm_io_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
