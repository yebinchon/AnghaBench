; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c_ioapic_service.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c_ioapic_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_ioapic = type { %union.kvm_ioapic_redirect_entry* }
%union.kvm_ioapic_redirect_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@IOAPIC_LEVEL_TRIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_ioapic*, i32)* @ioapic_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioapic_service(%struct.kvm_ioapic* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_ioapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.kvm_ioapic_redirect_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_ioapic* %0, %struct.kvm_ioapic** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  %7 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %7, i32 0, i32 0
  %9 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %union.kvm_ioapic_redirect_entry, %union.kvm_ioapic_redirect_entry* %9, i64 %11
  store %union.kvm_ioapic_redirect_entry* %12, %union.kvm_ioapic_redirect_entry** %5, align 8
  %13 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %5, align 8
  %14 = bitcast %union.kvm_ioapic_redirect_entry* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %2
  %19 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ioapic_deliver(%struct.kvm_ioapic* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %5, align 8
  %26 = bitcast %union.kvm_ioapic_redirect_entry* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IOAPIC_LEVEL_TRIG, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %5, align 8
  %33 = bitcast %union.kvm_ioapic_redirect_entry* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %24, %18
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @ioapic_deliver(%struct.kvm_ioapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
