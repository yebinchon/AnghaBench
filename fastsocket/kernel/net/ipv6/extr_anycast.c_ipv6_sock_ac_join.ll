; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_anycast.c_ipv6_sock_ac_join.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_anycast.c_ipv6_sock_ac_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6_pinfo = type { %struct.ipv6_ac_socklist* }
%struct.ipv6_ac_socklist = type { %struct.ipv6_ac_socklist*, i32, i32 }
%struct.net_device = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.rt6_info = type { %struct.TYPE_7__, %struct.net_device* }
%struct.TYPE_7__ = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ipv6_sk_ac_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_sock_ac_join(%struct.sock* %0, i32 %1, %struct.in6_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.ipv6_pinfo*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.inet6_dev*, align 8
  %11 = alloca %struct.ipv6_ac_socklist*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rt6_info*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %16)
  store %struct.ipv6_pinfo* %17, %struct.ipv6_pinfo** %8, align 8
  store %struct.net_device* null, %struct.net_device** %9, align 8
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = call %struct.net* @sock_net(%struct.sock* %18)
  store %struct.net* %19, %struct.net** %12, align 8
  %20 = load %struct.net*, %struct.net** %12, align 8
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %29 = load i32, i32* @CAP_NET_ADMIN, align 4
  %30 = call i32 @capable(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %182

35:                                               ; preds = %3
  %36 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %37 = call i64 @ipv6_addr_is_multicast(%struct.in6_addr* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %182

42:                                               ; preds = %35
  %43 = load %struct.net*, %struct.net** %12, align 8
  %44 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %45 = call i64 @ipv6_chk_addr(%struct.net* %43, %struct.in6_addr* %44, i32* null, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %182

50:                                               ; preds = %42
  %51 = load %struct.sock*, %struct.sock** %5, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.ipv6_ac_socklist* @sock_kmalloc(%struct.sock* %51, i32 16, i32 %52)
  store %struct.ipv6_ac_socklist* %53, %struct.ipv6_ac_socklist** %11, align 8
  %54 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %55 = icmp eq %struct.ipv6_ac_socklist* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %182

59:                                               ; preds = %50
  %60 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %61 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %60, i32 0, i32 0
  store %struct.ipv6_ac_socklist* null, %struct.ipv6_ac_socklist** %61, align 8
  %62 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %63 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %62, i32 0, i32 2
  %64 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %65 = call i32 @ipv6_addr_copy(i32* %63, %struct.in6_addr* %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %59
  %69 = load %struct.net*, %struct.net** %12, align 8
  %70 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %71 = call %struct.rt6_info* @rt6_lookup(%struct.net* %69, %struct.in6_addr* %70, i32* null, i32 0, i32 0)
  store %struct.rt6_info* %71, %struct.rt6_info** %15, align 8
  %72 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  %73 = icmp ne %struct.rt6_info* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  %76 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %75, i32 0, i32 1
  %77 = load %struct.net_device*, %struct.net_device** %76, align 8
  store %struct.net_device* %77, %struct.net_device** %9, align 8
  %78 = load %struct.net_device*, %struct.net_device** %9, align 8
  %79 = call i32 @dev_hold(%struct.net_device* %78)
  %80 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  %81 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = call i32 @dst_release(i32* %82)
  br label %98

84:                                               ; preds = %68
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @EADDRNOTAVAIL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %14, align 4
  br label %177

90:                                               ; preds = %84
  %91 = load %struct.net*, %struct.net** %12, align 8
  %92 = load i32, i32* @IFF_UP, align 4
  %93 = load i32, i32* @IFF_UP, align 4
  %94 = load i32, i32* @IFF_LOOPBACK, align 4
  %95 = or i32 %93, %94
  %96 = call %struct.net_device* @dev_get_by_flags(%struct.net* %91, i32 %92, i32 %95)
  store %struct.net_device* %96, %struct.net_device** %9, align 8
  br label %97

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %74
  br label %103

99:                                               ; preds = %59
  %100 = load %struct.net*, %struct.net** %12, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call %struct.net_device* @dev_get_by_index(%struct.net* %100, i32 %101)
  store %struct.net_device* %102, %struct.net_device** %9, align 8
  br label %103

103:                                              ; preds = %99, %98
  %104 = load %struct.net_device*, %struct.net_device** %9, align 8
  %105 = icmp eq %struct.net_device* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %14, align 4
  br label %177

109:                                              ; preds = %103
  %110 = load %struct.net_device*, %struct.net_device** %9, align 8
  %111 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %110)
  store %struct.inet6_dev* %111, %struct.inet6_dev** %10, align 8
  %112 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %113 = icmp ne %struct.inet6_dev* %112, null
  br i1 %113, label %124, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @ENODEV, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %14, align 4
  br label %123

120:                                              ; preds = %114
  %121 = load i32, i32* @EADDRNOTAVAIL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %120, %117
  br label %174

124:                                              ; preds = %109
  %125 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %126 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %13, align 4
  %132 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %133 = call i32 @in6_dev_put(%struct.inet6_dev* %132)
  %134 = load %struct.net_device*, %struct.net_device** %9, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %138 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %140 = load %struct.net_device*, %struct.net_device** %9, align 8
  %141 = call i32 @ipv6_chk_prefix(%struct.in6_addr* %139, %struct.net_device* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %124
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* @EADDRNOTAVAIL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %174

153:                                              ; preds = %149
  br label %154

154:                                              ; preds = %153, %124
  %155 = load %struct.net_device*, %struct.net_device** %9, align 8
  %156 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %157 = call i32 @ipv6_dev_ac_inc(%struct.net_device* %155, %struct.in6_addr* %156)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %174

161:                                              ; preds = %154
  %162 = call i32 @write_lock_bh(i32* @ipv6_sk_ac_lock)
  %163 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %164 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %163, i32 0, i32 0
  %165 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %164, align 8
  %166 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %167 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %166, i32 0, i32 0
  store %struct.ipv6_ac_socklist* %165, %struct.ipv6_ac_socklist** %167, align 8
  %168 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %169 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %170 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %169, i32 0, i32 0
  store %struct.ipv6_ac_socklist* %168, %struct.ipv6_ac_socklist** %170, align 8
  %171 = call i32 @write_unlock_bh(i32* @ipv6_sk_ac_lock)
  %172 = load %struct.net_device*, %struct.net_device** %9, align 8
  %173 = call i32 @dev_put(%struct.net_device* %172)
  store i32 0, i32* %4, align 4
  br label %182

174:                                              ; preds = %160, %152, %123
  %175 = load %struct.net_device*, %struct.net_device** %9, align 8
  %176 = call i32 @dev_put(%struct.net_device* %175)
  br label %177

177:                                              ; preds = %174, %106, %87
  %178 = load %struct.sock*, %struct.sock** %5, align 8
  %179 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %180 = call i32 @sock_kfree_s(%struct.sock* %178, %struct.ipv6_ac_socklist* %179, i32 16)
  %181 = load i32, i32* %14, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %177, %161, %56, %47, %39, %32
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @ipv6_addr_is_multicast(%struct.in6_addr*) #1

declare dso_local i64 @ipv6_chk_addr(%struct.net*, %struct.in6_addr*, i32*, i32) #1

declare dso_local %struct.ipv6_ac_socklist* @sock_kmalloc(%struct.sock*, i32, i32) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.in6_addr*) #1

declare dso_local %struct.rt6_info* @rt6_lookup(%struct.net*, %struct.in6_addr*, i32*, i32, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @dst_release(i32*) #1

declare dso_local %struct.net_device* @dev_get_by_flags(%struct.net*, i32, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @ipv6_chk_prefix(%struct.in6_addr*, %struct.net_device*) #1

declare dso_local i32 @ipv6_dev_ac_inc(%struct.net_device*, %struct.in6_addr*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.ipv6_ac_socklist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
