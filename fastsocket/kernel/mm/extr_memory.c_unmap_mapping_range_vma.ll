; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_unmap_mapping_range_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_unmap_mapping_range_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64 }
%struct.zap_details = type { i64, i32 }

@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i64, %struct.zap_details*)* @unmap_mapping_range_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unmap_mapping_range_vma(%struct.vm_area_struct* %0, i64 %1, i64 %2, %struct.zap_details* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.zap_details*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.zap_details* %3, %struct.zap_details** %9, align 8
  br label %12

12:                                               ; preds = %73, %4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i64 @is_restart_addr(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.zap_details*, %struct.zap_details** %9, align 8
  %30 = getelementptr inbounds %struct.zap_details, %struct.zap_details* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %5, align 4
  br label %87

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %19, %12
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %38, %39
  %41 = load %struct.zap_details*, %struct.zap_details** %9, align 8
  %42 = call i64 @zap_page_range(%struct.vm_area_struct* %36, i64 %37, i64 %40, %struct.zap_details* %41)
  store i64 %42, i64* %10, align 8
  %43 = call i64 (...) @need_resched()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = load %struct.zap_details*, %struct.zap_details** %9, align 8
  %47 = getelementptr inbounds %struct.zap_details, %struct.zap_details* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @spin_needbreak(i32 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %45, %35
  %52 = phi i1 [ true, %35 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.zap_details*, %struct.zap_details** %9, align 8
  %59 = getelementptr inbounds %struct.zap_details, %struct.zap_details* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %87

66:                                               ; preds = %57
  br label %75

67:                                               ; preds = %51
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  br label %12

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %66
  %76 = load %struct.zap_details*, %struct.zap_details** %9, align 8
  %77 = getelementptr inbounds %struct.zap_details, %struct.zap_details* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @spin_unlock(i32 %78)
  %80 = call i32 (...) @cond_resched()
  %81 = load %struct.zap_details*, %struct.zap_details** %9, align 8
  %82 = getelementptr inbounds %struct.zap_details, %struct.zap_details* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @spin_lock(i32 %83)
  %85 = load i32, i32* @EINTR, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %75, %65, %28
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @is_restart_addr(i64) #1

declare dso_local i64 @zap_page_range(%struct.vm_area_struct*, i64, i64, %struct.zap_details*) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i64 @spin_needbreak(i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @spin_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
