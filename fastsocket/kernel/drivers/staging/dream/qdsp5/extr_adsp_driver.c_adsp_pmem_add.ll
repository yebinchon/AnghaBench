; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_driver.c_adsp_pmem_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_driver.c_adsp_pmem_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { i32, i32 }
%struct.adsp_pmem_info = type { i32, i32 }
%struct.file = type { i32 }
%struct.adsp_pmem_region = type { i64, i64, i64, i32, %struct.file*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_adsp_module*, %struct.adsp_pmem_info*)* @adsp_pmem_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_pmem_add(%struct.msm_adsp_module* %0, %struct.adsp_pmem_info* %1) #0 {
  %3 = alloca %struct.msm_adsp_module*, align 8
  %4 = alloca %struct.adsp_pmem_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.adsp_pmem_region*, align 8
  %10 = alloca i32, align 4
  store %struct.msm_adsp_module* %0, %struct.msm_adsp_module** %3, align 8
  store %struct.adsp_pmem_info* %1, %struct.adsp_pmem_info** %4, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %3, align 8
  %14 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.adsp_pmem_region* @kmalloc(i32 48, i32 %16)
  store %struct.adsp_pmem_region* %17, %struct.adsp_pmem_region** %9, align 8
  %18 = load %struct.adsp_pmem_region*, %struct.adsp_pmem_region** %9, align 8
  %19 = icmp ne %struct.adsp_pmem_region* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  br label %72

23:                                               ; preds = %2
  %24 = load %struct.adsp_pmem_region*, %struct.adsp_pmem_region** %9, align 8
  %25 = getelementptr inbounds %struct.adsp_pmem_region, %struct.adsp_pmem_region* %24, i32 0, i32 3
  %26 = call i32 @INIT_HLIST_NODE(i32* %25)
  %27 = load %struct.adsp_pmem_info*, %struct.adsp_pmem_info** %4, align 8
  %28 = getelementptr inbounds %struct.adsp_pmem_info, %struct.adsp_pmem_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @get_pmem_file(i32 %29, i64* %5, i64* %6, i64* %7, %struct.file** %8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load %struct.adsp_pmem_region*, %struct.adsp_pmem_region** %9, align 8
  %34 = call i32 @kfree(%struct.adsp_pmem_region* %33)
  br label %72

35:                                               ; preds = %23
  %36 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %3, align 8
  %37 = load %struct.adsp_pmem_info*, %struct.adsp_pmem_info** %4, align 8
  %38 = getelementptr inbounds %struct.adsp_pmem_info, %struct.adsp_pmem_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @adsp_pmem_check(%struct.msm_adsp_module* %36, i32 %39, i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.file*, %struct.file** %8, align 8
  %46 = call i32 @put_pmem_file(%struct.file* %45)
  %47 = load %struct.adsp_pmem_region*, %struct.adsp_pmem_region** %9, align 8
  %48 = call i32 @kfree(%struct.adsp_pmem_region* %47)
  br label %72

49:                                               ; preds = %35
  %50 = load %struct.adsp_pmem_info*, %struct.adsp_pmem_info** %4, align 8
  %51 = getelementptr inbounds %struct.adsp_pmem_info, %struct.adsp_pmem_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.adsp_pmem_region*, %struct.adsp_pmem_region** %9, align 8
  %54 = getelementptr inbounds %struct.adsp_pmem_region, %struct.adsp_pmem_region* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.adsp_pmem_region*, %struct.adsp_pmem_region** %9, align 8
  %57 = getelementptr inbounds %struct.adsp_pmem_region, %struct.adsp_pmem_region* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.adsp_pmem_region*, %struct.adsp_pmem_region** %9, align 8
  %60 = getelementptr inbounds %struct.adsp_pmem_region, %struct.adsp_pmem_region* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.adsp_pmem_region*, %struct.adsp_pmem_region** %9, align 8
  %63 = getelementptr inbounds %struct.adsp_pmem_region, %struct.adsp_pmem_region* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.file*, %struct.file** %8, align 8
  %65 = load %struct.adsp_pmem_region*, %struct.adsp_pmem_region** %9, align 8
  %66 = getelementptr inbounds %struct.adsp_pmem_region, %struct.adsp_pmem_region* %65, i32 0, i32 4
  store %struct.file* %64, %struct.file** %66, align 8
  %67 = load %struct.adsp_pmem_region*, %struct.adsp_pmem_region** %9, align 8
  %68 = getelementptr inbounds %struct.adsp_pmem_region, %struct.adsp_pmem_region* %67, i32 0, i32 3
  %69 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %3, align 8
  %70 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %69, i32 0, i32 1
  %71 = call i32 @hlist_add_head(i32* %68, i32* %70)
  br label %72

72:                                               ; preds = %49, %44, %32, %20
  %73 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %3, align 8
  %74 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.adsp_pmem_region* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i64 @get_pmem_file(i32, i64*, i64*, i64*, %struct.file**) #1

declare dso_local i32 @kfree(%struct.adsp_pmem_region*) #1

declare dso_local i32 @adsp_pmem_check(%struct.msm_adsp_module*, i32, i64) #1

declare dso_local i32 @put_pmem_file(%struct.file*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
