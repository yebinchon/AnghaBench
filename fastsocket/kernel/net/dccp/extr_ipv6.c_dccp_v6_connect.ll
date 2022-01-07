; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i64, i32, i64, i64, %struct.in6_addr }
%struct.in6_addr = type { i32*, i32* }
%struct.inet_connection_sock = type { i64, i32* }
%struct.inet_sock = type { i64, i32, i32, i32 }
%struct.ipv6_pinfo = type { i32, %struct.in6_addr, %struct.in6_addr, %struct.TYPE_3__*, %struct.in6_addr, i64 }
%struct.TYPE_3__ = type { i64, i64, i32* }
%struct.dccp_sock = type { i32, i32 }
%struct.flowi = type { i32, i64, %struct.in6_addr, %struct.in6_addr, i32, i64, i32 }
%struct.dst_entry = type { i32 }
%struct.ip6_flowlabel = type { %struct.in6_addr }
%struct.sockaddr_in = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rt0_hdr = type { %struct.in6_addr* }

@DCCP_ROLE_CLIENT = common dso_local global i32 0, align 4
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
@dccp_ipv6_mapped = common dso_local global i32 0, align 4
@dccp_v4_do_rcv = common dso_local global i32 0, align 4
@dccp_ipv6_af_ops = common dso_local global i32 0, align 4
@dccp_v6_do_rcv = common dso_local global i32 0, align 4
@IPPROTO_DCCP = common dso_local global i32 0, align 4
@XFRM_LOOKUP_WAIT = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4
@LOOPBACK4_IPV6 = common dso_local global i32 0, align 4
@DCCP_REQUESTING = common dso_local global i32 0, align 4
@dccp_death_row = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @dccp_v6_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_v6_connect(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.inet_connection_sock*, align 8
  %10 = alloca %struct.inet_sock*, align 8
  %11 = alloca %struct.ipv6_pinfo*, align 8
  %12 = alloca %struct.dccp_sock*, align 8
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
  %27 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %26)
  store %struct.inet_connection_sock* %27, %struct.inet_connection_sock** %9, align 8
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = call %struct.inet_sock* @inet_sk(%struct.sock* %28)
  store %struct.inet_sock* %29, %struct.inet_sock** %10, align 8
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %30)
  store %struct.ipv6_pinfo* %31, %struct.ipv6_pinfo** %11, align 8
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %32)
  store %struct.dccp_sock* %33, %struct.dccp_sock** %12, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %13, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %14, align 8
  %34 = load i32, i32* @DCCP_ROLE_CLIENT, align 4
  %35 = load %struct.dccp_sock*, %struct.dccp_sock** %12, align 8
  %36 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SIN6_LEN_RFC2133, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %424

43:                                               ; preds = %3
  %44 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AF_INET6, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EAFNOSUPPORT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %424

52:                                               ; preds = %43
  %53 = call i32 @memset(%struct.flowi* %16, i32 0, i32 72)
  %54 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %55 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %52
  %59 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IPV6_FLOWINFO_MASK, align 4
  %63 = and i32 %61, %62
  %64 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @IP6_ECN_flow_init(i32 %66)
  %68 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %58
  %74 = load %struct.sock*, %struct.sock** %5, align 8
  %75 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.ip6_flowlabel* @fl6_sock_lookup(%struct.sock* %74, i32 %76)
  store %struct.ip6_flowlabel* %77, %struct.ip6_flowlabel** %20, align 8
  %78 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %20, align 8
  %79 = icmp eq %struct.ip6_flowlabel* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %424

83:                                               ; preds = %73
  %84 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %84, i32 0, i32 4
  %86 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %20, align 8
  %87 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %86, i32 0, i32 0
  %88 = call i32 @ipv6_addr_copy(%struct.in6_addr* %85, %struct.in6_addr* %87)
  %89 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %20, align 8
  %90 = call i32 @fl6_sock_release(%struct.ip6_flowlabel* %89)
  br label %91

91:                                               ; preds = %83, %58
  br label %92

92:                                               ; preds = %91, %52
  %93 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %94 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %93, i32 0, i32 4
  %95 = call i64 @ipv6_addr_any(%struct.in6_addr* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %99 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 15
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %97, %92
  %104 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %105 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %104, i32 0, i32 4
  %106 = call i32 @ipv6_addr_type(%struct.in6_addr* %105)
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i32, i32* @ENETUNREACH, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %424

114:                                              ; preds = %103
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %159

119:                                              ; preds = %114
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp uge i64 %121, 48
  br i1 %122, label %123, label %150

123:                                              ; preds = %119
  %124 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %125 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %150

128:                                              ; preds = %123
  %129 = load %struct.sock*, %struct.sock** %5, align 8
  %130 = getelementptr inbounds %struct.sock, %struct.sock* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = load %struct.sock*, %struct.sock** %5, align 8
  %135 = getelementptr inbounds %struct.sock, %struct.sock* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %138 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %136, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %424

144:                                              ; preds = %133, %128
  %145 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %146 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.sock*, %struct.sock** %5, align 8
  %149 = getelementptr inbounds %struct.sock, %struct.sock* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %144, %123, %119
  %151 = load %struct.sock*, %struct.sock** %5, align 8
  %152 = getelementptr inbounds %struct.sock, %struct.sock* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %424

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158, %114
  %160 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %161 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %160, i32 0, i32 1
  %162 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %163 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %162, i32 0, i32 4
  %164 = call i32 @ipv6_addr_copy(%struct.in6_addr* %161, %struct.in6_addr* %163)
  %165 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %168 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %235

172:                                              ; preds = %159
  %173 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %174 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %21, align 8
  %176 = load %struct.sock*, %struct.sock** %5, align 8
  %177 = call i32 @SOCK_DEBUG(%struct.sock* %176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %178 = load %struct.sock*, %struct.sock** %5, align 8
  %179 = call i64 @__ipv6_only_sock(%struct.sock* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %172
  %182 = load i32, i32* @ENETUNREACH, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %4, align 4
  br label %424

184:                                              ; preds = %172
  %185 = load i32, i32* @AF_INET, align 4
  %186 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 2
  store i32 %185, i32* %186, align 8
  %187 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %188 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 1
  store i64 %189, i64* %190, align 8
  %191 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %192 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %200 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %199, i32 0, i32 1
  store i32* @dccp_ipv6_mapped, i32** %200, align 8
  %201 = load i32, i32* @dccp_v4_do_rcv, align 4
  %202 = load %struct.sock*, %struct.sock** %5, align 8
  %203 = getelementptr inbounds %struct.sock, %struct.sock* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  %204 = load %struct.sock*, %struct.sock** %5, align 8
  %205 = bitcast %struct.sockaddr_in* %22 to %struct.sockaddr*
  %206 = call i32 @dccp_v4_connect(%struct.sock* %204, %struct.sockaddr* %205, i32 24)
  store i32 %206, i32* %19, align 4
  %207 = load i32, i32* %19, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %184
  %210 = load i64, i64* %21, align 8
  %211 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %212 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %211, i32 0, i32 0
  store i64 %210, i64* %212, align 8
  %213 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %214 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %213, i32 0, i32 1
  store i32* @dccp_ipv6_af_ops, i32** %214, align 8
  %215 = load i32, i32* @dccp_v6_do_rcv, align 4
  %216 = load %struct.sock*, %struct.sock** %5, align 8
  %217 = getelementptr inbounds %struct.sock, %struct.sock* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  br label %418

218:                                              ; preds = %184
  %219 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %220 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %219, i32 0, i32 2
  %221 = call i32 @htonl(i32 65535)
  %222 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %223 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @ipv6_addr_set(%struct.in6_addr* %220, i32 0, i32 0, i32 %221, i32 %224)
  %226 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %227 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %226, i32 0, i32 4
  %228 = call i32 @htonl(i32 65535)
  %229 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %230 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @ipv6_addr_set(%struct.in6_addr* %227, i32 0, i32 0, i32 %228, i32 %231)
  br label %233

233:                                              ; preds = %218
  %234 = load i32, i32* %19, align 4
  store i32 %234, i32* %4, align 4
  br label %424

235:                                              ; preds = %159
  %236 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %237 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %236, i32 0, i32 4
  %238 = call i64 @ipv6_addr_any(%struct.in6_addr* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %235
  %241 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %242 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %241, i32 0, i32 4
  store %struct.in6_addr* %242, %struct.in6_addr** %13, align 8
  br label %243

243:                                              ; preds = %240, %235
  %244 = load i32, i32* @IPPROTO_DCCP, align 4
  %245 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 6
  store i32 %244, i32* %245, align 8
  %246 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 3
  %247 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %248 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %247, i32 0, i32 1
  %249 = call i32 @ipv6_addr_copy(%struct.in6_addr* %246, %struct.in6_addr* %248)
  %250 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 2
  %251 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %252 = icmp ne %struct.in6_addr* %251, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %243
  %254 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  br label %258

255:                                              ; preds = %243
  %256 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %257 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %256, i32 0, i32 2
  br label %258

258:                                              ; preds = %255, %253
  %259 = phi %struct.in6_addr* [ %254, %253 ], [ %257, %255 ]
  %260 = call i32 @ipv6_addr_copy(%struct.in6_addr* %250, %struct.in6_addr* %259)
  %261 = load %struct.sock*, %struct.sock** %5, align 8
  %262 = getelementptr inbounds %struct.sock, %struct.sock* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 1
  store i64 %263, i64* %264, align 8
  %265 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %266 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 5
  store i64 %267, i64* %268, align 8
  %269 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %270 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 4
  store i32 %271, i32* %272, align 8
  %273 = load %struct.sock*, %struct.sock** %5, align 8
  %274 = call i32 @security_sk_classify_flow(%struct.sock* %273, %struct.flowi* %16)
  %275 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %276 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %275, i32 0, i32 3
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %276, align 8
  %278 = icmp ne %struct.TYPE_3__* %277, null
  br i1 %278, label %279, label %300

279:                                              ; preds = %258
  %280 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %281 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %280, i32 0, i32 3
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 2
  %284 = load i32*, i32** %283, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %300

286:                                              ; preds = %279
  %287 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %288 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %287, i32 0, i32 3
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 2
  %291 = load i32*, i32** %290, align 8
  %292 = bitcast i32* %291 to %struct.rt0_hdr*
  store %struct.rt0_hdr* %292, %struct.rt0_hdr** %23, align 8
  %293 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 3
  %294 = call i32 @ipv6_addr_copy(%struct.in6_addr* %15, %struct.in6_addr* %293)
  %295 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 3
  %296 = load %struct.rt0_hdr*, %struct.rt0_hdr** %23, align 8
  %297 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %296, i32 0, i32 0
  %298 = load %struct.in6_addr*, %struct.in6_addr** %297, align 8
  %299 = call i32 @ipv6_addr_copy(%struct.in6_addr* %295, %struct.in6_addr* %298)
  store %struct.in6_addr* %15, %struct.in6_addr** %14, align 8
  br label %300

300:                                              ; preds = %286, %279, %258
  %301 = load %struct.sock*, %struct.sock** %5, align 8
  %302 = call i32 @ip6_dst_lookup(%struct.sock* %301, %struct.dst_entry** %17, %struct.flowi* %16)
  store i32 %302, i32* %19, align 4
  %303 = load i32, i32* %19, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %300
  br label %418

306:                                              ; preds = %300
  %307 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %308 = icmp ne %struct.in6_addr* %307, null
  br i1 %308, label %309, label %313

309:                                              ; preds = %306
  %310 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 3
  %311 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %312 = call i32 @ipv6_addr_copy(%struct.in6_addr* %310, %struct.in6_addr* %311)
  br label %313

313:                                              ; preds = %309, %306
  %314 = load %struct.sock*, %struct.sock** %5, align 8
  %315 = call i32 @sock_net(%struct.sock* %314)
  %316 = load %struct.sock*, %struct.sock** %5, align 8
  %317 = load i32, i32* @XFRM_LOOKUP_WAIT, align 4
  %318 = call i32 @__xfrm_lookup(i32 %315, %struct.dst_entry** %17, %struct.flowi* %16, %struct.sock* %316, i32 %317)
  store i32 %318, i32* %19, align 4
  %319 = load i32, i32* %19, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %334

321:                                              ; preds = %313
  %322 = load i32, i32* %19, align 4
  %323 = load i32, i32* @EREMOTE, align 4
  %324 = sub nsw i32 0, %323
  %325 = icmp eq i32 %322, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %321
  %327 = load %struct.sock*, %struct.sock** %5, align 8
  %328 = call i32 @ip6_dst_blackhole(%struct.sock* %327, %struct.dst_entry** %17, %struct.flowi* %16)
  store i32 %328, i32* %19, align 4
  br label %329

329:                                              ; preds = %326, %321
  %330 = load i32, i32* %19, align 4
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %329
  br label %418

333:                                              ; preds = %329
  br label %334

334:                                              ; preds = %333, %313
  %335 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %336 = icmp eq %struct.in6_addr* %335, null
  br i1 %336, label %337, label %343

337:                                              ; preds = %334
  %338 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 2
  store %struct.in6_addr* %338, %struct.in6_addr** %13, align 8
  %339 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %340 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %339, i32 0, i32 4
  %341 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %342 = call i32 @ipv6_addr_copy(%struct.in6_addr* %340, %struct.in6_addr* %341)
  br label %343

343:                                              ; preds = %337, %334
  %344 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %345 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %344, i32 0, i32 2
  %346 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %347 = call i32 @ipv6_addr_copy(%struct.in6_addr* %345, %struct.in6_addr* %346)
  %348 = load i32, i32* @LOOPBACK4_IPV6, align 4
  %349 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %350 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %349, i32 0, i32 2
  store i32 %348, i32* %350, align 4
  %351 = load %struct.sock*, %struct.sock** %5, align 8
  %352 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  %353 = call i32 @__ip6_dst_store(%struct.sock* %351, %struct.dst_entry* %352, i32* null, i32* null)
  %354 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %355 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %354, i32 0, i32 0
  store i64 0, i64* %355, align 8
  %356 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %357 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %356, i32 0, i32 3
  %358 = load %struct.TYPE_3__*, %struct.TYPE_3__** %357, align 8
  %359 = icmp ne %struct.TYPE_3__* %358, null
  br i1 %359, label %360, label %374

360:                                              ; preds = %343
  %361 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %362 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %361, i32 0, i32 3
  %363 = load %struct.TYPE_3__*, %struct.TYPE_3__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %367 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %366, i32 0, i32 3
  %368 = load %struct.TYPE_3__*, %struct.TYPE_3__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = add nsw i64 %365, %370
  %372 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %373 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %372, i32 0, i32 0
  store i64 %371, i64* %373, align 8
  br label %374

374:                                              ; preds = %360, %343
  %375 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %376 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %375, i32 0, i32 3
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %379 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %378, i32 0, i32 0
  store i64 %377, i64* %379, align 8
  %380 = load %struct.sock*, %struct.sock** %5, align 8
  %381 = load i32, i32* @DCCP_REQUESTING, align 4
  %382 = call i32 @dccp_set_state(%struct.sock* %380, i32 %381)
  %383 = load %struct.sock*, %struct.sock** %5, align 8
  %384 = call i32 @inet6_hash_connect(i32* @dccp_death_row, %struct.sock* %383)
  store i32 %384, i32* %19, align 4
  %385 = load i32, i32* %19, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %374
  br label %412

388:                                              ; preds = %374
  %389 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %390 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %389, i32 0, i32 2
  %391 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %390, i32 0, i32 1
  %392 = load i32*, i32** %391, align 8
  %393 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %394 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %394, i32 0, i32 1
  %396 = load i32*, i32** %395, align 8
  %397 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %398 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %401 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = call i32 @secure_dccpv6_sequence_number(i32* %392, i32* %396, i32 %399, i64 %402)
  %404 = load %struct.dccp_sock*, %struct.dccp_sock** %12, align 8
  %405 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %404, i32 0, i32 0
  store i32 %403, i32* %405, align 4
  %406 = load %struct.sock*, %struct.sock** %5, align 8
  %407 = call i32 @dccp_connect(%struct.sock* %406)
  store i32 %407, i32* %19, align 4
  %408 = load i32, i32* %19, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %388
  br label %412

411:                                              ; preds = %388
  store i32 0, i32* %4, align 4
  br label %424

412:                                              ; preds = %410, %387
  %413 = load %struct.sock*, %struct.sock** %5, align 8
  %414 = load i32, i32* @DCCP_CLOSED, align 4
  %415 = call i32 @dccp_set_state(%struct.sock* %413, i32 %414)
  %416 = load %struct.sock*, %struct.sock** %5, align 8
  %417 = call i32 @__sk_dst_reset(%struct.sock* %416)
  br label %418

418:                                              ; preds = %412, %332, %305, %209
  %419 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %420 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %419, i32 0, i32 0
  store i64 0, i64* %420, align 8
  %421 = load %struct.sock*, %struct.sock** %5, align 8
  %422 = getelementptr inbounds %struct.sock, %struct.sock* %421, i32 0, i32 1
  store i64 0, i64* %422, align 8
  %423 = load i32, i32* %19, align 4
  store i32 %423, i32* %4, align 4
  br label %424

424:                                              ; preds = %418, %411, %233, %181, %155, %141, %111, %80, %49, %40
  %425 = load i32, i32* %4, align 4
  ret i32 %425
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @IP6_ECN_flow_init(i32) #1

declare dso_local %struct.ip6_flowlabel* @fl6_sock_lookup(%struct.sock*, i32) #1

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @fl6_sock_release(%struct.ip6_flowlabel*) #1

declare dso_local i64 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*) #1

declare dso_local i64 @__ipv6_only_sock(%struct.sock*) #1

declare dso_local i32 @dccp_v4_connect(%struct.sock*, %struct.sockaddr*, i32) #1

declare dso_local i32 @ipv6_addr_set(%struct.in6_addr*, i32, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @security_sk_classify_flow(%struct.sock*, %struct.flowi*) #1

declare dso_local i32 @ip6_dst_lookup(%struct.sock*, %struct.dst_entry**, %struct.flowi*) #1

declare dso_local i32 @__xfrm_lookup(i32, %struct.dst_entry**, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @ip6_dst_blackhole(%struct.sock*, %struct.dst_entry**, %struct.flowi*) #1

declare dso_local i32 @__ip6_dst_store(%struct.sock*, %struct.dst_entry*, i32*, i32*) #1

declare dso_local i32 @dccp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @inet6_hash_connect(i32*, %struct.sock*) #1

declare dso_local i32 @secure_dccpv6_sequence_number(i32*, i32*, i32, i64) #1

declare dso_local i32 @dccp_connect(%struct.sock*) #1

declare dso_local i32 @__sk_dst_reset(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
