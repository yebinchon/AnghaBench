; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c_ioapic_write_indirect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c_ioapic_write_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_ioapic = type { i32, i32, i32, i32, %union.kvm_ioapic_redirect_entry* }
%union.kvm_ioapic_redirect_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"change redir index %x val %x\0A\00", align 1
@IOAPIC_NUM_PINS = common dso_local global i32 0, align 4
@KVM_IRQCHIP_IOAPIC = common dso_local global i32 0, align 4
@IOAPIC_LEVEL_TRIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_ioapic*, i32)* @ioapic_write_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioapic_write_indirect(%struct.kvm_ioapic* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_ioapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.kvm_ioapic_redirect_entry*, align 8
  store %struct.kvm_ioapic* %0, %struct.kvm_ioapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %20 [
    i32 128, label %12
    i32 130, label %13
    i32 129, label %19
  ]

12:                                               ; preds = %2
  br label %112

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 24
  %16 = and i32 %15, 15
  %17 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %112

19:                                               ; preds = %2
  br label %112

20:                                               ; preds = %2
  %21 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 16
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ioapic_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IOAPIC_NUM_PINS, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %112

33:                                               ; preds = %20
  %34 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %34, i32 0, i32 4
  %36 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %union.kvm_ioapic_redirect_entry, %union.kvm_ioapic_redirect_entry* %36, i64 %38
  store %union.kvm_ioapic_redirect_entry* %39, %union.kvm_ioapic_redirect_entry** %8, align 8
  %40 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %41 = bitcast %union.kvm_ioapic_redirect_entry* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  %44 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %45 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %33
  %50 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %51 = bitcast %union.kvm_ioapic_redirect_entry* %50 to i32*
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 %53, 32
  %55 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %56 = bitcast %union.kvm_ioapic_redirect_entry* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %74

59:                                               ; preds = %33
  %60 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %61 = bitcast %union.kvm_ioapic_redirect_entry* %60 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = and i64 %63, -4294967296
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %68 = bitcast %union.kvm_ioapic_redirect_entry* %67 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %72 = bitcast %union.kvm_ioapic_redirect_entry* %71 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %59, %49
  %75 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %76 = call i32 @update_handled_vectors(%struct.kvm_ioapic* %75)
  %77 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %78 = bitcast %union.kvm_ioapic_redirect_entry* %77 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %74
  %85 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %86 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @KVM_IRQCHIP_IOAPIC, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @kvm_fire_mask_notifiers(i32 %87, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %74
  %93 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %94 = bitcast %union.kvm_ioapic_redirect_entry* %93 to %struct.TYPE_2__*
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IOAPIC_LEVEL_TRIG, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %92
  %100 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %101 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = shl i32 1, %103
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @ioapic_service(%struct.kvm_ioapic* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %99, %92
  br label %112

112:                                              ; preds = %32, %111, %19, %13, %12
  ret void
}

declare dso_local i32 @ioapic_debug(i8*, i32, i32) #1

declare dso_local i32 @update_handled_vectors(%struct.kvm_ioapic*) #1

declare dso_local i32 @kvm_fire_mask_notifiers(i32, i32, i32, i32) #1

declare dso_local i32 @ioapic_service(%struct.kvm_ioapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
