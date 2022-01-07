; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_af_inet6.c_inet6_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_af_inet6.c_inet6_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i64, i32, i64, i64, i32 }
%struct.inet_sock = type { i64, i64 }
%struct.ipv6_pinfo = type { i32, i32, i64, i64, i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.inet_sock*, align 8
  %13 = alloca %struct.ipv6_pinfo*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %15, %struct.sockaddr_in6** %10, align 8
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %11, align 8
  %19 = load %struct.sock*, %struct.sock** %11, align 8
  %20 = call %struct.inet_sock* @inet_sk(%struct.sock* %19)
  store %struct.inet_sock* %20, %struct.inet_sock** %12, align 8
  %21 = load %struct.sock*, %struct.sock** %11, align 8
  %22 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %21)
  store %struct.ipv6_pinfo* %22, %struct.ipv6_pinfo** %13, align 8
  %23 = load i32, i32* @AF_INET6, align 4
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %4
  %33 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %34 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOTCONN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %116

40:                                               ; preds = %32
  %41 = load %struct.sock*, %struct.sock** %11, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 1, %43
  %45 = load i32, i32* @TCPF_CLOSE, align 4
  %46 = load i32, i32* @TCPF_SYN_SENT, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @ENOTCONN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %116

56:                                               ; preds = %50, %40
  %57 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %58 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %61 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %62, i32 0, i32 1
  %64 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %13, align 8
  %65 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %64, i32 0, i32 4
  %66 = call i32 @ipv6_addr_copy(i32* %63, i32* %65)
  %67 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %13, align 8
  %68 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %56
  %72 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %13, align 8
  %73 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %76 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %56
  br label %101

78:                                               ; preds = %4
  %79 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %13, align 8
  %80 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %79, i32 0, i32 0
  %81 = call i64 @ipv6_addr_any(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %84, i32 0, i32 1
  %86 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %13, align 8
  %87 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %86, i32 0, i32 1
  %88 = call i32 @ipv6_addr_copy(i32* %85, i32* %87)
  br label %95

89:                                               ; preds = %78
  %90 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %91 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %90, i32 0, i32 1
  %92 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %13, align 8
  %93 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %92, i32 0, i32 0
  %94 = call i32 @ipv6_addr_copy(i32* %91, i32* %93)
  br label %95

95:                                               ; preds = %89, %83
  %96 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %97 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %100 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %95, %77
  %102 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %103 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %102, i32 0, i32 1
  %104 = call i32 @ipv6_addr_type(i32* %103)
  %105 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.sock*, %struct.sock** %11, align 8
  %110 = getelementptr inbounds %struct.sock, %struct.sock* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %113 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %101
  %115 = load i32*, i32** %8, align 8
  store i32 40, i32* %115, align 4
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %53, %37
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local i64 @ipv6_addr_any(i32*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
