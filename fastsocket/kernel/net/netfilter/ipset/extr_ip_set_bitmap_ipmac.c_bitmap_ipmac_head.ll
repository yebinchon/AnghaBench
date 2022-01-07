; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32, %struct.bitmap_ipmac* }
%struct.bitmap_ipmac = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@IPSET_ATTR_DATA = common dso_local global i32 0, align 4
@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@IPSET_ATTR_IP_TO = common dso_local global i32 0, align 4
@IPSET_ATTR_REFERENCES = common dso_local global i32 0, align 4
@IPSET_ATTR_MEMSIZE = common dso_local global i32 0, align 4
@IPSET_ATTR_TIMEOUT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.sk_buff*)* @bitmap_ipmac_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ipmac_head(%struct.ip_set* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_set*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.bitmap_ipmac*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %9 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %8, i32 0, i32 1
  %10 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %9, align 8
  store %struct.bitmap_ipmac* %10, %struct.bitmap_ipmac** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load i32, i32* @IPSET_ATTR_DATA, align 4
  %13 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %11, i32 %12)
  store %struct.nlattr* %13, %struct.nlattr** %7, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %76

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* @IPSET_ATTR_IP, align 4
  %20 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %6, align 8
  %21 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @htonl(i32 %22)
  %24 = call i32 @NLA_PUT_IPADDR4(%struct.sk_buff* %18, i32 %19, i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* @IPSET_ATTR_IP_TO, align 4
  %27 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %6, align 8
  %28 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @htonl(i32 %29)
  %31 = call i32 @NLA_PUT_IPADDR4(%struct.sk_buff* %25, i32 %26, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* @IPSET_ATTR_REFERENCES, align 4
  %34 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %35 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @htonl(i32 %37)
  %39 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %32, i32 %33, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* @IPSET_ATTR_MEMSIZE, align 4
  %42 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %6, align 8
  %43 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %6, align 8
  %46 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = add nsw i32 %48, 1
  %50 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %6, align 8
  %51 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = sext i32 %53 to i64
  %55 = add i64 16, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @htonl(i32 %56)
  %58 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %40, i32 %41, i32 %57)
  %59 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %6, align 8
  %60 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @with_timeout(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %17
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = load i32, i32* @IPSET_ATTR_TIMEOUT, align 4
  %67 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %6, align 8
  %68 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @htonl(i32 %69)
  %71 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %65, i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %64, %17
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %75 = call i32 @ipset_nest_end(%struct.sk_buff* %73, %struct.nlattr* %74)
  store i32 0, i32* %3, align 4
  br label %79

76:                                               ; preds = %16
  %77 = load i32, i32* @EMSGSIZE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.nlattr* @ipset_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_IPADDR4(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @NLA_PUT_NET32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @with_timeout(i32) #1

declare dso_local i32 @ipset_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
