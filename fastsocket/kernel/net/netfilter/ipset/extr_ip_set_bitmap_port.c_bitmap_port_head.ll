; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i64, %struct.bitmap_port* }
%struct.bitmap_port = type { i64, i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@IPSET_ATTR_DATA = common dso_local global i32 0, align 4
@IPSET_ATTR_PORT = common dso_local global i32 0, align 4
@IPSET_ATTR_PORT_TO = common dso_local global i32 0, align 4
@IPSET_ATTR_REFERENCES = common dso_local global i32 0, align 4
@IPSET_ATTR_MEMSIZE = common dso_local global i32 0, align 4
@IPSET_ATTR_TIMEOUT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.sk_buff*)* @bitmap_port_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_port_head(%struct.ip_set* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_set*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.bitmap_port*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %9 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %8, i32 0, i32 1
  %10 = load %struct.bitmap_port*, %struct.bitmap_port** %9, align 8
  store %struct.bitmap_port* %10, %struct.bitmap_port** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load i32, i32* @IPSET_ATTR_DATA, align 4
  %13 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %11, i32 %12)
  store %struct.nlattr* %13, %struct.nlattr** %7, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* @IPSET_ATTR_PORT, align 4
  %20 = load %struct.bitmap_port*, %struct.bitmap_port** %6, align 8
  %21 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @htons(i32 %22)
  %24 = call i32 @NLA_PUT_NET16(%struct.sk_buff* %18, i32 %19, i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* @IPSET_ATTR_PORT_TO, align 4
  %27 = load %struct.bitmap_port*, %struct.bitmap_port** %6, align 8
  %28 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @htons(i32 %29)
  %31 = call i32 @NLA_PUT_NET16(%struct.sk_buff* %25, i32 %26, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* @IPSET_ATTR_REFERENCES, align 4
  %34 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %35 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i32 @htonl(i64 %37)
  %39 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %32, i32 %33, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* @IPSET_ATTR_MEMSIZE, align 4
  %42 = load %struct.bitmap_port*, %struct.bitmap_port** %6, align 8
  %43 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 24, %44
  %46 = call i32 @htonl(i64 %45)
  %47 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %40, i32 %41, i32 %46)
  %48 = load %struct.bitmap_port*, %struct.bitmap_port** %6, align 8
  %49 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @with_timeout(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %17
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load i32, i32* @IPSET_ATTR_TIMEOUT, align 4
  %56 = load %struct.bitmap_port*, %struct.bitmap_port** %6, align 8
  %57 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @htonl(i64 %58)
  %60 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %54, i32 %55, i32 %59)
  br label %61

61:                                               ; preds = %53, %17
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %64 = call i32 @ipset_nest_end(%struct.sk_buff* %62, %struct.nlattr* %63)
  store i32 0, i32* %3, align 4
  br label %68

65:                                               ; preds = %16
  %66 = load i32, i32* @EMSGSIZE, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.nlattr* @ipset_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_NET16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @NLA_PUT_NET32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @with_timeout(i64) #1

declare dso_local i32 @ipset_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
