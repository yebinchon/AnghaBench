; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_datagram.c_ip4_datagram_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_datagram.c_ip4_datagram_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.inet_sock = type { i32, i32, i32, i32, i64, i64, i32, i64 }
%struct.sockaddr_in = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rtable = type { i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@SOCK_BROADCAST = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip4_datagram_connect(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.rtable*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call %struct.inet_sock* @inet_sk(%struct.sock* %14)
  store %struct.inet_sock* %15, %struct.inet_sock** %8, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %17, %struct.sockaddr_in** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 16
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %158

24:                                               ; preds = %3
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_INET, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EAFNOSUPPORT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %158

33:                                               ; preds = %24
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = call i32 @sk_dst_reset(%struct.sock* %34)
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %40 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  %42 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ipv4_is_multicast(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %33
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %53 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %60 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %59, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %11, align 8
  br label %62

62:                                               ; preds = %58, %55
  br label %63

63:                                               ; preds = %62, %33
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.sock*, %struct.sock** %5, align 8
  %70 = call i32 @RT_CONN_FLAGS(%struct.sock* %69)
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %76 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sock*, %struct.sock** %5, align 8
  %82 = call i32 @ip_route_connect(%struct.rtable** %10, i32 %67, i64 %68, i32 %70, i32 %71, i32 %74, i32 %77, i32 %80, %struct.sock* %81, i32 1)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %63
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @ENETUNREACH, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.sock*, %struct.sock** %5, align 8
  %92 = call i32 @sock_net(%struct.sock* %91)
  %93 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %94 = call i32 @IP_INC_STATS_BH(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %4, align 4
  br label %158

97:                                               ; preds = %63
  %98 = load %struct.rtable*, %struct.rtable** %10, align 8
  %99 = getelementptr inbounds %struct.rtable, %struct.rtable* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @RTCF_BROADCAST, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %97
  %105 = load %struct.sock*, %struct.sock** %5, align 8
  %106 = load i32, i32* @SOCK_BROADCAST, align 4
  %107 = call i32 @sock_flag(%struct.sock* %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.rtable*, %struct.rtable** %10, align 8
  %111 = call i32 @ip_rt_put(%struct.rtable* %110)
  %112 = load i32, i32* @EACCES, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %158

114:                                              ; preds = %104, %97
  %115 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %116 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = load %struct.rtable*, %struct.rtable** %10, align 8
  %121 = getelementptr inbounds %struct.rtable, %struct.rtable* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %124 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %123, i32 0, i32 5
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %127 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %125
  %131 = load %struct.rtable*, %struct.rtable** %10, align 8
  %132 = getelementptr inbounds %struct.rtable, %struct.rtable* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %135 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %134, i32 0, i32 4
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %130, %125
  %137 = load %struct.rtable*, %struct.rtable** %10, align 8
  %138 = getelementptr inbounds %struct.rtable, %struct.rtable* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %141 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %143 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %146 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* @TCP_ESTABLISHED, align 4
  %148 = load %struct.sock*, %struct.sock** %5, align 8
  %149 = getelementptr inbounds %struct.sock, %struct.sock* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @jiffies, align 4
  %151 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %152 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.sock*, %struct.sock** %5, align 8
  %154 = load %struct.rtable*, %struct.rtable** %10, align 8
  %155 = getelementptr inbounds %struct.rtable, %struct.rtable* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = call i32 @sk_dst_set(%struct.sock* %153, i32* %156)
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %136, %109, %95, %30, %21
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sk_dst_reset(%struct.sock*) #1

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local i32 @ip_route_connect(%struct.rtable**, i32, i64, i32, i32, i32, i32, i32, %struct.sock*, i32) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i32 @IP_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @sk_dst_set(%struct.sock*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
