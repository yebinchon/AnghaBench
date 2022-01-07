; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_camera.c___msm_register_pmem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_camera.c___msm_register_pmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_sync = type { i32, i32 }
%struct.msm_pmem_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_sync*, %struct.msm_pmem_info*)* @__msm_register_pmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__msm_register_pmem(%struct.msm_sync* %0, %struct.msm_pmem_info* %1) #0 {
  %3 = alloca %struct.msm_sync*, align 8
  %4 = alloca %struct.msm_pmem_info*, align 8
  %5 = alloca i32, align 4
  store %struct.msm_sync* %0, %struct.msm_sync** %3, align 8
  store %struct.msm_pmem_info* %1, %struct.msm_pmem_info** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.msm_pmem_info*, %struct.msm_pmem_info** %4, align 8
  %7 = getelementptr inbounds %struct.msm_pmem_info, %struct.msm_pmem_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %19 [
    i32 131, label %9
    i32 130, label %9
    i32 128, label %9
    i32 132, label %9
    i32 129, label %9
    i32 134, label %14
    i32 133, label %14
  ]

9:                                                ; preds = %2, %2, %2, %2, %2
  %10 = load %struct.msm_sync*, %struct.msm_sync** %3, align 8
  %11 = getelementptr inbounds %struct.msm_sync, %struct.msm_sync* %10, i32 0, i32 1
  %12 = load %struct.msm_pmem_info*, %struct.msm_pmem_info** %4, align 8
  %13 = call i32 @msm_pmem_table_add(i32* %11, %struct.msm_pmem_info* %12)
  store i32 %13, i32* %5, align 4
  br label %22

14:                                               ; preds = %2, %2
  %15 = load %struct.msm_sync*, %struct.msm_sync** %3, align 8
  %16 = getelementptr inbounds %struct.msm_sync, %struct.msm_sync* %15, i32 0, i32 0
  %17 = load %struct.msm_pmem_info*, %struct.msm_pmem_info** %4, align 8
  %18 = call i32 @msm_pmem_table_add(i32* %16, %struct.msm_pmem_info* %17)
  store i32 %18, i32* %5, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %14, %9
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @msm_pmem_table_add(i32*, %struct.msm_pmem_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
