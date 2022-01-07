; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i64, i32, i64, i64, %struct.in6_addr }
%struct.in6_addr = type { i32*, i32* }
%struct.inet_sock = type { i64, i32, i32, i32 }
%struct.inet_connection_sock = type { i64, i32* }
%struct.ipv6_pinfo = type { i32, %struct.in6_addr, %struct.in6_addr, %struct.TYPE_4__*, %struct.in6_addr, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.tcp_sock = type { i64, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.flowi = type { i32, i64, %struct.in6_addr, %struct.in6_addr, i32, i64, i32 }
%struct.dst_entry = type { i32 }
%struct.ip6_flowlabel = type { %struct.in6_addr }
%struct.sockaddr_in = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rt0_hdr = type { %struct.in6_addr* }

@SIN6_LEN_RFC2133 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IPV6_FLOWINFO_MASK = common dso_local global i32 0, align 4
@IPV6_FLOWLABEL_MASK = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@IPV6_ADDR_MAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"connect: ipv4 mapped\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@ipv6_mapped = common dso_local global i32 0, align 4
@tcp_v4_do_rcv = common dso_local global i32 0, align 4
@ipv6_specific = common dso_local global i32 0, align 4
@tcp_v6_do_rcv = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@XFRM_LOOKUP_WAIT = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4
@LOOPBACK4_IPV6 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@TCP_SYN_SENT = common dso_local global i32 0, align 4
@tcp_death_row = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@tcp_sock_ipv6_mapped_specific = common dso_local global i32 0, align 4
@tcp_sock_ipv6_specific = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @tcp_v6_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_v6_connect(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.inet_sock*, align 8
  %10 = alloca %struct.inet_connection_sock*, align 8
  %11 = alloca %struct.ipv6_pinfo*, align 8
  %12 = alloca %struct.tcp_sock*, align 8
  %13 = alloca %struct.in6_addr*, align 8
  %14 = alloca %struct.in6_addr*, align 8
  %15 = alloca %struct.in6_addr, align 8
  %16 = alloca %struct.flowi, align 8
  %17 = alloca %struct.dst_entry*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ip6_flowlabel*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.sockaddr_in, align 8
  %23 = alloca %struct.rt0_hdr*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %25 = bitcast %struct.sockaddr* %24 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %25, %struct.sockaddr_in6** %8, align 8
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = call %struct.inet_sock* @inet_sk(%struct.sock* %26)
  store %struct.inet_sock* %27, %struct.inet_sock** %9, align 8
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %28)
  store %struct.inet_connection_sock* %29, %struct.inet_connection_sock** %10, align 8
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %30)
  store %struct.ipv6_pinfo* %31, %struct.ipv6_pinfo** %11, align 8
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %32)
  store %struct.tcp_sock* %33, %struct.tcp_sock** %12, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %13, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %14, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SIN6_LEN_RFC2133, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %460

40:                                               ; preds = %3
  %41 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AF_INET6, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EAFNOSUPPORT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %460

49:                                               ; preds = %40
  %50 = call i32 @memset(%struct.flowi* %16, i32 0, i32 72)
  %51 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %52 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %49
  %56 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IPV6_FLOWINFO_MASK, align 4
  %60 = and i32 %58, %59
  %61 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @IP6_ECN_flow_init(i32 %63)
  %65 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %55
  %71 = load %struct.sock*, %struct.sock** %5, align 8
  %72 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.ip6_flowlabel* @fl6_sock_lookup(%struct.sock* %71, i32 %73)
  store %struct.ip6_flowlabel* %74, %struct.ip6_flowlabel** %20, align 8
  %75 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %20, align 8
  %76 = icmp eq %struct.ip6_flowlabel* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %460

80:                                               ; preds = %70
  %81 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %82 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %81, i32 0, i32 4
  %83 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %20, align 8
  %84 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %83, i32 0, i32 0
  %85 = call i32 @ipv6_addr_copy(%struct.in6_addr* %82, %struct.in6_addr* %84)
  %86 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %20, align 8
  %87 = call i32 @fl6_sock_release(%struct.ip6_flowlabel* %86)
  br label %88

88:                                               ; preds = %80, %55
  br label %89

89:                                               ; preds = %88, %49
  %90 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %91 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %90, i32 0, i32 4
  %92 = call i64 @ipv6_addr_any(%struct.in6_addr* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %96 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 15
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %89
  %101 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %102 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %101, i32 0, i32 4
  %103 = call i32 @ipv6_addr_type(%struct.in6_addr* %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* @ENETUNREACH, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %460

111:                                              ; preds = %100
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %156

116:                                              ; preds = %111
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp uge i64 %118, 48
  br i1 %119, label %120, label %147

120:                                              ; preds = %116
  %121 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %122 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %147

125:                                              ; preds = %120
  %126 = load %struct.sock*, %struct.sock** %5, align 8
  %127 = getelementptr inbounds %struct.sock, %struct.sock* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.sock*, %struct.sock** %5, align 8
  %132 = getelementptr inbounds %struct.sock, %struct.sock* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %135 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %133, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %460

141:                                              ; preds = %130, %125
  %142 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %143 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.sock*, %struct.sock** %5, align 8
  %146 = getelementptr inbounds %struct.sock, %struct.sock* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %141, %120, %116
  %148 = load %struct.sock*, %struct.sock** %5, align 8
  %149 = getelementptr inbounds %struct.sock, %struct.sock* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %147
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %4, align 4
  br label %460

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %111
  %157 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %158 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %156
  %163 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %164 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %163, i32 0, i32 1
  %165 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %166 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %165, i32 0, i32 4
  %167 = call i32 @ipv6_addr_equal(%struct.in6_addr* %164, %struct.in6_addr* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %162
  %170 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %171 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 2
  store i64 0, i64* %172, align 8
  %173 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %174 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  store i64 0, i64* %175, align 8
  %176 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %177 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %176, i32 0, i32 0
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %169, %162, %156
  %179 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %180 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %179, i32 0, i32 1
  %181 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %182 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %181, i32 0, i32 4
  %183 = call i32 @ipv6_addr_copy(%struct.in6_addr* %180, %struct.in6_addr* %182)
  %184 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %187 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* %18, align 4
  %189 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %254

191:                                              ; preds = %178
  %192 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %193 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %21, align 8
  %195 = load %struct.sock*, %struct.sock** %5, align 8
  %196 = call i32 @SOCK_DEBUG(%struct.sock* %195, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %197 = load %struct.sock*, %struct.sock** %5, align 8
  %198 = call i64 @__ipv6_only_sock(%struct.sock* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %191
  %201 = load i32, i32* @ENETUNREACH, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %4, align 4
  br label %460

203:                                              ; preds = %191
  %204 = load i32, i32* @AF_INET, align 4
  %205 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 2
  store i32 %204, i32* %205, align 8
  %206 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %207 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 1
  store i64 %208, i64* %209, align 8
  %210 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %211 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 3
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %219 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %218, i32 0, i32 1
  store i32* @ipv6_mapped, i32** %219, align 8
  %220 = load i32, i32* @tcp_v4_do_rcv, align 4
  %221 = load %struct.sock*, %struct.sock** %5, align 8
  %222 = getelementptr inbounds %struct.sock, %struct.sock* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 4
  %223 = load %struct.sock*, %struct.sock** %5, align 8
  %224 = bitcast %struct.sockaddr_in* %22 to %struct.sockaddr*
  %225 = call i32 @tcp_v4_connect(%struct.sock* %223, %struct.sockaddr* %224, i32 24)
  store i32 %225, i32* %19, align 4
  %226 = load i32, i32* %19, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %203
  %229 = load i64, i64* %21, align 8
  %230 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %231 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %230, i32 0, i32 0
  store i64 %229, i64* %231, align 8
  %232 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %233 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %232, i32 0, i32 1
  store i32* @ipv6_specific, i32** %233, align 8
  %234 = load i32, i32* @tcp_v6_do_rcv, align 4
  %235 = load %struct.sock*, %struct.sock** %5, align 8
  %236 = getelementptr inbounds %struct.sock, %struct.sock* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 4
  br label %454

237:                                              ; preds = %203
  %238 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %239 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %238, i32 0, i32 2
  %240 = call i32 @htonl(i32 65535)
  %241 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %242 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @ipv6_addr_set(%struct.in6_addr* %239, i32 0, i32 0, i32 %240, i32 %243)
  %245 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %246 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %245, i32 0, i32 4
  %247 = call i32 @htonl(i32 65535)
  %248 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %249 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @ipv6_addr_set(%struct.in6_addr* %246, i32 0, i32 0, i32 %247, i32 %250)
  br label %252

252:                                              ; preds = %237
  %253 = load i32, i32* %19, align 4
  store i32 %253, i32* %4, align 4
  br label %460

254:                                              ; preds = %178
  %255 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %256 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %255, i32 0, i32 4
  %257 = call i64 @ipv6_addr_any(%struct.in6_addr* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %254
  %260 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %261 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %260, i32 0, i32 4
  store %struct.in6_addr* %261, %struct.in6_addr** %13, align 8
  br label %262

262:                                              ; preds = %259, %254
  %263 = load i32, i32* @IPPROTO_TCP, align 4
  %264 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 6
  store i32 %263, i32* %264, align 8
  %265 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 3
  %266 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %267 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %266, i32 0, i32 1
  %268 = call i32 @ipv6_addr_copy(%struct.in6_addr* %265, %struct.in6_addr* %267)
  %269 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 2
  %270 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %271 = icmp ne %struct.in6_addr* %270, null
  br i1 %271, label %272, label %274

272:                                              ; preds = %262
  %273 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  br label %277

274:                                              ; preds = %262
  %275 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %276 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %275, i32 0, i32 2
  br label %277

277:                                              ; preds = %274, %272
  %278 = phi %struct.in6_addr* [ %273, %272 ], [ %276, %274 ]
  %279 = call i32 @ipv6_addr_copy(%struct.in6_addr* %269, %struct.in6_addr* %278)
  %280 = load %struct.sock*, %struct.sock** %5, align 8
  %281 = getelementptr inbounds %struct.sock, %struct.sock* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 1
  store i64 %282, i64* %283, align 8
  %284 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %285 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 5
  store i64 %286, i64* %287, align 8
  %288 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %289 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 4
  store i32 %290, i32* %291, align 8
  %292 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %293 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %292, i32 0, i32 3
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = icmp ne %struct.TYPE_4__* %294, null
  br i1 %295, label %296, label %317

296:                                              ; preds = %277
  %297 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %298 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %297, i32 0, i32 3
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %317

303:                                              ; preds = %296
  %304 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %305 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %304, i32 0, i32 3
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = inttoptr i64 %308 to %struct.rt0_hdr*
  store %struct.rt0_hdr* %309, %struct.rt0_hdr** %23, align 8
  %310 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 3
  %311 = call i32 @ipv6_addr_copy(%struct.in6_addr* %15, %struct.in6_addr* %310)
  %312 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 3
  %313 = load %struct.rt0_hdr*, %struct.rt0_hdr** %23, align 8
  %314 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %313, i32 0, i32 0
  %315 = load %struct.in6_addr*, %struct.in6_addr** %314, align 8
  %316 = call i32 @ipv6_addr_copy(%struct.in6_addr* %312, %struct.in6_addr* %315)
  store %struct.in6_addr* %15, %struct.in6_addr** %14, align 8
  br label %317

317:                                              ; preds = %303, %296, %277
  %318 = load %struct.sock*, %struct.sock** %5, align 8
  %319 = call i32 @security_sk_classify_flow(%struct.sock* %318, %struct.flowi* %16)
  %320 = load %struct.sock*, %struct.sock** %5, align 8
  %321 = call i32 @ip6_dst_lookup(%struct.sock* %320, %struct.dst_entry** %17, %struct.flowi* %16)
  store i32 %321, i32* %19, align 4
  %322 = load i32, i32* %19, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %317
  br label %454

325:                                              ; preds = %317
  %326 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %327 = icmp ne %struct.in6_addr* %326, null
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 3
  %330 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %331 = call i32 @ipv6_addr_copy(%struct.in6_addr* %329, %struct.in6_addr* %330)
  br label %332

332:                                              ; preds = %328, %325
  %333 = load %struct.sock*, %struct.sock** %5, align 8
  %334 = call i32 @sock_net(%struct.sock* %333)
  %335 = load %struct.sock*, %struct.sock** %5, align 8
  %336 = load i32, i32* @XFRM_LOOKUP_WAIT, align 4
  %337 = call i32 @__xfrm_lookup(i32 %334, %struct.dst_entry** %17, %struct.flowi* %16, %struct.sock* %335, i32 %336)
  store i32 %337, i32* %19, align 4
  %338 = load i32, i32* %19, align 4
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %353

340:                                              ; preds = %332
  %341 = load i32, i32* %19, align 4
  %342 = load i32, i32* @EREMOTE, align 4
  %343 = sub nsw i32 0, %342
  %344 = icmp eq i32 %341, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %340
  %346 = load %struct.sock*, %struct.sock** %5, align 8
  %347 = call i32 @ip6_dst_blackhole(%struct.sock* %346, %struct.dst_entry** %17, %struct.flowi* %16)
  store i32 %347, i32* %19, align 4
  br label %348

348:                                              ; preds = %345, %340
  %349 = load i32, i32* %19, align 4
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %348
  br label %454

352:                                              ; preds = %348
  br label %353

353:                                              ; preds = %352, %332
  %354 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %355 = icmp eq %struct.in6_addr* %354, null
  br i1 %355, label %356, label %362

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 2
  store %struct.in6_addr* %357, %struct.in6_addr** %13, align 8
  %358 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %359 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %358, i32 0, i32 4
  %360 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %361 = call i32 @ipv6_addr_copy(%struct.in6_addr* %359, %struct.in6_addr* %360)
  br label %362

362:                                              ; preds = %356, %353
  %363 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %364 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %363, i32 0, i32 2
  %365 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %366 = call i32 @ipv6_addr_copy(%struct.in6_addr* %364, %struct.in6_addr* %365)
  %367 = load i32, i32* @LOOPBACK4_IPV6, align 4
  %368 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %369 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %368, i32 0, i32 2
  store i32 %367, i32* %369, align 4
  %370 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %371 = load %struct.sock*, %struct.sock** %5, align 8
  %372 = getelementptr inbounds %struct.sock, %struct.sock* %371, i32 0, i32 2
  store i32 %370, i32* %372, align 8
  %373 = load %struct.sock*, %struct.sock** %5, align 8
  %374 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  %375 = call i32 @__ip6_dst_store(%struct.sock* %373, %struct.dst_entry* %374, i32* null, i32* null)
  %376 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %377 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %376, i32 0, i32 0
  store i64 0, i64* %377, align 8
  %378 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %379 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %378, i32 0, i32 3
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %379, align 8
  %381 = icmp ne %struct.TYPE_4__* %380, null
  br i1 %381, label %382, label %396

382:                                              ; preds = %362
  %383 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %384 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %383, i32 0, i32 3
  %385 = load %struct.TYPE_4__*, %struct.TYPE_4__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %389 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %388, i32 0, i32 3
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = add nsw i64 %387, %392
  %394 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %395 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %394, i32 0, i32 0
  store i64 %393, i64* %395, align 8
  br label %396

396:                                              ; preds = %382, %362
  %397 = load i32, i32* @IPV6_MIN_MTU, align 4
  %398 = sext i32 %397 to i64
  %399 = sub i64 %398, 4
  %400 = sub i64 %399, 4
  %401 = trunc i64 %400 to i32
  %402 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %403 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 0
  store i32 %401, i32* %404, align 8
  %405 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %406 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %405, i32 0, i32 3
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %409 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %408, i32 0, i32 0
  store i64 %407, i64* %409, align 8
  %410 = load %struct.sock*, %struct.sock** %5, align 8
  %411 = load i32, i32* @TCP_SYN_SENT, align 4
  %412 = call i32 @tcp_set_state(%struct.sock* %410, i32 %411)
  %413 = load %struct.sock*, %struct.sock** %5, align 8
  %414 = call i32 @inet6_hash_connect(i32* @tcp_death_row, %struct.sock* %413)
  store i32 %414, i32* %19, align 4
  %415 = load i32, i32* %19, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %396
  br label %448

418:                                              ; preds = %396
  %419 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %420 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %441, label %423

423:                                              ; preds = %418
  %424 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %425 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %425, i32 0, i32 1
  %427 = load i32*, i32** %426, align 8
  %428 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %429 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %429, i32 0, i32 1
  %431 = load i32*, i32** %430, align 8
  %432 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %433 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 8
  %435 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %436 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = call i64 @secure_tcpv6_sequence_number(i32* %427, i32* %431, i32 %434, i64 %437)
  %439 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %440 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %439, i32 0, i32 0
  store i64 %438, i64* %440, align 8
  br label %441

441:                                              ; preds = %423, %418
  %442 = load %struct.sock*, %struct.sock** %5, align 8
  %443 = call i32 @tcp_connect(%struct.sock* %442)
  store i32 %443, i32* %19, align 4
  %444 = load i32, i32* %19, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %441
  br label %448

447:                                              ; preds = %441
  store i32 0, i32* %4, align 4
  br label %460

448:                                              ; preds = %446, %417
  %449 = load %struct.sock*, %struct.sock** %5, align 8
  %450 = load i32, i32* @TCP_CLOSE, align 4
  %451 = call i32 @tcp_set_state(%struct.sock* %449, i32 %450)
  %452 = load %struct.sock*, %struct.sock** %5, align 8
  %453 = call i32 @__sk_dst_reset(%struct.sock* %452)
  br label %454

454:                                              ; preds = %448, %351, %324, %228
  %455 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %456 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %455, i32 0, i32 0
  store i64 0, i64* %456, align 8
  %457 = load %struct.sock*, %struct.sock** %5, align 8
  %458 = getelementptr inbounds %struct.sock, %struct.sock* %457, i32 0, i32 1
  store i64 0, i64* %458, align 8
  %459 = load i32, i32* %19, align 4
  store i32 %459, i32* %4, align 4
  br label %460

460:                                              ; preds = %454, %447, %252, %200, %152, %138, %108, %77, %46, %37
  %461 = load i32, i32* %4, align 4
  ret i32 %461
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @IP6_ECN_flow_init(i32) #1

declare dso_local %struct.ip6_flowlabel* @fl6_sock_lookup(%struct.sock*, i32) #1

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @fl6_sock_release(%struct.ip6_flowlabel*) #1

declare dso_local i64 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local i32 @ipv6_addr_equal(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*) #1

declare dso_local i64 @__ipv6_only_sock(%struct.sock*) #1

declare dso_local i32 @tcp_v4_connect(%struct.sock*, %struct.sockaddr*, i32) #1

declare dso_local i32 @ipv6_addr_set(%struct.in6_addr*, i32, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @security_sk_classify_flow(%struct.sock*, %struct.flowi*) #1

declare dso_local i32 @ip6_dst_lookup(%struct.sock*, %struct.dst_entry**, %struct.flowi*) #1

declare dso_local i32 @__xfrm_lookup(i32, %struct.dst_entry**, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @ip6_dst_blackhole(%struct.sock*, %struct.dst_entry**, %struct.flowi*) #1

declare dso_local i32 @__ip6_dst_store(%struct.sock*, %struct.dst_entry*, i32*, i32*) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @inet6_hash_connect(i32*, %struct.sock*) #1

declare dso_local i64 @secure_tcpv6_sequence_number(i32*, i32*, i32, i64) #1

declare dso_local i32 @tcp_connect(%struct.sock*) #1

declare dso_local i32 @__sk_dst_reset(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
