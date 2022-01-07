; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_fib6_remove_prefsrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_fib6_remove_prefsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.net_device = type opaque
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rt6_info* }
%struct.in6_addr = type { i32 }
%struct.arg_dev_net_ip = type { %struct.in6_addr*, %struct.net*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt6_info*, i8*)* @fib6_remove_prefsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_remove_prefsrc(%struct.rt6_info* %0, i8* %1) #0 {
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.arg_dev_net_ip*
  %10 = getelementptr inbounds %struct.arg_dev_net_ip, %struct.arg_dev_net_ip* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.arg_dev_net_ip*
  %15 = getelementptr inbounds %struct.arg_dev_net_ip, %struct.arg_dev_net_ip* %14, i32 0, i32 1
  %16 = load %struct.net*, %struct.net** %15, align 8
  store %struct.net* %16, %struct.net** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.arg_dev_net_ip*
  %19 = getelementptr inbounds %struct.arg_dev_net_ip, %struct.arg_dev_net_ip* %18, i32 0, i32 0
  %20 = load %struct.in6_addr*, %struct.in6_addr** %19, align 8
  store %struct.in6_addr* %20, %struct.in6_addr** %7, align 8
  %21 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %22 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = bitcast %struct.net_device* %25 to i8*
  %27 = icmp eq i8* %24, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = icmp eq %struct.net_device* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %28, %2
  %32 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %33 = load %struct.net*, %struct.net** %6, align 8
  %34 = getelementptr inbounds %struct.net, %struct.net* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.rt6_info*, %struct.rt6_info** %35, align 8
  %37 = icmp ne %struct.rt6_info* %32, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %40 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %41 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = call i64 @ipv6_addr_equal(%struct.in6_addr* %39, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %47 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %38, %31, %28
  ret i32 0
}

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
