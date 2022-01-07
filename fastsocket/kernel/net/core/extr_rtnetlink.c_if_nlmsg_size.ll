; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_if_nlmsg_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_if_nlmsg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@IFALIASZ = common dso_local global i32 0, align 4
@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@RTEXT_FILTER_VF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*, i32)* @if_nlmsg_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @if_nlmsg_size(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i64 @NLMSG_ALIGN(i32 4)
  %6 = load i32, i32* @IFNAMSIZ, align 4
  %7 = call i64 @nla_total_size(i32 %6)
  %8 = add i64 %5, %7
  %9 = load i32, i32* @IFALIASZ, align 4
  %10 = call i64 @nla_total_size(i32 %9)
  %11 = add i64 %8, %10
  %12 = load i32, i32* @IFNAMSIZ, align 4
  %13 = call i64 @nla_total_size(i32 %12)
  %14 = add i64 %11, %13
  %15 = call i64 @nla_total_size(i32 4)
  %16 = add i64 %14, %15
  %17 = call i64 @nla_total_size(i32 4)
  %18 = add i64 %16, %17
  %19 = call i64 @nla_total_size(i32 4)
  %20 = add i64 %18, %19
  %21 = load i32, i32* @MAX_ADDR_LEN, align 4
  %22 = call i64 @nla_total_size(i32 %21)
  %23 = add i64 %20, %22
  %24 = load i32, i32* @MAX_ADDR_LEN, align 4
  %25 = call i64 @nla_total_size(i32 %24)
  %26 = add i64 %23, %25
  %27 = call i64 @nla_total_size(i32 4)
  %28 = add i64 %26, %27
  %29 = call i64 @nla_total_size(i32 4)
  %30 = add i64 %28, %29
  %31 = call i64 @nla_total_size(i32 4)
  %32 = add i64 %30, %31
  %33 = call i64 @nla_total_size(i32 4)
  %34 = add i64 %32, %33
  %35 = call i64 @nla_total_size(i32 4)
  %36 = add i64 %34, %35
  %37 = call i64 @nla_total_size(i32 1)
  %38 = add i64 %36, %37
  %39 = call i64 @nla_total_size(i32 1)
  %40 = add i64 %38, %39
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @RTEXT_FILTER_VF, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 4, i32 0
  %47 = call i64 @nla_total_size(i32 %46)
  %48 = add i64 %40, %47
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @rtnl_vfinfo_size(%struct.net_device* %49, i32 %50)
  %52 = add i64 %48, %51
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i64 @rtnl_port_size(%struct.net_device* %53)
  %55 = add i64 %52, %54
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i64 @rtnl_link_get_size(%struct.net_device* %56)
  %58 = add i64 %55, %57
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i64 @rtnl_link_get_af_size(%struct.net_device* %59)
  %61 = add i64 %58, %60
  ret i64 %61
}

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i64 @rtnl_vfinfo_size(%struct.net_device*, i32) #1

declare dso_local i64 @rtnl_port_size(%struct.net_device*) #1

declare dso_local i64 @rtnl_link_get_size(%struct.net_device*) #1

declare dso_local i64 @rtnl_link_get_af_size(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
