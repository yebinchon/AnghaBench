; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_datagram.c_ip6_datagram_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_datagram.c_ip6_datagram_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i64, i32, i64, i32, %struct.in6_addr }
%struct.in6_addr = type { i32*, i32* }
%struct.inet_sock = type { i32, i32, i32, i32, i32 }
%struct.ipv6_pinfo = type { i64, i32, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.dst_entry = type { i32 }
%struct.flowi = type { i32, i64, %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.ip6_flowlabel = type { %struct.TYPE_4__*, %struct.in6_addr }
%struct.TYPE_4__ = type { i64 }
%struct.sockaddr_in = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.rt0_hdr = type { %struct.in6_addr* }

@AF_INET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@SIN6_LEN_RFC2133 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@IPV6_FLOWINFO_MASK = common dso_local global i32 0, align 4
@IPV6_FLOWLABEL_MASK = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_MAPPED = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@XFRM_LOOKUP_WAIT = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4
@LOOPBACK4_IPV6 = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_datagram_connect(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.inet_sock*, align 8
  %10 = alloca %struct.ipv6_pinfo*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca %struct.in6_addr, align 8
  %14 = alloca %struct.dst_entry*, align 8
  %15 = alloca %struct.flowi, align 8
  %16 = alloca %struct.ip6_flowlabel*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.sockaddr_in, align 8
  %20 = alloca %struct.rt0_hdr*, align 8
  %21 = alloca %struct.rt0_hdr*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %23 = bitcast %struct.sockaddr* %22 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %23, %struct.sockaddr_in6** %8, align 8
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = call %struct.inet_sock* @inet_sk(%struct.sock* %24)
  store %struct.inet_sock* %25, %struct.inet_sock** %9, align 8
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %26)
  store %struct.ipv6_pinfo* %27, %struct.ipv6_pinfo** %10, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %12, align 8
  store %struct.ip6_flowlabel* null, %struct.ip6_flowlabel** %16, align 8
  %28 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_INET, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %3
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = call i64 @__ipv6_only_sock(%struct.sock* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EAFNOSUPPORT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %437

40:                                               ; preds = %33
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ip4_datagram_connect(%struct.sock* %41, %struct.sockaddr* %42, i32 %43)
  store i32 %44, i32* %18, align 4
  br label %139

45:                                               ; preds = %3
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SIN6_LEN_RFC2133, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %437

52:                                               ; preds = %45
  %53 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AF_INET6, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EAFNOSUPPORT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %437

61:                                               ; preds = %52
  %62 = call i32 @memset(%struct.flowi* %15, i32 0, i32 64)
  %63 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %64 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %61
  %68 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IPV6_FLOWINFO_MASK, align 4
  %72 = and i32 %70, %71
  %73 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %67
  %80 = load %struct.sock*, %struct.sock** %5, align 8
  %81 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.ip6_flowlabel* @fl6_sock_lookup(%struct.sock* %80, i32 %82)
  store %struct.ip6_flowlabel* %83, %struct.ip6_flowlabel** %16, align 8
  %84 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %16, align 8
  %85 = icmp eq %struct.ip6_flowlabel* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %437

89:                                               ; preds = %79
  %90 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %91 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %90, i32 0, i32 4
  %92 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %16, align 8
  %93 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %92, i32 0, i32 1
  %94 = call i32 @ipv6_addr_copy(%struct.in6_addr* %91, %struct.in6_addr* %93)
  br label %95

95:                                               ; preds = %89, %67
  br label %96

96:                                               ; preds = %95, %61
  %97 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %98 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %97, i32 0, i32 4
  %99 = call i32 @ipv6_addr_type(%struct.in6_addr* %98)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %105 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 15
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %96
  %110 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %111 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %110, i32 0, i32 4
  store %struct.in6_addr* %111, %struct.in6_addr** %11, align 8
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %187

115:                                              ; preds = %109
  %116 = load %struct.sock*, %struct.sock** %5, align 8
  %117 = call i64 @__ipv6_only_sock(%struct.sock* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* @ENETUNREACH, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %18, align 4
  br label %433

122:                                              ; preds = %115
  %123 = load i64, i64* @AF_INET, align 8
  %124 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 2
  store i64 %123, i64* %124, align 8
  %125 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %126 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %133 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  store i32 %134, i32* %135, align 8
  %136 = load %struct.sock*, %struct.sock** %5, align 8
  %137 = bitcast %struct.sockaddr_in* %19 to %struct.sockaddr*
  %138 = call i32 @ip4_datagram_connect(%struct.sock* %136, %struct.sockaddr* %137, i32 16)
  store i32 %138, i32* %18, align 4
  br label %139

139:                                              ; preds = %122, %40
  %140 = load i32, i32* %18, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %433

143:                                              ; preds = %139
  %144 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %145 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %144, i32 0, i32 3
  %146 = call i32 @htonl(i32 65535)
  %147 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %148 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ipv6_addr_set(%struct.in6_addr* %145, i32 0, i32 0, i32 %146, i32 %149)
  %151 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %152 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %151, i32 0, i32 2
  %153 = call i64 @ipv6_addr_any(%struct.in6_addr* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %143
  %156 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %157 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %156, i32 0, i32 2
  %158 = call i64 @ipv6_mapped_addr_any(%struct.in6_addr* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %155, %143
  %161 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %162 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %161, i32 0, i32 2
  %163 = call i32 @htonl(i32 65535)
  %164 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %165 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ipv6_addr_set(%struct.in6_addr* %162, i32 0, i32 0, i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %160, %155
  %169 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %170 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %169, i32 0, i32 4
  %171 = call i64 @ipv6_addr_any(%struct.in6_addr* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %175 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %174, i32 0, i32 4
  %176 = call i64 @ipv6_mapped_addr_any(%struct.in6_addr* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %173, %168
  %179 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %180 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %179, i32 0, i32 4
  %181 = call i32 @htonl(i32 65535)
  %182 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %183 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ipv6_addr_set(%struct.in6_addr* %180, i32 0, i32 0, i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %178, %173
  br label %433

187:                                              ; preds = %109
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %248

192:                                              ; preds = %187
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = icmp uge i64 %194, 48
  br i1 %195, label %196, label %223

196:                                              ; preds = %192
  %197 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %198 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %223

201:                                              ; preds = %196
  %202 = load %struct.sock*, %struct.sock** %5, align 8
  %203 = getelementptr inbounds %struct.sock, %struct.sock* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %201
  %207 = load %struct.sock*, %struct.sock** %5, align 8
  %208 = getelementptr inbounds %struct.sock, %struct.sock* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %211 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %209, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %206
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %18, align 4
  br label %433

217:                                              ; preds = %206, %201
  %218 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %219 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.sock*, %struct.sock** %5, align 8
  %222 = getelementptr inbounds %struct.sock, %struct.sock* %221, i32 0, i32 0
  store i64 %220, i64* %222, align 8
  br label %223

223:                                              ; preds = %217, %196, %192
  %224 = load %struct.sock*, %struct.sock** %5, align 8
  %225 = getelementptr inbounds %struct.sock, %struct.sock* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %239, label %228

228:                                              ; preds = %223
  %229 = load i32, i32* %17, align 4
  %230 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %235 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.sock*, %struct.sock** %5, align 8
  %238 = getelementptr inbounds %struct.sock, %struct.sock* %237, i32 0, i32 0
  store i64 %236, i64* %238, align 8
  br label %239

239:                                              ; preds = %233, %228, %223
  %240 = load %struct.sock*, %struct.sock** %5, align 8
  %241 = getelementptr inbounds %struct.sock, %struct.sock* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %239
  %245 = load i32, i32* @EINVAL, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %18, align 4
  br label %433

247:                                              ; preds = %239
  br label %248

248:                                              ; preds = %247, %187
  %249 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %250 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %249, i32 0, i32 3
  %251 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %252 = call i32 @ipv6_addr_copy(%struct.in6_addr* %250, %struct.in6_addr* %251)
  %253 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %256 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %255, i32 0, i32 1
  store i32 %254, i32* %256, align 8
  %257 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %258 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %261 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 4
  %262 = load %struct.sock*, %struct.sock** %5, align 8
  %263 = getelementptr inbounds %struct.sock, %struct.sock* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 6
  store i32 %264, i32* %265, align 8
  %266 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 3
  %267 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %268 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %267, i32 0, i32 3
  %269 = call i32 @ipv6_addr_copy(%struct.in6_addr* %266, %struct.in6_addr* %268)
  %270 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 2
  %271 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %272 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %271, i32 0, i32 2
  %273 = call i32 @ipv6_addr_copy(%struct.in6_addr* %270, %struct.in6_addr* %272)
  %274 = load %struct.sock*, %struct.sock** %5, align 8
  %275 = getelementptr inbounds %struct.sock, %struct.sock* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 1
  store i64 %276, i64* %277, align 8
  %278 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %279 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 5
  store i32 %280, i32* %281, align 4
  %282 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %283 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 4
  store i32 %284, i32* %285, align 8
  %286 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %299, label %289

289:                                              ; preds = %248
  %290 = load i32, i32* %17, align 4
  %291 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %289
  %295 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %296 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 1
  store i64 %297, i64* %298, align 8
  br label %299

299:                                              ; preds = %294, %289, %248
  %300 = load %struct.sock*, %struct.sock** %5, align 8
  %301 = call i32 @security_sk_classify_flow(%struct.sock* %300, %struct.flowi* %15)
  %302 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %16, align 8
  %303 = icmp ne %struct.ip6_flowlabel* %302, null
  br i1 %303, label %304, label %331

304:                                              ; preds = %299
  %305 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %16, align 8
  %306 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %305, i32 0, i32 0
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %306, align 8
  %308 = icmp ne %struct.TYPE_4__* %307, null
  br i1 %308, label %309, label %330

309:                                              ; preds = %304
  %310 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %16, align 8
  %311 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %310, i32 0, i32 0
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %330

316:                                              ; preds = %309
  %317 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %16, align 8
  %318 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %317, i32 0, i32 0
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = inttoptr i64 %321 to %struct.rt0_hdr*
  store %struct.rt0_hdr* %322, %struct.rt0_hdr** %20, align 8
  %323 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 3
  %324 = call i32 @ipv6_addr_copy(%struct.in6_addr* %13, %struct.in6_addr* %323)
  %325 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 3
  %326 = load %struct.rt0_hdr*, %struct.rt0_hdr** %20, align 8
  %327 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %326, i32 0, i32 0
  %328 = load %struct.in6_addr*, %struct.in6_addr** %327, align 8
  %329 = call i32 @ipv6_addr_copy(%struct.in6_addr* %325, %struct.in6_addr* %328)
  store %struct.in6_addr* %13, %struct.in6_addr** %12, align 8
  br label %330

330:                                              ; preds = %316, %309, %304
  br label %358

331:                                              ; preds = %299
  %332 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %333 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %332, i32 0, i32 5
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %333, align 8
  %335 = icmp ne %struct.TYPE_5__* %334, null
  br i1 %335, label %336, label %357

336:                                              ; preds = %331
  %337 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %338 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %337, i32 0, i32 5
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %357

343:                                              ; preds = %336
  %344 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %345 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %344, i32 0, i32 5
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = inttoptr i64 %348 to %struct.rt0_hdr*
  store %struct.rt0_hdr* %349, %struct.rt0_hdr** %21, align 8
  %350 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 3
  %351 = call i32 @ipv6_addr_copy(%struct.in6_addr* %13, %struct.in6_addr* %350)
  %352 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 3
  %353 = load %struct.rt0_hdr*, %struct.rt0_hdr** %21, align 8
  %354 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %353, i32 0, i32 0
  %355 = load %struct.in6_addr*, %struct.in6_addr** %354, align 8
  %356 = call i32 @ipv6_addr_copy(%struct.in6_addr* %352, %struct.in6_addr* %355)
  store %struct.in6_addr* %13, %struct.in6_addr** %12, align 8
  br label %357

357:                                              ; preds = %343, %336, %331
  br label %358

358:                                              ; preds = %357, %330
  %359 = load %struct.sock*, %struct.sock** %5, align 8
  %360 = call i32 @ip6_dst_lookup(%struct.sock* %359, %struct.dst_entry** %14, %struct.flowi* %15)
  store i32 %360, i32* %18, align 4
  %361 = load i32, i32* %18, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %358
  br label %433

364:                                              ; preds = %358
  %365 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %366 = icmp ne %struct.in6_addr* %365, null
  br i1 %366, label %367, label %371

367:                                              ; preds = %364
  %368 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 3
  %369 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %370 = call i32 @ipv6_addr_copy(%struct.in6_addr* %368, %struct.in6_addr* %369)
  br label %371

371:                                              ; preds = %367, %364
  %372 = load %struct.sock*, %struct.sock** %5, align 8
  %373 = call i32 @sock_net(%struct.sock* %372)
  %374 = load %struct.sock*, %struct.sock** %5, align 8
  %375 = load i32, i32* @XFRM_LOOKUP_WAIT, align 4
  %376 = call i32 @__xfrm_lookup(i32 %373, %struct.dst_entry** %14, %struct.flowi* %15, %struct.sock* %374, i32 %375)
  store i32 %376, i32* %18, align 4
  %377 = load i32, i32* %18, align 4
  %378 = icmp slt i32 %377, 0
  br i1 %378, label %379, label %392

379:                                              ; preds = %371
  %380 = load i32, i32* %18, align 4
  %381 = load i32, i32* @EREMOTE, align 4
  %382 = sub nsw i32 0, %381
  %383 = icmp eq i32 %380, %382
  br i1 %383, label %384, label %387

384:                                              ; preds = %379
  %385 = load %struct.sock*, %struct.sock** %5, align 8
  %386 = call i32 @ip6_dst_blackhole(%struct.sock* %385, %struct.dst_entry** %14, %struct.flowi* %15)
  store i32 %386, i32* %18, align 4
  br label %387

387:                                              ; preds = %384, %379
  %388 = load i32, i32* %18, align 4
  %389 = icmp slt i32 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %387
  br label %433

391:                                              ; preds = %387
  br label %392

392:                                              ; preds = %391, %371
  %393 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %394 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %393, i32 0, i32 2
  %395 = call i64 @ipv6_addr_any(%struct.in6_addr* %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %402

397:                                              ; preds = %392
  %398 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %399 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 2
  %401 = call i32 @ipv6_addr_copy(%struct.in6_addr* %399, %struct.in6_addr* %400)
  br label %402

402:                                              ; preds = %397, %392
  %403 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %404 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %403, i32 0, i32 4
  %405 = call i64 @ipv6_addr_any(%struct.in6_addr* %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %415

407:                                              ; preds = %402
  %408 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %409 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %408, i32 0, i32 4
  %410 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 2
  %411 = call i32 @ipv6_addr_copy(%struct.in6_addr* %409, %struct.in6_addr* %410)
  %412 = load i32, i32* @LOOPBACK4_IPV6, align 4
  %413 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %414 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %413, i32 0, i32 0
  store i32 %412, i32* %414, align 4
  br label %415

415:                                              ; preds = %407, %402
  %416 = load %struct.sock*, %struct.sock** %5, align 8
  %417 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %418 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 3
  %419 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %420 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %419, i32 0, i32 3
  %421 = call i64 @ipv6_addr_equal(%struct.in6_addr* %418, %struct.in6_addr* %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %415
  %424 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %425 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %424, i32 0, i32 3
  br label %427

426:                                              ; preds = %415
  br label %427

427:                                              ; preds = %426, %423
  %428 = phi %struct.in6_addr* [ %425, %423 ], [ null, %426 ]
  %429 = call i32 @ip6_dst_store(%struct.sock* %416, %struct.dst_entry* %417, %struct.in6_addr* %428, %struct.in6_addr* null)
  %430 = load i32, i32* @TCP_ESTABLISHED, align 4
  %431 = load %struct.sock*, %struct.sock** %5, align 8
  %432 = getelementptr inbounds %struct.sock, %struct.sock* %431, i32 0, i32 1
  store i32 %430, i32* %432, align 8
  br label %433

433:                                              ; preds = %427, %390, %363, %244, %214, %186, %142, %119
  %434 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %16, align 8
  %435 = call i32 @fl6_sock_release(%struct.ip6_flowlabel* %434)
  %436 = load i32, i32* %18, align 4
  store i32 %436, i32* %4, align 4
  br label %437

437:                                              ; preds = %433, %86, %58, %49, %37
  %438 = load i32, i32* %4, align 4
  ret i32 %438
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @__ipv6_only_sock(%struct.sock*) #1

declare dso_local i32 @ip4_datagram_connect(%struct.sock*, %struct.sockaddr*, i32) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local %struct.ip6_flowlabel* @fl6_sock_lookup(%struct.sock*, i32) #1

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local i32 @ipv6_addr_set(%struct.in6_addr*, i32, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i64 @ipv6_mapped_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @security_sk_classify_flow(%struct.sock*, %struct.flowi*) #1

declare dso_local i32 @ip6_dst_lookup(%struct.sock*, %struct.dst_entry**, %struct.flowi*) #1

declare dso_local i32 @__xfrm_lookup(i32, %struct.dst_entry**, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @ip6_dst_blackhole(%struct.sock*, %struct.dst_entry**, %struct.flowi*) #1

declare dso_local i32 @ip6_dst_store(%struct.sock*, %struct.dst_entry*, %struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @fl6_sock_release(%struct.ip6_flowlabel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
