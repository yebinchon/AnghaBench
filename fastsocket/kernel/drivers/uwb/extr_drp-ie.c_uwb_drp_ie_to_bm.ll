; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp-ie.c_uwb_drp_ie_to_bm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp-ie.c_uwb_drp_ie_to_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_mas_bm = type { i32 }
%struct.uwb_ie_drp = type { %struct.uwb_drp_alloc*, %struct.TYPE_2__ }
%struct.uwb_drp_alloc = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@UWB_NUM_MAS = common dso_local global i32 0, align 4
@UWB_NUM_ZONES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_drp_ie_to_bm(%struct.uwb_mas_bm* %0, %struct.uwb_ie_drp* %1) #0 {
  %3 = alloca %struct.uwb_mas_bm*, align 8
  %4 = alloca %struct.uwb_ie_drp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uwb_drp_alloc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uwb_mas_bm* %0, %struct.uwb_mas_bm** %3, align 8
  store %struct.uwb_ie_drp* %1, %struct.uwb_ie_drp** %4, align 8
  %12 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %13 = getelementptr inbounds %struct.uwb_ie_drp, %struct.uwb_ie_drp* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 4
  %17 = sdiv i32 %16, 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %3, align 8
  %19 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @UWB_NUM_MAS, align 4
  %22 = call i32 @bitmap_zero(i32 %20, i32 %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %63, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %29 = getelementptr inbounds %struct.uwb_ie_drp, %struct.uwb_ie_drp* %28, i32 0, i32 0
  %30 = load %struct.uwb_drp_alloc*, %struct.uwb_drp_alloc** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %30, i64 %32
  store %struct.uwb_drp_alloc* %33, %struct.uwb_drp_alloc** %6, align 8
  %34 = load %struct.uwb_drp_alloc*, %struct.uwb_drp_alloc** %6, align 8
  %35 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.uwb_drp_alloc*, %struct.uwb_drp_alloc** %6, align 8
  %39 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  store i32 %41, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %59, %27
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @UWB_NUM_ZONES, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 1, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %3, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @uwb_drp_ie_single_zone_to_bm(%struct.uwb_mas_bm* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %46
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %42

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %23

66:                                               ; preds = %23
  ret void
}

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @uwb_drp_ie_single_zone_to_bm(%struct.uwb_mas_bm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
