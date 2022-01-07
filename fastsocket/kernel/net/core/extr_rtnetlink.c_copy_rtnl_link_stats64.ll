; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_copy_rtnl_link_stats64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_copy_rtnl_link_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.net_device_stats*)* @copy_rtnl_link_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_rtnl_link_stats64(i8* %0, %struct.net_device_stats* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.rtnl_link_stats64, align 4
  store i8* %0, i8** %3, align 8
  store %struct.net_device_stats* %1, %struct.net_device_stats** %4, align 8
  %6 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %7 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %6, i32 0, i32 22
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 22
  store i32 %8, i32* %9, align 4
  %10 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %11 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %10, i32 0, i32 21
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 21
  store i32 %12, i32* %13, align 4
  %14 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %15 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %14, i32 0, i32 20
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 20
  store i32 %16, i32* %17, align 4
  %18 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %19 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %18, i32 0, i32 19
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 19
  store i32 %20, i32* %21, align 4
  %22 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %23 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %22, i32 0, i32 18
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 18
  store i32 %24, i32* %25, align 4
  %26 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %27 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %26, i32 0, i32 17
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 17
  store i32 %28, i32* %29, align 4
  %30 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %31 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %30, i32 0, i32 16
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 16
  store i32 %32, i32* %33, align 4
  %34 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %35 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %34, i32 0, i32 15
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 15
  store i32 %36, i32* %37, align 4
  %38 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %39 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %38, i32 0, i32 14
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 14
  store i32 %40, i32* %41, align 4
  %42 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %43 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %42, i32 0, i32 13
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 13
  store i32 %44, i32* %45, align 4
  %46 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %47 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %46, i32 0, i32 12
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 12
  store i32 %48, i32* %49, align 4
  %50 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %51 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 11
  store i32 %52, i32* %53, align 4
  %54 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %55 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 10
  store i32 %56, i32* %57, align 4
  %58 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %59 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 9
  store i32 %60, i32* %61, align 4
  %62 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %63 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %67 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 7
  store i32 %68, i32* %69, align 4
  %70 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %71 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 6
  store i32 %72, i32* %73, align 4
  %74 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %75 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 5
  store i32 %76, i32* %77, align 4
  %78 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %79 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 4
  store i32 %80, i32* %81, align 4
  %82 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %83 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 3
  store i32 %84, i32* %85, align 4
  %86 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %87 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 2
  store i32 %88, i32* %89, align 4
  %90 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %91 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %95 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %5, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 @memcpy(i8* %98, %struct.rtnl_link_stats64* %5, i32 92)
  ret void
}

declare dso_local i32 @memcpy(i8*, %struct.rtnl_link_stats64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
