; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_check_mc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_check_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { i32, %struct.ip_mc_list* }
%struct.ip_mc_list = type { i64, i64*, %struct.ip_sf_list*, %struct.ip_mc_list* }
%struct.ip_sf_list = type { i64, i64*, %struct.ip_sf_list* }

@IPPROTO_IGMP = common dso_local global i64 0, align 8
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@MCAST_EXCLUDE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_check_mc(%struct.in_device* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.in_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ip_mc_list*, align 8
  %10 = alloca %struct.ip_sf_list*, align 8
  %11 = alloca i32, align 4
  store %struct.in_device* %0, %struct.in_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.in_device*, %struct.in_device** %5, align 8
  %13 = getelementptr inbounds %struct.in_device, %struct.in_device* %12, i32 0, i32 0
  %14 = call i32 @read_lock(i32* %13)
  %15 = load %struct.in_device*, %struct.in_device** %5, align 8
  %16 = getelementptr inbounds %struct.in_device, %struct.in_device* %15, i32 0, i32 1
  %17 = load %struct.ip_mc_list*, %struct.ip_mc_list** %16, align 8
  store %struct.ip_mc_list* %17, %struct.ip_mc_list** %9, align 8
  br label %18

18:                                               ; preds = %29, %4
  %19 = load %struct.ip_mc_list*, %struct.ip_mc_list** %9, align 8
  %20 = icmp ne %struct.ip_mc_list* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.ip_mc_list*, %struct.ip_mc_list** %9, align 8
  %23 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %33

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.ip_mc_list*, %struct.ip_mc_list** %9, align 8
  %31 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %30, i32 0, i32 3
  %32 = load %struct.ip_mc_list*, %struct.ip_mc_list** %31, align 8
  store %struct.ip_mc_list* %32, %struct.ip_mc_list** %9, align 8
  br label %18

33:                                               ; preds = %27, %18
  %34 = load %struct.ip_mc_list*, %struct.ip_mc_list** %9, align 8
  %35 = icmp ne %struct.ip_mc_list* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @IPPROTO_IGMP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %11, align 4
  br label %107

41:                                               ; preds = %36, %33
  %42 = load %struct.ip_mc_list*, %struct.ip_mc_list** %9, align 8
  %43 = icmp ne %struct.ip_mc_list* %42, null
  br i1 %43, label %44, label %106

44:                                               ; preds = %41
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %104

47:                                               ; preds = %44
  %48 = load %struct.ip_mc_list*, %struct.ip_mc_list** %9, align 8
  %49 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %48, i32 0, i32 2
  %50 = load %struct.ip_sf_list*, %struct.ip_sf_list** %49, align 8
  store %struct.ip_sf_list* %50, %struct.ip_sf_list** %10, align 8
  br label %51

51:                                               ; preds = %62, %47
  %52 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %53 = icmp ne %struct.ip_sf_list* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %56 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %66

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %64 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %63, i32 0, i32 2
  %65 = load %struct.ip_sf_list*, %struct.ip_sf_list** %64, align 8
  store %struct.ip_sf_list* %65, %struct.ip_sf_list** %10, align 8
  br label %51

66:                                               ; preds = %60, %51
  %67 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %68 = icmp ne %struct.ip_sf_list* %67, null
  br i1 %68, label %69, label %94

69:                                               ; preds = %66
  %70 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %71 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @MCAST_INCLUDE, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %69
  %78 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %79 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @MCAST_EXCLUDE, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ip_mc_list*, %struct.ip_mc_list** %9, align 8
  %85 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @MCAST_EXCLUDE, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %83, %89
  br label %91

91:                                               ; preds = %77, %69
  %92 = phi i1 [ true, %69 ], [ %90, %77 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %11, align 4
  br label %103

94:                                               ; preds = %66
  %95 = load %struct.ip_mc_list*, %struct.ip_mc_list** %9, align 8
  %96 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* @MCAST_EXCLUDE, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %94, %91
  br label %105

104:                                              ; preds = %44
  store i32 1, i32* %11, align 4
  br label %105

105:                                              ; preds = %104, %103
  br label %106

106:                                              ; preds = %105, %41
  br label %107

107:                                              ; preds = %106, %40
  %108 = load %struct.in_device*, %struct.in_device** %5, align 8
  %109 = getelementptr inbounds %struct.in_device, %struct.in_device* %108, i32 0, i32 0
  %110 = call i32 @read_unlock(i32* %109)
  %111 = load i32, i32* %11, align 4
  ret i32 %111
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
