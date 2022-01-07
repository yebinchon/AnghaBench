; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_core.c_llc_sap_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_core.c_llc_sap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@LLC_SAP_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llc_sap* ()* @llc_sap_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llc_sap* @llc_sap_alloc() #0 {
  %1 = alloca %struct.llc_sap*, align 8
  %2 = load i32, i32* @GFP_ATOMIC, align 4
  %3 = call %struct.llc_sap* @kzalloc(i32 12, i32 %2)
  store %struct.llc_sap* %3, %struct.llc_sap** %1, align 8
  %4 = load %struct.llc_sap*, %struct.llc_sap** %1, align 8
  %5 = icmp ne %struct.llc_sap* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  %7 = load i32, i32* @LLC_SAP_STATE_ACTIVE, align 4
  %8 = load %struct.llc_sap*, %struct.llc_sap** %1, align 8
  %9 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.llc_sap*, %struct.llc_sap** %1, align 8
  %11 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @rwlock_init(i32* %12)
  %14 = load %struct.llc_sap*, %struct.llc_sap** %1, align 8
  %15 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %14, i32 0, i32 0
  %16 = call i32 @atomic_set(i32* %15, i32 1)
  br label %17

17:                                               ; preds = %6, %0
  %18 = load %struct.llc_sap*, %struct.llc_sap** %1, align 8
  ret %struct.llc_sap* %18
}

declare dso_local %struct.llc_sap* @kzalloc(i32, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
