; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_coalesced_mmio.c_kvm_vm_ioctl_unregister_coalesced_mmio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_coalesced_mmio.c_kvm_vm_ioctl_unregister_coalesced_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.kvm_coalesced_mmio_dev* }
%struct.kvm_coalesced_mmio_dev = type { i32, %struct.kvm_coalesced_mmio_zone* }
%struct.kvm_coalesced_mmio_zone = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_unregister_coalesced_mmio(%struct.kvm* %0, %struct.kvm_coalesced_mmio_zone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_coalesced_mmio_zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_coalesced_mmio_dev*, align 8
  %8 = alloca %struct.kvm_coalesced_mmio_zone*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_coalesced_mmio_zone* %1, %struct.kvm_coalesced_mmio_zone** %5, align 8
  %9 = load %struct.kvm*, %struct.kvm** %4, align 8
  %10 = getelementptr inbounds %struct.kvm, %struct.kvm* %9, i32 0, i32 1
  %11 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %10, align 8
  store %struct.kvm_coalesced_mmio_dev* %11, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %12 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %13 = icmp eq %struct.kvm_coalesced_mmio_dev* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %81

17:                                               ; preds = %2
  %18 = load %struct.kvm*, %struct.kvm** %4, align 8
  %19 = getelementptr inbounds %struct.kvm, %struct.kvm* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %22 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %74, %17
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %77

27:                                               ; preds = %24
  %28 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %29 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %28, i32 0, i32 1
  %30 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %30, i64 %33
  store %struct.kvm_coalesced_mmio_zone* %34, %struct.kvm_coalesced_mmio_zone** %8, align 8
  %35 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %8, align 8
  %39 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %37, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %27
  %43 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %8, align 8
  %44 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %8, align 8
  %47 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %5, align 8
  %51 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %5, align 8
  %54 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = icmp sle i64 %49, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %42
  %59 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %60 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %8, align 8
  %64 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %65 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %64, i32 0, i32 1
  %66 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %65, align 8
  %67 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %7, align 8
  %68 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %66, i64 %70
  %72 = bitcast %struct.kvm_coalesced_mmio_zone* %63 to i8*
  %73 = bitcast %struct.kvm_coalesced_mmio_zone* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 16, i1 false)
  br label %74

74:                                               ; preds = %58, %42, %27
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %6, align 4
  br label %24

77:                                               ; preds = %24
  %78 = load %struct.kvm*, %struct.kvm** %4, align 8
  %79 = getelementptr inbounds %struct.kvm, %struct.kvm* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %14
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
