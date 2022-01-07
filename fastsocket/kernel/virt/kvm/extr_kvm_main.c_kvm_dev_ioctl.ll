; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_dev_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_dev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@KVM_API_VERSION = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @kvm_dev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_dev_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* @EINVAL, align 8
  %10 = sub nsw i64 0, %9
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %42 [
    i32 132, label %12
    i32 133, label %20
    i32 134, label %28
    i32 131, label %31
    i32 129, label %39
    i32 128, label %39
    i32 130, label %39
  ]

12:                                               ; preds = %3
  %13 = load i64, i64* @EINVAL, align 8
  %14 = sub nsw i64 0, %13
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %48

18:                                               ; preds = %12
  %19 = load i64, i64* @KVM_API_VERSION, align 8
  store i64 %19, i64* %8, align 8
  br label %47

20:                                               ; preds = %3
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %48

26:                                               ; preds = %20
  %27 = call i64 (...) @kvm_dev_ioctl_create_vm()
  store i64 %27, i64* %8, align 8
  br label %47

28:                                               ; preds = %3
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @kvm_dev_ioctl_check_extension_generic(i64 %29)
  store i64 %30, i64* %8, align 8
  br label %47

31:                                               ; preds = %3
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub nsw i64 0, %32
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %48

37:                                               ; preds = %31
  %38 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %38, i64* %8, align 8
  br label %47

39:                                               ; preds = %3, %3, %3
  %40 = load i64, i64* @EOPNOTSUPP, align 8
  %41 = sub nsw i64 0, %40
  store i64 %41, i64* %8, align 8
  br label %47

42:                                               ; preds = %3
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @kvm_arch_dev_ioctl(%struct.file* %43, i32 %44, i64 %45)
  store i64 %46, i64* %4, align 8
  br label %50

47:                                               ; preds = %39, %37, %28, %26, %18
  br label %48

48:                                               ; preds = %47, %36, %25, %17
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local i64 @kvm_dev_ioctl_create_vm(...) #1

declare dso_local i64 @kvm_dev_ioctl_check_extension_generic(i64) #1

declare dso_local i64 @kvm_arch_dev_ioctl(%struct.file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
