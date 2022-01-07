; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_add1_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_add1_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_mc_list = type { i32, %struct.ip_sf_list* }
%struct.ip_sf_list = type { i64, i32*, %struct.ip_sf_list* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_mc_list*, i32, i64*, i32)* @ip_mc_add1_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_mc_add1_src(%struct.ip_mc_list* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_mc_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_sf_list*, align 8
  %11 = alloca %struct.ip_sf_list*, align 8
  store %struct.ip_mc_list* %0, %struct.ip_mc_list** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ip_sf_list* null, %struct.ip_sf_list** %11, align 8
  %12 = load %struct.ip_mc_list*, %struct.ip_mc_list** %6, align 8
  %13 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %12, i32 0, i32 1
  %14 = load %struct.ip_sf_list*, %struct.ip_sf_list** %13, align 8
  store %struct.ip_sf_list* %14, %struct.ip_sf_list** %10, align 8
  br label %15

15:                                               ; preds = %28, %4
  %16 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %17 = icmp ne %struct.ip_sf_list* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %20 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %32

26:                                               ; preds = %18
  %27 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  store %struct.ip_sf_list* %27, %struct.ip_sf_list** %11, align 8
  br label %28

28:                                               ; preds = %26
  %29 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %30 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %29, i32 0, i32 2
  %31 = load %struct.ip_sf_list*, %struct.ip_sf_list** %30, align 8
  store %struct.ip_sf_list* %31, %struct.ip_sf_list** %10, align 8
  br label %15

32:                                               ; preds = %25, %15
  %33 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %34 = icmp ne %struct.ip_sf_list* %33, null
  br i1 %34, label %59, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call %struct.ip_sf_list* @kzalloc(i32 24, i32 %36)
  store %struct.ip_sf_list* %37, %struct.ip_sf_list** %10, align 8
  %38 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %39 = icmp ne %struct.ip_sf_list* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOBUFS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %82

43:                                               ; preds = %35
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %47 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ip_sf_list*, %struct.ip_sf_list** %11, align 8
  %49 = icmp ne %struct.ip_sf_list* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %52 = load %struct.ip_sf_list*, %struct.ip_sf_list** %11, align 8
  %53 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %52, i32 0, i32 2
  store %struct.ip_sf_list* %51, %struct.ip_sf_list** %53, align 8
  br label %58

54:                                               ; preds = %43
  %55 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %56 = load %struct.ip_mc_list*, %struct.ip_mc_list** %6, align 8
  %57 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %56, i32 0, i32 1
  store %struct.ip_sf_list* %55, %struct.ip_sf_list** %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %32
  %60 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %61 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.ip_sf_list*, %struct.ip_sf_list** %10, align 8
  %69 = getelementptr inbounds %struct.ip_sf_list, %struct.ip_sf_list* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %81

76:                                               ; preds = %59
  %77 = load %struct.ip_mc_list*, %struct.ip_mc_list** %6, align 8
  %78 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ip_rt_multicast_event(i32 %79)
  br label %81

81:                                               ; preds = %76, %59
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %40
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.ip_sf_list* @kzalloc(i32, i32) #1

declare dso_local i32 @ip_rt_multicast_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
