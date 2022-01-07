; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-spy.c_wireless_spy_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-spy.c_wireless_spy_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_quality = type { i64 }
%struct.iw_spy_data = type { i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i32*, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wireless_spy_update(%struct.net_device* %0, i8* %1, %struct.iw_quality* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iw_quality*, align 8
  %7 = alloca %struct.iw_spy_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.iw_quality* %2, %struct.iw_quality** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.iw_spy_data* @get_spydata(%struct.net_device* %10)
  store %struct.iw_spy_data* %11, %struct.iw_spy_data** %7, align 8
  store i32 -1, i32* %9, align 4
  %12 = load %struct.iw_spy_data*, %struct.iw_spy_data** %7, align 8
  %13 = icmp ne %struct.iw_spy_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %104

15:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %44, %15
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.iw_spy_data*, %struct.iw_spy_data** %7, align 8
  %19 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.iw_spy_data*, %struct.iw_spy_data** %7, align 8
  %25 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ether_addr_equal(i8* %23, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %22
  %34 = load %struct.iw_spy_data*, %struct.iw_spy_data** %7, align 8
  %35 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.iw_quality*, %struct.iw_quality** %6, align 8
  %41 = call i32 @memcpy(i32* %39, %struct.iw_quality* %40, i32 8)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %33, %22
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %16

47:                                               ; preds = %16
  %48 = load i32, i32* %9, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %104

50:                                               ; preds = %47
  %51 = load %struct.iw_spy_data*, %struct.iw_spy_data** %7, align 8
  %52 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %50
  %60 = load %struct.iw_quality*, %struct.iw_quality** %6, align 8
  %61 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.iw_spy_data*, %struct.iw_spy_data** %7, align 8
  %64 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %62, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %59
  %69 = load %struct.iw_spy_data*, %struct.iw_spy_data** %7, align 8
  %70 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 0, i32* %74, align 4
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = load %struct.iw_spy_data*, %struct.iw_spy_data** %7, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.iw_quality*, %struct.iw_quality** %6, align 8
  %79 = call i32 @iw_send_thrspy_event(%struct.net_device* %75, %struct.iw_spy_data* %76, i8* %77, %struct.iw_quality* %78)
  br label %80

80:                                               ; preds = %68, %59
  br label %103

81:                                               ; preds = %50
  %82 = load %struct.iw_quality*, %struct.iw_quality** %6, align 8
  %83 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.iw_spy_data*, %struct.iw_spy_data** %7, align 8
  %86 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %84, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %81
  %91 = load %struct.iw_spy_data*, %struct.iw_spy_data** %7, align 8
  %92 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 1, i32* %96, align 4
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = load %struct.iw_spy_data*, %struct.iw_spy_data** %7, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load %struct.iw_quality*, %struct.iw_quality** %6, align 8
  %101 = call i32 @iw_send_thrspy_event(%struct.net_device* %97, %struct.iw_spy_data* %98, i8* %99, %struct.iw_quality* %100)
  br label %102

102:                                              ; preds = %90, %81
  br label %103

103:                                              ; preds = %102, %80
  br label %104

104:                                              ; preds = %14, %103, %47
  ret void
}

declare dso_local %struct.iw_spy_data* @get_spydata(%struct.net_device*) #1

declare dso_local i64 @ether_addr_equal(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.iw_quality*, i32) #1

declare dso_local i32 @iw_send_thrspy_event(%struct.net_device*, %struct.iw_spy_data*, i8*, %struct.iw_quality*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
