; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_tcp_ip_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_tcp_ip_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iphdr = type { i64, i32 }
%struct.tcphdr = type { i64, i64, i64, i64, i32, i64, i64, i64 }
%struct.net_lro_desc = type { i64 }

@IPH_LEN_WO_OPTIONS = common dso_local global i64 0, align 8
@TCPH_LEN_WO_OPTIONS = common dso_local global i64 0, align 8
@TCPH_LEN_W_TIMESTAMP = common dso_local global i64 0, align 8
@TCPOPT_NOP = common dso_local global i32 0, align 4
@TCPOPT_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iphdr*, %struct.tcphdr*, i32, %struct.net_lro_desc*)* @lro_tcp_ip_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lro_tcp_ip_check(%struct.iphdr* %0, %struct.tcphdr* %1, i32 %2, %struct.net_lro_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_lro_desc*, align 8
  %10 = alloca i64*, align 8
  store %struct.iphdr* %0, %struct.iphdr** %6, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.net_lro_desc* %3, %struct.net_lro_desc** %9, align 8
  %11 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %12 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ntohs(i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %136

18:                                               ; preds = %4
  %19 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %20 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %21 = call i64 @TCP_PAYLOAD_LENGTH(%struct.iphdr* %19, %struct.tcphdr* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %136

24:                                               ; preds = %18
  %25 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %26 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IPH_LEN_WO_OPTIONS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %136

31:                                               ; preds = %24
  %32 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %33 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %66, label %36

36:                                               ; preds = %31
  %37 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %38 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %36
  %42 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %43 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %41
  %47 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %48 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %53 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %58 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %63 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %56, %51, %46, %41, %36, %31
  store i32 -1, i32* %5, align 4
  br label %136

67:                                               ; preds = %61
  %68 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %69 = call i32 @ipv4_get_dsfield(%struct.iphdr* %68)
  %70 = call i64 @INET_ECN_is_ce(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 -1, i32* %5, align 4
  br label %136

73:                                               ; preds = %67
  %74 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %75 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TCPH_LEN_WO_OPTIONS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %81 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TCPH_LEN_W_TIMESTAMP, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 -1, i32* %5, align 4
  br label %136

86:                                               ; preds = %79, %73
  %87 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %88 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @TCPH_LEN_W_TIMESTAMP, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %135

92:                                               ; preds = %86
  %93 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %94 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %93, i64 1
  %95 = bitcast %struct.tcphdr* %94 to i64*
  store i64* %95, i64** %10, align 8
  %96 = load i64*, i64** %10, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @TCPOPT_NOP, align 4
  %99 = shl i32 %98, 24
  %100 = load i32, i32* @TCPOPT_NOP, align 4
  %101 = shl i32 %100, 16
  %102 = or i32 %99, %101
  %103 = load i32, i32* @TCPOPT_TIMESTAMP, align 4
  %104 = shl i32 %103, 8
  %105 = or i32 %102, %104
  %106 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %107 = or i32 %105, %106
  %108 = call i64 @htonl(i32 %107)
  %109 = icmp ne i64 %97, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %92
  store i32 -1, i32* %5, align 4
  br label %136

111:                                              ; preds = %92
  %112 = load i64*, i64** %10, align 8
  %113 = getelementptr inbounds i64, i64* %112, i32 1
  store i64* %113, i64** %10, align 8
  %114 = load %struct.net_lro_desc*, %struct.net_lro_desc** %9, align 8
  %115 = icmp ne %struct.net_lro_desc* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load %struct.net_lro_desc*, %struct.net_lro_desc** %9, align 8
  %118 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @ntohl(i64 %119)
  %121 = load i64*, i64** %10, align 8
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @ntohl(i64 %122)
  %124 = call i64 @after(i32 %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  store i32 -1, i32* %5, align 4
  br label %136

127:                                              ; preds = %116, %111
  %128 = load i64*, i64** %10, align 8
  %129 = getelementptr inbounds i64, i64* %128, i32 1
  store i64* %129, i64** %10, align 8
  %130 = load i64*, i64** %10, align 8
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 -1, i32* %5, align 4
  br label %136

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %86
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %133, %126, %110, %85, %72, %66, %30, %23, %17
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @TCP_PAYLOAD_LENGTH(%struct.iphdr*, %struct.tcphdr*) #1

declare dso_local i64 @INET_ECN_is_ce(i32) #1

declare dso_local i32 @ipv4_get_dsfield(%struct.iphdr*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
