; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_allocator.c_uwb_rsv_fill_row_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_allocator.c_uwb_rsv_fill_row_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv_alloc_info = type { i8*, i64, i64, i64, %struct.uwb_rsv_row_info }
%struct.uwb_rsv_row_info = type { i32*, i32 }

@UWB_RSV_MAS_SAFE = common dso_local global i8 0, align 1
@UWB_MAS_PER_ZONE = common dso_local global i32 0, align 4
@UWB_RSV_MAS_UNSAFE = common dso_local global i8 0, align 1
@UWB_NUM_ZONES = common dso_local global i32 0, align 4
@UWB_RSV_MAS_NOT_AVAIL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rsv_alloc_info*)* @uwb_rsv_fill_row_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_rsv_fill_row_alloc(%struct.uwb_rsv_alloc_info* %0) #0 {
  %2 = alloca %struct.uwb_rsv_alloc_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uwb_rsv_row_info*, align 8
  %8 = alloca i8, align 1
  store %struct.uwb_rsv_alloc_info* %0, %struct.uwb_rsv_alloc_info** %2, align 8
  %9 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %2, align 8
  %10 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %2, align 8
  %13 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %12, i32 0, i32 4
  store %struct.uwb_rsv_row_info* %13, %struct.uwb_rsv_row_info** %7, align 8
  store i32 1, i32* %5, align 4
  %14 = load i8, i8* @UWB_RSV_MAS_SAFE, align 1
  store i8 %14, i8* %8, align 1
  %15 = load i32, i32* @UWB_MAS_PER_ZONE, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %95, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %98

20:                                               ; preds = %17
  %21 = load %struct.uwb_rsv_row_info*, %struct.uwb_rsv_row_info** %7, align 8
  %22 = getelementptr inbounds %struct.uwb_rsv_row_info, %struct.uwb_rsv_row_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %94

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.uwb_rsv_row_info*, %struct.uwb_rsv_row_info** %7, align 8
  %32 = getelementptr inbounds %struct.uwb_rsv_row_info, %struct.uwb_rsv_row_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %98

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = icmp sgt i32 %37, 7
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i8, i8* @UWB_RSV_MAS_UNSAFE, align 1
  store i8 %40, i8* %8, align 1
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %88, %42
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @UWB_NUM_ZONES, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %91

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @UWB_NUM_ZONES, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %48, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @UWB_RSV_MAS_NOT_AVAIL, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %47
  %62 = load i8, i8* %8, align 1
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @UWB_NUM_ZONES, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %63, i64 %69
  store i8 %62, i8* %70, align 1
  %71 = load i8, i8* %8, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @UWB_RSV_MAS_SAFE, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %61
  %77 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %2, align 8
  %78 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  br label %86

81:                                               ; preds = %61
  %82 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %2, align 8
  %83 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %81, %76
  br label %87

87:                                               ; preds = %86, %47
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %43

91:                                               ; preds = %43
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %20
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %3, align 4
  br label %17

98:                                               ; preds = %35, %17
  %99 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %2, align 8
  %100 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %2, align 8
  %103 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %101, %104
  %106 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %2, align 8
  %107 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %106, i32 0, i32 3
  store i64 %105, i64* %107, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
