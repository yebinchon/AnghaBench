; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_vm_ioctl_set_msix_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_vm_ioctl_set_msix_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_assigned_msix_entry = type { i64, i64, i32 }
%struct.kvm_assigned_dev_kernel = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_assigned_msix_entry*)* @kvm_vm_ioctl_set_msix_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vm_ioctl_set_msix_entry(%struct.kvm* %0, %struct.kvm_assigned_msix_entry* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_assigned_msix_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_assigned_dev_kernel*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_assigned_msix_entry* %1, %struct.kvm_assigned_msix_entry** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.kvm*, %struct.kvm** %3, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.kvm*, %struct.kvm** %3, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.kvm_assigned_msix_entry*, %struct.kvm_assigned_msix_entry** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_assigned_msix_entry, %struct.kvm_assigned_msix_entry* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.kvm_assigned_dev_kernel* @kvm_find_assigned_dev(i32* %13, i32 %16)
  store %struct.kvm_assigned_dev_kernel* %17, %struct.kvm_assigned_dev_kernel** %7, align 8
  %18 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %7, align 8
  %19 = icmp ne %struct.kvm_assigned_dev_kernel* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %98

23:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %85, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %7, align 8
  %27 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %88

30:                                               ; preds = %24
  %31 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %30
  %41 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %7, align 8
  %42 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.kvm_assigned_msix_entry*, %struct.kvm_assigned_msix_entry** %4, align 8
  %50 = getelementptr inbounds %struct.kvm_assigned_msix_entry, %struct.kvm_assigned_msix_entry* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %40, %30
  %54 = load %struct.kvm_assigned_msix_entry*, %struct.kvm_assigned_msix_entry** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_assigned_msix_entry, %struct.kvm_assigned_msix_entry* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %7, align 8
  %58 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i64 %56, i64* %63, align 8
  %64 = load %struct.kvm_assigned_msix_entry*, %struct.kvm_assigned_msix_entry** %4, align 8
  %65 = getelementptr inbounds %struct.kvm_assigned_msix_entry, %struct.kvm_assigned_msix_entry* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %7, align 8
  %68 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i64 %66, i64* %73, align 8
  %74 = load %struct.kvm_assigned_msix_entry*, %struct.kvm_assigned_msix_entry** %4, align 8
  %75 = getelementptr inbounds %struct.kvm_assigned_msix_entry, %struct.kvm_assigned_msix_entry* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %7, align 8
  %78 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i64 %76, i64* %83, align 8
  br label %88

84:                                               ; preds = %40
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %24

88:                                               ; preds = %53, %24
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %7, align 8
  %91 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @ENOSPC, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %98

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %94, %20
  %99 = load %struct.kvm*, %struct.kvm** %3, align 8
  %100 = getelementptr inbounds %struct.kvm, %struct.kvm* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kvm_assigned_dev_kernel* @kvm_find_assigned_dev(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
