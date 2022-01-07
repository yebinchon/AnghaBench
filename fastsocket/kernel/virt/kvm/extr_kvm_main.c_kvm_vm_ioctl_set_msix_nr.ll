; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_vm_ioctl_set_msix_nr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_vm_ioctl_set_msix_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_assigned_msix_nr = type { i32, i32 }
%struct.kvm_assigned_dev_kernel = type { i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@KVM_MAX_MSIX_PER_DEV = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_assigned_msix_nr*)* @kvm_vm_ioctl_set_msix_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vm_ioctl_set_msix_nr(%struct.kvm* %0, %struct.kvm_assigned_msix_nr* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_assigned_msix_nr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_assigned_dev_kernel*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_assigned_msix_nr* %1, %struct.kvm_assigned_msix_nr** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.kvm*, %struct.kvm** %3, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.kvm*, %struct.kvm** %3, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.kvm_assigned_msix_nr*, %struct.kvm_assigned_msix_nr** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_assigned_msix_nr, %struct.kvm_assigned_msix_nr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.kvm_assigned_dev_kernel* @kvm_find_assigned_dev(i32* %12, i32 %15)
  store %struct.kvm_assigned_dev_kernel* %16, %struct.kvm_assigned_dev_kernel** %6, align 8
  %17 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %6, align 8
  %18 = icmp ne %struct.kvm_assigned_dev_kernel* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %92

22:                                               ; preds = %2
  %23 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %6, align 8
  %24 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %88

27:                                               ; preds = %22
  %28 = load %struct.kvm_assigned_msix_nr*, %struct.kvm_assigned_msix_nr** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_assigned_msix_nr, %struct.kvm_assigned_msix_nr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %6, align 8
  %33 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %6, align 8
  %35 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %27
  %39 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %6, align 8
  %40 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @KVM_MAX_MSIX_PER_DEV, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %27
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %92

47:                                               ; preds = %38
  %48 = load %struct.kvm_assigned_msix_nr*, %struct.kvm_assigned_msix_nr** %4, align 8
  %49 = getelementptr inbounds %struct.kvm_assigned_msix_nr, %struct.kvm_assigned_msix_nr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kzalloc(i32 %53, i32 %54)
  %56 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %6, align 8
  %57 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %6, align 8
  %59 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %47
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %92

65:                                               ; preds = %47
  %66 = load %struct.kvm_assigned_msix_nr*, %struct.kvm_assigned_msix_nr** %4, align 8
  %67 = getelementptr inbounds %struct.kvm_assigned_msix_nr, %struct.kvm_assigned_msix_nr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 4, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @kzalloc(i32 %71, i32 %72)
  %74 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %6, align 8
  %75 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %6, align 8
  %77 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %65
  %81 = load %struct.kvm_assigned_dev_kernel*, %struct.kvm_assigned_dev_kernel** %6, align 8
  %82 = getelementptr inbounds %struct.kvm_assigned_dev_kernel, %struct.kvm_assigned_dev_kernel* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @kfree(i8* %83)
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %92

87:                                               ; preds = %65
  br label %91

88:                                               ; preds = %22
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %87
  br label %92

92:                                               ; preds = %91, %80, %62, %44, %19
  %93 = load %struct.kvm*, %struct.kvm** %3, align 8
  %94 = getelementptr inbounds %struct.kvm, %struct.kvm* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kvm_assigned_dev_kernel* @kvm_find_assigned_dev(i32*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
