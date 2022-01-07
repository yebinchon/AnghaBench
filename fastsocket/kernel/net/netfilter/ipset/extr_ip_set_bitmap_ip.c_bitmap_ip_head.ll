; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_bitmap_ip_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_bitmap_ip_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i64, %struct.bitmap_ip* }
%struct.bitmap_ip = type { i32, i64, i64, i64, i64 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@IPSET_ATTR_DATA = common dso_local global i32 0, align 4
@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@IPSET_ATTR_IP_TO = common dso_local global i32 0, align 4
@IPSET_ATTR_NETMASK = common dso_local global i32 0, align 4
@IPSET_ATTR_REFERENCES = common dso_local global i32 0, align 4
@IPSET_ATTR_MEMSIZE = common dso_local global i32 0, align 4
@IPSET_ATTR_TIMEOUT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.sk_buff*)* @bitmap_ip_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ip_head(%struct.ip_set* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_set*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.bitmap_ip*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %9 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %8, i32 0, i32 1
  %10 = load %struct.bitmap_ip*, %struct.bitmap_ip** %9, align 8
  store %struct.bitmap_ip* %10, %struct.bitmap_ip** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load i32, i32* @IPSET_ATTR_DATA, align 4
  %13 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %11, i32 %12)
  store %struct.nlattr* %13, %struct.nlattr** %7, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %77

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* @IPSET_ATTR_IP, align 4
  %20 = load %struct.bitmap_ip*, %struct.bitmap_ip** %6, align 8
  %21 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @htonl(i64 %22)
  %24 = call i32 @NLA_PUT_IPADDR4(%struct.sk_buff* %18, i32 %19, i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* @IPSET_ATTR_IP_TO, align 4
  %27 = load %struct.bitmap_ip*, %struct.bitmap_ip** %6, align 8
  %28 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @htonl(i64 %29)
  %31 = call i32 @NLA_PUT_IPADDR4(%struct.sk_buff* %25, i32 %26, i32 %30)
  %32 = load %struct.bitmap_ip*, %struct.bitmap_ip** %6, align 8
  %33 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 32
  br i1 %35, label %36, label %43

36:                                               ; preds = %17
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* @IPSET_ATTR_NETMASK, align 4
  %39 = load %struct.bitmap_ip*, %struct.bitmap_ip** %6, align 8
  %40 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @NLA_PUT_U8(%struct.sk_buff* %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %17
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load i32, i32* @IPSET_ATTR_REFERENCES, align 4
  %46 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %47 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @htonl(i64 %49)
  %51 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %44, i32 %45, i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load i32, i32* @IPSET_ATTR_MEMSIZE, align 4
  %54 = load %struct.bitmap_ip*, %struct.bitmap_ip** %6, align 8
  %55 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add i64 40, %56
  %58 = call i32 @htonl(i64 %57)
  %59 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %52, i32 %53, i32 %58)
  %60 = load %struct.bitmap_ip*, %struct.bitmap_ip** %6, align 8
  %61 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @with_timeout(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %43
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = load i32, i32* @IPSET_ATTR_TIMEOUT, align 4
  %68 = load %struct.bitmap_ip*, %struct.bitmap_ip** %6, align 8
  %69 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @htonl(i64 %70)
  %72 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %66, i32 %67, i32 %71)
  br label %73

73:                                               ; preds = %65, %43
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %76 = call i32 @ipset_nest_end(%struct.sk_buff* %74, %struct.nlattr* %75)
  store i32 0, i32* %3, align 4
  br label %80

77:                                               ; preds = %16
  %78 = load i32, i32* @EMSGSIZE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.nlattr* @ipset_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_IPADDR4(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @NLA_PUT_U8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT_NET32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @with_timeout(i64) #1

declare dso_local i32 @ipset_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
