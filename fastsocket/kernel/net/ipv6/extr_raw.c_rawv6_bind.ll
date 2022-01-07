; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_raw.c_rawv6_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_raw.c_rawv6_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64 }
%struct.sockaddr = type { i32 }
%struct.inet_sock = type { i32, i32 }
%struct.ipv6_pinfo = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i64 }
%struct.net_device = type { i32 }

@SIN6_LEN_RFC2133 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPV6_ADDR_MAPPED = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LOOPBACK4_IPV6 = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @rawv6_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rawv6_bind(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca %struct.ipv6_pinfo*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call %struct.inet_sock* @inet_sk(%struct.sock* %15)
  store %struct.inet_sock* %16, %struct.inet_sock** %8, align 8
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %17)
  store %struct.ipv6_pinfo* %18, %struct.ipv6_pinfo** %9, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %20, %struct.sockaddr_in6** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SIN6_LEN_RFC2133, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %148

27:                                               ; preds = %3
  %28 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 0
  %30 = call i32 @ipv6_addr_type(i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EADDRNOTAVAIL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %148

37:                                               ; preds = %27
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  %39 = call i32 @lock_sock(%struct.sock* %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %13, align 4
  %42 = load %struct.sock*, %struct.sock** %5, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TCP_CLOSE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %144

48:                                               ; preds = %37
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %122

52:                                               ; preds = %48
  store %struct.net_device* null, %struct.net_device** %14, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp uge i64 %59, 16
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %68 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.sock*, %struct.sock** %5, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %66, %61, %57
  %73 = load %struct.sock*, %struct.sock** %5, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %144

78:                                               ; preds = %72
  %79 = load %struct.sock*, %struct.sock** %5, align 8
  %80 = call i32 @sock_net(%struct.sock* %79)
  %81 = load %struct.sock*, %struct.sock** %5, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call %struct.net_device* @dev_get_by_index(i32 %80, i64 %83)
  store %struct.net_device* %84, %struct.net_device** %14, align 8
  %85 = load %struct.net_device*, %struct.net_device** %14, align 8
  %86 = icmp ne %struct.net_device* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %13, align 4
  br label %144

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %52
  %92 = load i32, i32* @LOOPBACK4_IPV6, align 4
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %115, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @EADDRNOTAVAIL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %13, align 4
  %100 = load %struct.sock*, %struct.sock** %5, align 8
  %101 = call i32 @sock_net(%struct.sock* %100)
  %102 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %103 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %102, i32 0, i32 0
  %104 = load %struct.net_device*, %struct.net_device** %14, align 8
  %105 = call i32 @ipv6_chk_addr(i32 %101, i32* %103, %struct.net_device* %104, i32 0)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %97
  %108 = load %struct.net_device*, %struct.net_device** %14, align 8
  %109 = icmp ne %struct.net_device* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.net_device*, %struct.net_device** %14, align 8
  %112 = call i32 @dev_put(%struct.net_device* %111)
  br label %113

113:                                              ; preds = %110, %107
  br label %144

114:                                              ; preds = %97
  br label %115

115:                                              ; preds = %114, %91
  %116 = load %struct.net_device*, %struct.net_device** %14, align 8
  %117 = icmp ne %struct.net_device* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.net_device*, %struct.net_device** %14, align 8
  %120 = call i32 @dev_put(%struct.net_device* %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %48
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %125 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %127 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %126, i32 0, i32 1
  store i32 %123, i32* %127, align 4
  %128 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %129 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %128, i32 0, i32 1
  %130 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %131 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %130, i32 0, i32 0
  %132 = call i32 @ipv6_addr_copy(i32* %129, i32* %131)
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %122
  %138 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %139 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %138, i32 0, i32 0
  %140 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %141 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %140, i32 0, i32 0
  %142 = call i32 @ipv6_addr_copy(i32* %139, i32* %141)
  br label %143

143:                                              ; preds = %137, %122
  store i32 0, i32* %13, align 4
  br label %144

144:                                              ; preds = %143, %113, %87, %77, %47
  %145 = load %struct.sock*, %struct.sock** %5, align 8
  %146 = call i32 @release_sock(%struct.sock* %145)
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %144, %34, %24
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i64) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @ipv6_chk_addr(i32, i32*, %struct.net_device*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
