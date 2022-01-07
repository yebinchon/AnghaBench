; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_io_bus_unregister_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_io_bus_unregister_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.kvm_io_bus** }
%struct.kvm_io_bus = type { i32, %struct.kvm_io_device** }
%struct.kvm_io_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_io_bus_unregister_dev(%struct.kvm* %0, i32 %1, %struct.kvm_io_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_io_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm_io_bus*, align 8
  %11 = alloca %struct.kvm_io_bus*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kvm_io_device* %2, %struct.kvm_io_device** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.kvm_io_bus* @kzalloc(i32 16, i32 %12)
  store %struct.kvm_io_bus* %13, %struct.kvm_io_bus** %10, align 8
  %14 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %10, align 8
  %15 = icmp ne %struct.kvm_io_bus* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %92

19:                                               ; preds = %3
  %20 = load %struct.kvm*, %struct.kvm** %5, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 1
  %22 = load %struct.kvm_io_bus**, %struct.kvm_io_bus*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.kvm_io_bus*, %struct.kvm_io_bus** %22, i64 %24
  %26 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %25, align 8
  store %struct.kvm_io_bus* %26, %struct.kvm_io_bus** %11, align 8
  %27 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %10, align 8
  %28 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %11, align 8
  %29 = call i32 @memcpy(%struct.kvm_io_bus* %27, %struct.kvm_io_bus* %28, i32 16)
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %66, %19
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %10, align 8
  %35 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %32
  %39 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %10, align 8
  %40 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %39, i32 0, i32 1
  %41 = load %struct.kvm_io_device**, %struct.kvm_io_device*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.kvm_io_device*, %struct.kvm_io_device** %41, i64 %43
  %45 = load %struct.kvm_io_device*, %struct.kvm_io_device** %44, align 8
  %46 = load %struct.kvm_io_device*, %struct.kvm_io_device** %7, align 8
  %47 = icmp eq %struct.kvm_io_device* %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  %49 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %10, align 8
  %50 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %49, i32 0, i32 1
  %51 = load %struct.kvm_io_device**, %struct.kvm_io_device*** %50, align 8
  %52 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %10, align 8
  %53 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.kvm_io_device*, %struct.kvm_io_device** %51, i64 %56
  %58 = load %struct.kvm_io_device*, %struct.kvm_io_device** %57, align 8
  %59 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %10, align 8
  %60 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %59, i32 0, i32 1
  %61 = load %struct.kvm_io_device**, %struct.kvm_io_device*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.kvm_io_device*, %struct.kvm_io_device** %61, i64 %63
  store %struct.kvm_io_device* %58, %struct.kvm_io_device** %64, align 8
  br label %69

65:                                               ; preds = %38
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %32

69:                                               ; preds = %48, %32
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %10, align 8
  %74 = call i32 @kfree(%struct.kvm_io_bus* %73)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %92

76:                                               ; preds = %69
  %77 = load %struct.kvm*, %struct.kvm** %5, align 8
  %78 = getelementptr inbounds %struct.kvm, %struct.kvm* %77, i32 0, i32 1
  %79 = load %struct.kvm_io_bus**, %struct.kvm_io_bus*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.kvm_io_bus*, %struct.kvm_io_bus** %79, i64 %81
  %83 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %82, align 8
  %84 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %10, align 8
  %85 = call i32 @rcu_assign_pointer(%struct.kvm_io_bus* %83, %struct.kvm_io_bus* %84)
  %86 = load %struct.kvm*, %struct.kvm** %5, align 8
  %87 = getelementptr inbounds %struct.kvm, %struct.kvm* %86, i32 0, i32 0
  %88 = call i32 @synchronize_srcu_expedited(i32* %87)
  %89 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %11, align 8
  %90 = call i32 @kfree(%struct.kvm_io_bus* %89)
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %76, %72, %16
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.kvm_io_bus* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.kvm_io_bus*, %struct.kvm_io_bus*, i32) #1

declare dso_local i32 @kfree(%struct.kvm_io_bus*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.kvm_io_bus*, %struct.kvm_io_bus*) #1

declare dso_local i32 @synchronize_srcu_expedited(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
