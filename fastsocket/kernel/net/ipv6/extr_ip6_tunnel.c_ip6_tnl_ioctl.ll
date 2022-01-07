; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ip6_tnl_parm = type { i32 }
%struct.ip6_tnl = type { %struct.net_device*, %struct.ip6_tnl_parm }
%struct.net = type { i32 }
%struct.ip6_tnl_net = type { %struct.net_device* }

@ip6_tnl_net_id = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_IPIP = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ip6_tnl_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_tnl_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip6_tnl_parm, align 4
  %9 = alloca %struct.ip6_tnl*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.ip6_tnl_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.ip6_tnl* null, %struct.ip6_tnl** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.net* @dev_net(%struct.net_device* %12)
  store %struct.net* %13, %struct.net** %10, align 8
  %14 = load %struct.net*, %struct.net** %10, align 8
  %15 = load i32, i32* @ip6_tnl_net_id, align 4
  %16 = call %struct.ip6_tnl_net* @net_generic(%struct.net* %14, i32 %15)
  store %struct.ip6_tnl_net* %16, %struct.ip6_tnl_net** %11, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %208 [
    i32 128, label %18
    i32 131, label %57
    i32 130, label %57
    i32 129, label %160
  ]

18:                                               ; preds = %3
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %11, align 8
  %21 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  %23 = icmp eq %struct.net_device* %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @copy_from_user(%struct.ip6_tnl_parm* %8, i32 %28, i32 4)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %211

34:                                               ; preds = %24
  %35 = load %struct.net*, %struct.net** %10, align 8
  %36 = call %struct.ip6_tnl* @ip6_tnl_locate(%struct.net* %35, %struct.ip6_tnl_parm* %8, i32 0)
  store %struct.ip6_tnl* %36, %struct.ip6_tnl** %9, align 8
  br label %37

37:                                               ; preds = %34, %18
  %38 = load %struct.ip6_tnl*, %struct.ip6_tnl** %9, align 8
  %39 = icmp eq %struct.ip6_tnl* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %41)
  store %struct.ip6_tnl* %42, %struct.ip6_tnl** %9, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.ip6_tnl*, %struct.ip6_tnl** %9, align 8
  %45 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %44, i32 0, i32 1
  %46 = call i32 @memcpy(%struct.ip6_tnl_parm* %8, %struct.ip6_tnl_parm* %45, i32 4)
  %47 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %48 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @copy_to_user(i32 %50, %struct.ip6_tnl_parm* %8, i32 4)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %43
  br label %211

57:                                               ; preds = %3, %3
  %58 = load i32, i32* @EPERM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @CAP_NET_ADMIN, align 4
  %61 = call i32 @capable(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %211

64:                                               ; preds = %57
  %65 = load i32, i32* @EFAULT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  %67 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %68 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @copy_from_user(%struct.ip6_tnl_parm* %8, i32 %70, i32 4)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %211

74:                                               ; preds = %64
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  %77 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IPPROTO_IPV6, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %8, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IPPROTO_IPIP, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %8, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %211

91:                                               ; preds = %86, %81, %74
  %92 = load %struct.net*, %struct.net** %10, align 8
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 131
  %95 = zext i1 %94 to i32
  %96 = call %struct.ip6_tnl* @ip6_tnl_locate(%struct.net* %92, %struct.ip6_tnl_parm* %8, i32 %95)
  store %struct.ip6_tnl* %96, %struct.ip6_tnl** %9, align 8
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %11, align 8
  %99 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %98, i32 0, i32 0
  %100 = load %struct.net_device*, %struct.net_device** %99, align 8
  %101 = icmp ne %struct.net_device* %97, %100
  br i1 %101, label %102, label %132

102:                                              ; preds = %91
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 130
  br i1 %104, label %105, label %132

105:                                              ; preds = %102
  %106 = load %struct.ip6_tnl*, %struct.ip6_tnl** %9, align 8
  %107 = icmp ne %struct.ip6_tnl* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load %struct.ip6_tnl*, %struct.ip6_tnl** %9, align 8
  %110 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %109, i32 0, i32 0
  %111 = load %struct.net_device*, %struct.net_device** %110, align 8
  %112 = load %struct.net_device*, %struct.net_device** %4, align 8
  %113 = icmp ne %struct.net_device* %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* @EEXIST, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %7, align 4
  br label %211

117:                                              ; preds = %108
  br label %121

118:                                              ; preds = %105
  %119 = load %struct.net_device*, %struct.net_device** %4, align 8
  %120 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %119)
  store %struct.ip6_tnl* %120, %struct.ip6_tnl** %9, align 8
  br label %121

121:                                              ; preds = %118, %117
  %122 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %11, align 8
  %123 = load %struct.ip6_tnl*, %struct.ip6_tnl** %9, align 8
  %124 = call i32 @ip6_tnl_unlink(%struct.ip6_tnl_net* %122, %struct.ip6_tnl* %123)
  %125 = load %struct.ip6_tnl*, %struct.ip6_tnl** %9, align 8
  %126 = call i32 @ip6_tnl_change(%struct.ip6_tnl* %125, %struct.ip6_tnl_parm* %8)
  store i32 %126, i32* %7, align 4
  %127 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %11, align 8
  %128 = load %struct.ip6_tnl*, %struct.ip6_tnl** %9, align 8
  %129 = call i32 @ip6_tnl_link(%struct.ip6_tnl_net* %127, %struct.ip6_tnl* %128)
  %130 = load %struct.net_device*, %struct.net_device** %4, align 8
  %131 = call i32 @netdev_state_change(%struct.net_device* %130)
  br label %132

132:                                              ; preds = %121, %102, %91
  %133 = load %struct.ip6_tnl*, %struct.ip6_tnl** %9, align 8
  %134 = icmp ne %struct.ip6_tnl* %133, null
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  store i32 0, i32* %7, align 4
  %136 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %137 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ip6_tnl*, %struct.ip6_tnl** %9, align 8
  %141 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %140, i32 0, i32 1
  %142 = call i32 @copy_to_user(i32 %139, %struct.ip6_tnl_parm* %141, i32 4)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %135
  %145 = load i32, i32* @EFAULT, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %144, %135
  br label %159

148:                                              ; preds = %132
  %149 = load i32, i32* %6, align 4
  %150 = icmp eq i32 %149, 131
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* @ENOBUFS, align 4
  %153 = sub nsw i32 0, %152
  br label %157

154:                                              ; preds = %148
  %155 = load i32, i32* @ENOENT, align 4
  %156 = sub nsw i32 0, %155
  br label %157

157:                                              ; preds = %154, %151
  %158 = phi i32 [ %153, %151 ], [ %156, %154 ]
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %157, %147
  br label %211

160:                                              ; preds = %3
  %161 = load i32, i32* @EPERM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* @CAP_NET_ADMIN, align 4
  %164 = call i32 @capable(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %160
  br label %211

167:                                              ; preds = %160
  %168 = load %struct.net_device*, %struct.net_device** %4, align 8
  %169 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %11, align 8
  %170 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %169, i32 0, i32 0
  %171 = load %struct.net_device*, %struct.net_device** %170, align 8
  %172 = icmp eq %struct.net_device* %168, %171
  br i1 %172, label %173, label %205

173:                                              ; preds = %167
  %174 = load i32, i32* @EFAULT, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %7, align 4
  %176 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %177 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @copy_from_user(%struct.ip6_tnl_parm* %8, i32 %179, i32 4)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  br label %211

183:                                              ; preds = %173
  %184 = load i32, i32* @ENOENT, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %7, align 4
  %186 = load %struct.net*, %struct.net** %10, align 8
  %187 = call %struct.ip6_tnl* @ip6_tnl_locate(%struct.net* %186, %struct.ip6_tnl_parm* %8, i32 0)
  store %struct.ip6_tnl* %187, %struct.ip6_tnl** %9, align 8
  %188 = icmp eq %struct.ip6_tnl* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %211

190:                                              ; preds = %183
  %191 = load i32, i32* @EPERM, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %7, align 4
  %193 = load %struct.ip6_tnl*, %struct.ip6_tnl** %9, align 8
  %194 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %193, i32 0, i32 0
  %195 = load %struct.net_device*, %struct.net_device** %194, align 8
  %196 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %11, align 8
  %197 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %196, i32 0, i32 0
  %198 = load %struct.net_device*, %struct.net_device** %197, align 8
  %199 = icmp eq %struct.net_device* %195, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %190
  br label %211

201:                                              ; preds = %190
  %202 = load %struct.ip6_tnl*, %struct.ip6_tnl** %9, align 8
  %203 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %202, i32 0, i32 0
  %204 = load %struct.net_device*, %struct.net_device** %203, align 8
  store %struct.net_device* %204, %struct.net_device** %4, align 8
  br label %205

205:                                              ; preds = %201, %167
  store i32 0, i32* %7, align 4
  %206 = load %struct.net_device*, %struct.net_device** %4, align 8
  %207 = call i32 @unregister_netdevice(%struct.net_device* %206)
  br label %211

208:                                              ; preds = %3
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %7, align 4
  br label %211

211:                                              ; preds = %208, %205, %200, %189, %182, %166, %159, %114, %90, %73, %63, %56, %31
  %212 = load i32, i32* %7, align 4
  ret i32 %212
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.ip6_tnl_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @copy_from_user(%struct.ip6_tnl_parm*, i32, i32) #1

declare dso_local %struct.ip6_tnl* @ip6_tnl_locate(%struct.net*, %struct.ip6_tnl_parm*, i32) #1

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(%struct.ip6_tnl_parm*, %struct.ip6_tnl_parm*, i32) #1

declare dso_local i32 @copy_to_user(i32, %struct.ip6_tnl_parm*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @ip6_tnl_unlink(%struct.ip6_tnl_net*, %struct.ip6_tnl*) #1

declare dso_local i32 @ip6_tnl_change(%struct.ip6_tnl*, %struct.ip6_tnl_parm*) #1

declare dso_local i32 @ip6_tnl_link(%struct.ip6_tnl_net*, %struct.ip6_tnl*) #1

declare dso_local i32 @netdev_state_change(%struct.net_device*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
