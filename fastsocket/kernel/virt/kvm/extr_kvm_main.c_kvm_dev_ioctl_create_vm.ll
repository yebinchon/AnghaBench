; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_dev_ioctl_create_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_dev_ioctl_create_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"kvm-vm\00", align 1
@kvm_vm_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kvm_dev_ioctl_create_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_dev_ioctl_create_vm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm*, align 8
  %4 = call %struct.kvm* (...) @kvm_create_vm()
  store %struct.kvm* %4, %struct.kvm** %3, align 8
  %5 = load %struct.kvm*, %struct.kvm** %3, align 8
  %6 = call i64 @IS_ERR(%struct.kvm* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load %struct.kvm*, %struct.kvm** %3, align 8
  %10 = call i32 @PTR_ERR(%struct.kvm* %9)
  store i32 %10, i32* %1, align 4
  br label %21

11:                                               ; preds = %0
  %12 = load %struct.kvm*, %struct.kvm** %3, align 8
  %13 = call i32 @anon_inode_getfd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @kvm_vm_fops, %struct.kvm* %12, i32 0)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.kvm*, %struct.kvm** %3, align 8
  %18 = call i32 @kvm_put_kvm(%struct.kvm* %17)
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %8
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local %struct.kvm* @kvm_create_vm(...) #1

declare dso_local i64 @IS_ERR(%struct.kvm*) #1

declare dso_local i32 @PTR_ERR(%struct.kvm*) #1

declare dso_local i32 @anon_inode_getfd(i8*, i32*, %struct.kvm*, i32) #1

declare dso_local i32 @kvm_put_kvm(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
