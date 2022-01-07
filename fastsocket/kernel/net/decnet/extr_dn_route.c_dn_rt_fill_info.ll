; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_rt_fill_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_rt_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dn_route = type { i32, i64, i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.rtmsg = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.nlmsghdr = type { i32 }

@AF_DECnet = common dso_local global i32 0, align 4
@RT_TABLE_MAIN = common dso_local global i32 0, align 4
@RTA_TABLE = common dso_local global i32 0, align 4
@RTM_F_CLONED = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@RTPROT_UNSPEC = common dso_local global i32 0, align 4
@RTCF_NOTIFY = common dso_local global i32 0, align 4
@RTM_F_NOTIFY = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i32 0, align 4
@RTA_SRC = common dso_local global i32 0, align 4
@RTA_OIF = common dso_local global i32 0, align 4
@RTA_PREFSRC = common dso_local global i32 0, align 4
@RTA_GATEWAY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RTA_IIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, i32, i32)* @dn_rt_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_rt_fill_info(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dn_route*, align 8
  %15 = alloca %struct.rtmsg*, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call i64 @skb_dst(%struct.sk_buff* %19)
  %21 = inttoptr i64 %20 to %struct.dn_route*
  store %struct.dn_route* %21, %struct.dn_route** %14, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call i8* @skb_tail_pointer(%struct.sk_buff* %22)
  store i8* %23, i8** %17, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff* %24, i32 %25, i32 %26, i32 %27, i32 48, i32 %28)
  store %struct.nlmsghdr* %29, %struct.nlmsghdr** %16, align 8
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %31 = call %struct.rtmsg* @NLMSG_DATA(%struct.nlmsghdr* %30)
  store %struct.rtmsg* %31, %struct.rtmsg** %15, align 8
  %32 = load i32, i32* @AF_DECnet, align 4
  %33 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %34 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  %35 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %36 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %35, i32 0, i32 0
  store i32 16, i32* %36, align 8
  %37 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %38 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %40 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %39, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @RT_TABLE_MAIN, align 4
  %42 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %43 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = load i32, i32* @RTA_TABLE, align 4
  %46 = load i32, i32* @RT_TABLE_MAIN, align 4
  %47 = call i32 @RTA_PUT_U32(%struct.sk_buff* %44, i32 %45, i32 %46)
  %48 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %49 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %52 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %54 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, -65536
  %57 = load i32, i32* @RTM_F_CLONED, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %60 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %62 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %63 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @RTPROT_UNSPEC, align 4
  %65 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %66 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %68 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @RTCF_NOTIFY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %6
  %74 = load i32, i32* @RTM_F_NOTIFY, align 4
  %75 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %76 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %6
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = load i32, i32* @RTA_DST, align 4
  %82 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %83 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %82, i32 0, i32 1
  %84 = call i32 @RTA_PUT(%struct.sk_buff* %80, i32 %81, i32 2, i64* %83)
  %85 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %86 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %79
  %91 = load %struct.rtmsg*, %struct.rtmsg** %15, align 8
  %92 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %91, i32 0, i32 1
  store i32 16, i32* %92, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %94 = load i32, i32* @RTA_SRC, align 4
  %95 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %96 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = call i32 @RTA_PUT(%struct.sk_buff* %93, i32 %94, i32 2, i64* %97)
  br label %99

99:                                               ; preds = %90, %79
  %100 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %101 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = icmp ne %struct.TYPE_5__* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = load i32, i32* @RTA_OIF, align 4
  %109 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %110 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = call i32 @RTA_PUT(%struct.sk_buff* %107, i32 %108, i32 4, i64* %114)
  br label %116

116:                                              ; preds = %106, %99
  %117 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %118 = load i32, i32* @RTA_PREFSRC, align 4
  %119 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %120 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %119, i32 0, i32 2
  %121 = call i32 @RTA_PUT(%struct.sk_buff* %117, i32 %118, i32 2, i64* %120)
  %122 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %123 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %126 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %116
  %130 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %131 = load i32, i32* @RTA_GATEWAY, align 4
  %132 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %133 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %132, i32 0, i32 3
  %134 = call i32 @RTA_PUT(%struct.sk_buff* %130, i32 %131, i32 2, i64* %133)
  br label %135

135:                                              ; preds = %129, %116
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %138 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @rtnetlink_put_metrics(%struct.sk_buff* %136, i32 %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %203

145:                                              ; preds = %135
  %146 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %147 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %145
  %153 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %154 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @jiffies, align 8
  %159 = sub nsw i64 %157, %158
  br label %161

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %160, %152
  %162 = phi i64 [ %159, %152 ], [ 0, %160 ]
  store i64 %162, i64* %18, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %164 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %165 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %18, align 8
  %168 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %169 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @rtnl_put_cacheinfo(%struct.sk_buff* %163, %struct.TYPE_8__* %166, i32 0, i32 0, i32 0, i64 %167, i32 %172)
  %174 = icmp slt i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %161
  br label %203

176:                                              ; preds = %161
  %177 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %178 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %176
  %183 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %184 = load i32, i32* @RTA_IIF, align 4
  %185 = load %struct.dn_route*, %struct.dn_route** %14, align 8
  %186 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = call i32 @RTA_PUT(%struct.sk_buff* %183, i32 %184, i32 4, i64* %187)
  br label %189

189:                                              ; preds = %182, %176
  %190 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %191 = call i8* @skb_tail_pointer(%struct.sk_buff* %190)
  %192 = load i8*, i8** %17, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = trunc i64 %195 to i32
  %197 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %198 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 4
  %199 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %200 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %7, align 4
  br label %207

202:                                              ; No predecessors!
  br label %203

203:                                              ; preds = %202, %175, %144
  %204 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %205 = load i8*, i8** %17, align 8
  %206 = call i32 @nlmsg_trim(%struct.sk_buff* %204, i8* %205)
  store i32 -1, i32* %7, align 4
  br label %207

207:                                              ; preds = %203, %189
  %208 = load i32, i32* %7, align 4
  ret i32 %208
}

declare dso_local i64 @skb_dst(%struct.sk_buff*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.rtmsg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @RTA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @RTA_PUT(%struct.sk_buff*, i32, i32, i64*) #1

declare dso_local i64 @rtnetlink_put_metrics(%struct.sk_buff*, i32) #1

declare dso_local i64 @rtnl_put_cacheinfo(%struct.sk_buff*, %struct.TYPE_8__*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
