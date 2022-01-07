; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_allocator.c_uwb_rsv_find_best_col_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_allocator.c_uwb_rsv_find_best_col_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv_alloc_info = type { i32, i32 }

@UWB_NUM_ZONES = common dso_local global i32 0, align 4
@UWB_MAS_PER_ZONE = common dso_local global i32 0, align 4
@UWB_RSV_ALLOC_NOT_FOUND = common dso_local global i32 0, align 4
@UWB_RSV_ALLOC_FOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rsv_alloc_info*, i32)* @uwb_rsv_find_best_col_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rsv_find_best_col_alloc(%struct.uwb_rsv_alloc_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uwb_rsv_alloc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uwb_rsv_alloc_info* %0, %struct.uwb_rsv_alloc_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @UWB_NUM_ZONES, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %4, align 8
  %16 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %4, align 8
  %21 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %4, align 8
  %26 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = srem i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @UWB_MAS_PER_ZONE, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @UWB_RSV_ALLOC_NOT_FOUND, align 4
  store i32 %39, i32* %3, align 4
  br label %92

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @UWB_MAS_PER_ZONE, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @UWB_MAS_PER_ZONE, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %87, %46
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  %53 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @uwb_rsv_find_best_column_set(%struct.uwb_rsv_alloc_info* %53, i32 %54, i32 0, i32 %55)
  %57 = load i32, i32* @UWB_RSV_ALLOC_NOT_FOUND, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %87

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %83, %61
  %64 = load i32, i32* %6, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %7, align 4
  %70 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @uwb_rsv_find_best_column_set(%struct.uwb_rsv_alloc_info* %70, i32 %71, i32 %72, i32 %73)
  %75 = load i64, i64* @UWB_RSV_ALLOC_FOUND, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %4, align 8
  %79 = call i32 @uwb_rsv_fill_column_alloc(%struct.uwb_rsv_alloc_info* %78)
  %80 = load i64, i64* @UWB_RSV_ALLOC_FOUND, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %3, align 4
  br label %92

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %6, align 4
  br label %63

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86, %60
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %8, align 4
  br label %48

90:                                               ; preds = %48
  %91 = load i32, i32* @UWB_RSV_ALLOC_NOT_FOUND, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %77, %38
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @uwb_rsv_find_best_column_set(%struct.uwb_rsv_alloc_info*, i32, i32, i32) #1

declare dso_local i32 @uwb_rsv_fill_column_alloc(%struct.uwb_rsv_alloc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
