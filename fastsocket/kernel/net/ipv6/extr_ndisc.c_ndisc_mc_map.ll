; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_mc_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_mc_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.net_device = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ndisc_mc_map(%struct.in6_addr* %0, i8* %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.net_device*, %struct.net_device** %8, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %32 [
    i32 132, label %13
    i32 130, label %13
    i32 131, label %13
    i32 129, label %17
    i32 133, label %21
    i32 128, label %25
  ]

13:                                               ; preds = %4, %4, %4
  %14 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @ipv6_eth_mc_map(%struct.in6_addr* %14, i8* %15)
  store i32 0, i32* %5, align 4
  br label %48

17:                                               ; preds = %4
  %18 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @ipv6_tr_mc_map(%struct.in6_addr* %18, i8* %19)
  store i32 0, i32* %5, align 4
  br label %48

21:                                               ; preds = %4
  %22 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @ipv6_arcnet_mc_map(%struct.in6_addr* %22, i8* %23)
  store i32 0, i32* %5, align 4
  br label %48

25:                                               ; preds = %4
  %26 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @ipv6_ib_mc_map(%struct.in6_addr* %26, i32 %29, i8* %30)
  store i32 0, i32* %5, align 4
  br label %48

32:                                               ; preds = %4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.net_device*, %struct.net_device** %8, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i8* %36, i32 %39, i32 %42)
  store i32 0, i32* %5, align 4
  br label %48

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %35, %25, %21, %17, %13
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @ipv6_eth_mc_map(%struct.in6_addr*, i8*) #1

declare dso_local i32 @ipv6_tr_mc_map(%struct.in6_addr*, i8*) #1

declare dso_local i32 @ipv6_arcnet_mc_map(%struct.in6_addr*, i8*) #1

declare dso_local i32 @ipv6_ib_mc_map(%struct.in6_addr*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
