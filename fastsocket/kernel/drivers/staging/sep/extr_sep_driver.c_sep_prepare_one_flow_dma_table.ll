; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_prepare_one_flow_dma_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_prepare_one_flow_dma_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i32 }
%struct.sep_lli_entry_t = type { i32, i64 }
%struct.sep_flow_context_t = type { i32 }
%struct.page = type { i32 }

@SEP_NUM_ENTRIES_OFFSET_IN_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*, i64, i64, %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t**, %struct.sep_flow_context_t*, i32)* @sep_prepare_one_flow_dma_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_prepare_one_flow_dma_table(%struct.sep_device* %0, i64 %1, i64 %2, %struct.sep_lli_entry_t* %3, %struct.sep_lli_entry_t** %4, %struct.sep_flow_context_t* %5, i32 %6) #0 {
  %8 = alloca %struct.sep_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sep_lli_entry_t*, align 8
  %12 = alloca %struct.sep_lli_entry_t**, align 8
  %13 = alloca %struct.sep_flow_context_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.sep_lli_entry_t*, align 8
  %18 = alloca %struct.sep_lli_entry_t*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.page**, align 8
  %22 = alloca i64, align 8
  store %struct.sep_device* %0, %struct.sep_device** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.sep_lli_entry_t* %3, %struct.sep_lli_entry_t** %11, align 8
  store %struct.sep_lli_entry_t** %4, %struct.sep_lli_entry_t*** %12, align 8
  store %struct.sep_flow_context_t* %5, %struct.sep_flow_context_t** %13, align 8
  store i32 %6, i32* %14, align 4
  %23 = load %struct.sep_device*, %struct.sep_device** %8, align 8
  %24 = call i32 @sep_find_free_flow_dma_table_space(%struct.sep_device* %23, i64** %19)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  br label %108

28:                                               ; preds = %7
  %29 = load i32, i32* %14, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.sep_device*, %struct.sep_device** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @sep_lock_kernel_pages(%struct.sep_device* %32, i64 %33, i64 %34, i64* %16, %struct.sep_lli_entry_t** %17, %struct.page*** %21)
  store i32 %35, i32* %15, align 4
  br label %41

36:                                               ; preds = %28
  %37 = load %struct.sep_device*, %struct.sep_device** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @sep_lock_user_pages(%struct.sep_device* %37, i64 %38, i64 %39, i64* %16, %struct.sep_lli_entry_t** %17, %struct.page*** %21)
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %108

45:                                               ; preds = %41
  %46 = load i64, i64* %16, align 8
  %47 = load i64*, i64** %19, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i64*, i64** %19, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %19, align 8
  %50 = load %struct.page**, %struct.page*** %21, align 8
  %51 = ptrtoint %struct.page** %50 to i64
  %52 = load i64*, i64** %19, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64*, i64** %19, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %19, align 8
  %55 = bitcast i64* %54 to %struct.sep_lli_entry_t*
  store %struct.sep_lli_entry_t* %55, %struct.sep_lli_entry_t** %18, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %20, align 8
  br label %56

56:                                               ; preds = %84, %45
  %57 = load i64, i64* %22, align 8
  %58 = load i64, i64* %16, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %56
  %61 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %62 = load i64, i64* %22, align 8
  %63 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %61, i64 %62
  %64 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %18, align 8
  %67 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %69 = load i64, i64* %22, align 8
  %70 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %68, i64 %69
  %71 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %18, align 8
  %74 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %76 = load i64, i64* %22, align 8
  %77 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %75, i64 %76
  %78 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %20, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %20, align 8
  %82 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %18, align 8
  %83 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %82, i32 1
  store %struct.sep_lli_entry_t* %83, %struct.sep_lli_entry_t** %18, align 8
  br label %84

84:                                               ; preds = %60
  %85 = load i64, i64* %22, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %22, align 8
  br label %56

87:                                               ; preds = %56
  %88 = load i64*, i64** %19, align 8
  %89 = call i32 @virt_to_phys(i64* %88)
  %90 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %11, align 8
  %91 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i64, i64* %16, align 8
  %93 = add i64 %92, 1
  %94 = load i64, i64* @SEP_NUM_ENTRIES_OFFSET_IN_BITS, align 8
  %95 = shl i64 %93, %94
  %96 = load i64, i64* %20, align 8
  %97 = or i64 %95, %96
  %98 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %11, align 8
  %99 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %18, align 8
  %101 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %100, i32 0, i32 0
  store i32 -1, i32* %101, align 8
  %102 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %18, align 8
  %103 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %18, align 8
  %105 = load %struct.sep_lli_entry_t**, %struct.sep_lli_entry_t*** %12, align 8
  store %struct.sep_lli_entry_t* %104, %struct.sep_lli_entry_t** %105, align 8
  %106 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %107 = call i32 @kfree(%struct.sep_lli_entry_t* %106)
  br label %108

108:                                              ; preds = %87, %44, %27
  %109 = load i32, i32* %15, align 4
  ret i32 %109
}

declare dso_local i32 @sep_find_free_flow_dma_table_space(%struct.sep_device*, i64**) #1

declare dso_local i32 @sep_lock_kernel_pages(%struct.sep_device*, i64, i64, i64*, %struct.sep_lli_entry_t**, %struct.page***) #1

declare dso_local i32 @sep_lock_user_pages(%struct.sep_device*, i64, i64, i64*, %struct.sep_lli_entry_t**, %struct.page***) #1

declare dso_local i32 @virt_to_phys(i64*) #1

declare dso_local i32 @kfree(%struct.sep_lli_entry_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
