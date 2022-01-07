; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_del1_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_del1_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_mc_list = type { %struct.ip_sf_list*, %struct.ip_sf_list*, %struct.in_device* }
%struct.ip_sf_list = type { i64, i64*, %struct.ip_sf_list*, i64, i64 }
%struct.in_device = type { i64 }

@ESRCH = common dso_local global i32 0, align 4
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@IGMP_Unsolicited_Report_Count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_mc_list*, i32, i64*)* @ip_mc_del1_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_mc_del1_src(%struct.ip_mc_list* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_mc_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ip_sf_list*, align 8
  %9 = alloca %struct.ip_sf_list*, align 8
  %10 = alloca i32, align 4
  store %struct.ip_mc_list* %0, %struct.ip_mc_list** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %10, align 4
  store %struct.ip_sf_list* null, %struct.ip_sf_list** %9, align 8
  %11 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %12 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %11, i32 0, i32 1
  %13 = load %struct.ip_sf_list*, %struct.ip_sf_list** %12, align 8
  store %struct.ip_sf_list* %13, %struct.ip_sf_list** %8, align 8
  br label %14

14:                                               ; preds = %27, %3
  %15 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %16 = icmp ne %struct.ip_sf_list* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %19 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %31

25:                                               ; preds = %17
  %26 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  store %struct.ip_sf_list* %26, %struct.ip_sf_list** %9, align 8
  br label %27

27:                                               ; preds = %25
  %28 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %29 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %28, i32 0, i32 2
  %30 = load %struct.ip_sf_list*, %struct.ip_sf_list** %29, align 8
  store %struct.ip_sf_list* %30, %struct.ip_sf_list** %8, align 8
  br label %14

31:                                               ; preds = %24, %14
  %32 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %33 = icmp ne %struct.ip_sf_list* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %36 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34, %31
  %44 = load i32, i32* @ESRCH, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %104

46:                                               ; preds = %34
  %47 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %48 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %56 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %46
  %64 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %65 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %64, i32 0, i32 2
  %66 = load %struct.in_device*, %struct.in_device** %65, align 8
  %67 = call i32 @ip_rt_multicast_event(%struct.in_device* %66)
  br label %68

68:                                               ; preds = %63, %46
  %69 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %70 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @MCAST_INCLUDE, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %102, label %76

76:                                               ; preds = %68
  %77 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %78 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* @MCAST_EXCLUDE, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %76
  %85 = load %struct.ip_sf_list*, %struct.ip_sf_list** %9, align 8
  %86 = icmp ne %struct.ip_sf_list* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %89 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %88, i32 0, i32 2
  %90 = load %struct.ip_sf_list*, %struct.ip_sf_list** %89, align 8
  %91 = load %struct.ip_sf_list*, %struct.ip_sf_list** %9, align 8
  %92 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %91, i32 0, i32 2
  store %struct.ip_sf_list* %90, %struct.ip_sf_list** %92, align 8
  br label %99

93:                                               ; preds = %84
  %94 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %95 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %94, i32 0, i32 2
  %96 = load %struct.ip_sf_list*, %struct.ip_sf_list** %95, align 8
  %97 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %98 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %97, i32 0, i32 1
  store %struct.ip_sf_list* %96, %struct.ip_sf_list** %98, align 8
  br label %99

99:                                               ; preds = %93, %87
  %100 = load %struct.ip_sf_list*, %struct.ip_sf_list** %8, align 8
  %101 = call i32 @kfree(%struct.ip_sf_list* %100)
  br label %102

102:                                              ; preds = %99, %76, %68
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %43
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @ip_rt_multicast_event(%struct.in_device*) #1

declare dso_local i32 @kfree(%struct.ip_sf_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
