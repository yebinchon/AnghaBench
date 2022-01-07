; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c___udp4_lib_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c___udp4_lib_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.sk_buff = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.udp_table = type { i32 }
%struct.inet_sock = type { i32, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.udphdr = type { i32, i32 }
%struct.sock = type { i64, i32, i32 (%struct.sock*)* }
%struct.net = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@IP_PMTUDISC_DONT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NR_ICMP_UNREACH = common dso_local global i32 0, align 4
@icmp_err_convert = common dso_local global %struct.TYPE_5__* null, align 8
@TCP_ESTABLISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__udp4_lib_err(%struct.sk_buff* %0, i32 %1, %struct.udp_table* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.udp_table*, align 8
  %7 = alloca %struct.inet_sock*, align 8
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca %struct.udphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.udp_table* %2, %struct.udp_table** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.iphdr*
  store %struct.iphdr* %19, %struct.iphdr** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %22, %27
  %29 = inttoptr i64 %28 to %struct.udphdr*
  store %struct.udphdr* %29, %struct.udphdr** %9, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call %struct.net* @dev_net(%struct.TYPE_6__* %40)
  store %struct.net* %41, %struct.net** %15, align 8
  %42 = load %struct.net*, %struct.net** %15, align 8
  %43 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %47 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %53 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.udp_table*, %struct.udp_table** %6, align 8
  %61 = call %struct.sock* @__udp4_lib_lookup(%struct.net* %42, i32 %45, i32 %48, i32 %51, i32 %54, i32 %59, %struct.udp_table* %60)
  store %struct.sock* %61, %struct.sock** %12, align 8
  %62 = load %struct.sock*, %struct.sock** %12, align 8
  %63 = icmp eq %struct.sock* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %3
  %65 = load %struct.net*, %struct.net** %15, align 8
  %66 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %67 = call i32 @ICMP_INC_STATS_BH(%struct.net* %65, i32 %66)
  br label %150

68:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %69 = load %struct.sock*, %struct.sock** %12, align 8
  %70 = call %struct.inet_sock* @inet_sk(%struct.sock* %69)
  store %struct.inet_sock* %70, %struct.inet_sock** %7, align 8
  %71 = load i32, i32* %10, align 4
  switch i32 %71, label %72 [
    i32 128, label %73
    i32 129, label %75
    i32 130, label %76
    i32 131, label %78
  ]

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %68, %72
  %74 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %74, i32* %14, align 4
  br label %110

75:                                               ; preds = %68
  br label %147

76:                                               ; preds = %68
  %77 = load i32, i32* @EPROTO, align 4
  store i32 %77, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %110

78:                                               ; preds = %68
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %84 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IP_PMTUDISC_DONT, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @EMSGSIZE, align 4
  store i32 %89, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %110

90:                                               ; preds = %82
  br label %147

91:                                               ; preds = %78
  %92 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @NR_ICMP_UNREACH, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** @icmp_err_convert, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %13, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** @icmp_err_convert, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %96, %91
  br label %110

110:                                              ; preds = %109, %88, %76, %73
  %111 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %112 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.sock*, %struct.sock** %12, align 8
  %120 = getelementptr inbounds %struct.sock, %struct.sock* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @TCP_ESTABLISHED, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118, %115
  br label %147

125:                                              ; preds = %118
  br label %138

126:                                              ; preds = %110
  %127 = load %struct.sock*, %struct.sock** %12, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %131 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %135 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %134, i64 1
  %136 = bitcast %struct.udphdr* %135 to i32*
  %137 = call i32 @ip_icmp_error(%struct.sock* %127, %struct.sk_buff* %128, i32 %129, i32 %132, i32 %133, i32* %136)
  br label %138

138:                                              ; preds = %126, %125
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.sock*, %struct.sock** %12, align 8
  %141 = getelementptr inbounds %struct.sock, %struct.sock* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = load %struct.sock*, %struct.sock** %12, align 8
  %143 = getelementptr inbounds %struct.sock, %struct.sock* %142, i32 0, i32 2
  %144 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %143, align 8
  %145 = load %struct.sock*, %struct.sock** %12, align 8
  %146 = call i32 %144(%struct.sock* %145)
  br label %147

147:                                              ; preds = %138, %124, %90, %75
  %148 = load %struct.sock*, %struct.sock** %12, align 8
  %149 = call i32 @sock_put(%struct.sock* %148)
  br label %150

150:                                              ; preds = %147, %64
  ret void
}

declare dso_local %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_6__*) #1

declare dso_local %struct.sock* @__udp4_lib_lookup(%struct.net*, i32, i32, i32, i32, i32, %struct.udp_table*) #1

declare dso_local i32 @ICMP_INC_STATS_BH(%struct.net*, i32) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ip_icmp_error(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
