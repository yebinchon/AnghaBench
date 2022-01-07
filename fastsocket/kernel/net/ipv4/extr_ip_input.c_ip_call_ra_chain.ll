; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_input.c_ip_call_ra_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_input.c_ip_call_ra_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_ra_chain = type { %struct.sock*, %struct.ip_ra_chain* }
%struct.sock = type { i64 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@ip_ra_lock = common dso_local global i32 0, align 4
@ip_ra_chain = common dso_local global %struct.ip_ra_chain* null, align 8
@IP_MF = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@IP_DEFRAG_CALL_RA_CHAIN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_call_ra_chain(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ip_ra_chain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call %struct.TYPE_3__* @ip_hdr(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  store %struct.sock* null, %struct.sock** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %7, align 8
  %17 = call i32 @read_lock(i32* @ip_ra_lock)
  %18 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** @ip_ra_chain, align 8
  store %struct.ip_ra_chain* %18, %struct.ip_ra_chain** %4, align 8
  br label %19

19:                                               ; preds = %90, %1
  %20 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %4, align 8
  %21 = icmp ne %struct.ip_ra_chain* %20, null
  br i1 %21, label %22, label %94

22:                                               ; preds = %19
  %23 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %4, align 8
  %24 = getelementptr inbounds %struct.ip_ra_chain, %struct.ip_ra_chain* %23, i32 0, i32 0
  %25 = load %struct.sock*, %struct.sock** %24, align 8
  store %struct.sock* %25, %struct.sock** %8, align 8
  %26 = load %struct.sock*, %struct.sock** %8, align 8
  %27 = icmp ne %struct.sock* %26, null
  br i1 %27, label %28, label %89

28:                                               ; preds = %22
  %29 = load %struct.sock*, %struct.sock** %8, align 8
  %30 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %89

35:                                               ; preds = %28
  %36 = load %struct.sock*, %struct.sock** %8, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.sock*, %struct.sock** %8, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %89

48:                                               ; preds = %40, %35
  %49 = load %struct.sock*, %struct.sock** %8, align 8
  %50 = call i64 @sock_net(%struct.sock* %49)
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = call i64 @dev_net(%struct.net_device* %51)
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %48
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = call %struct.TYPE_3__* @ip_hdr(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IP_MF, align 4
  %60 = load i32, i32* @IP_OFFSET, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @htons(i32 %61)
  %63 = and i32 %58, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %54
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = load i32, i32* @IP_DEFRAG_CALL_RA_CHAIN, align 4
  %68 = call i64 @ip_defrag(%struct.sk_buff* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @read_unlock(i32* @ip_ra_lock)
  store i32 1, i32* %2, align 4
  br label %104

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.sock*, %struct.sock** %6, align 8
  %75 = icmp ne %struct.sock* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = load i32, i32* @GFP_ATOMIC, align 4
  %79 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %77, i32 %78)
  store %struct.sk_buff* %79, %struct.sk_buff** %9, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = icmp ne %struct.sk_buff* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.sock*, %struct.sock** %6, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %85 = call i32 @raw_rcv(%struct.sock* %83, %struct.sk_buff* %84)
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %73
  %88 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %88, %struct.sock** %6, align 8
  br label %89

89:                                               ; preds = %87, %48, %40, %28, %22
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %4, align 8
  %92 = getelementptr inbounds %struct.ip_ra_chain, %struct.ip_ra_chain* %91, i32 0, i32 1
  %93 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %92, align 8
  store %struct.ip_ra_chain* %93, %struct.ip_ra_chain** %4, align 8
  br label %19

94:                                               ; preds = %19
  %95 = load %struct.sock*, %struct.sock** %6, align 8
  %96 = icmp ne %struct.sock* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.sock*, %struct.sock** %6, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %100 = call i32 @raw_rcv(%struct.sock* %98, %struct.sk_buff* %99)
  %101 = call i32 @read_unlock(i32* @ip_ra_lock)
  store i32 1, i32* %2, align 4
  br label %104

102:                                              ; preds = %94
  %103 = call i32 @read_unlock(i32* @ip_ra_lock)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %97, %70
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.TYPE_3__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @inet_sk(%struct.sock*) #1

declare dso_local i64 @sock_net(%struct.sock*) #1

declare dso_local i64 @dev_net(%struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @ip_defrag(%struct.sk_buff*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @raw_rcv(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
