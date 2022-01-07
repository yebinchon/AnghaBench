; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_diag_get_exact.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_diag_get_exact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.sock = type { i64 }
%struct.inet_diag_req = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i32, i32, i32*, i32, i32* }
%struct.inet_hashinfo = type { i32 }
%struct.inet_diag_handler = type { i64, %struct.inet_hashinfo* }
%struct.TYPE_4__ = type { i32 }
%struct.inet_timewait_sock = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@INET_DIAG_NOCOOKIE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@idiagnl = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*)* @inet_diag_get_exact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_diag_get_exact(%struct.sk_buff* %0, %struct.nlmsghdr* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nlmsghdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.inet_diag_req*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.inet_hashinfo*, align 8
  %10 = alloca %struct.inet_diag_handler*, align 8
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %4, align 8
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %14 = call %struct.inet_diag_req* @NLMSG_DATA(%struct.nlmsghdr* %13)
  store %struct.inet_diag_req* %14, %struct.inet_diag_req** %7, align 8
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %16 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.inet_diag_handler* @inet_diag_lock_handler(i32 %17)
  store %struct.inet_diag_handler* %18, %struct.inet_diag_handler** %10, align 8
  %19 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %10, align 8
  %20 = call i64 @IS_ERR(%struct.inet_diag_handler* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %10, align 8
  %24 = call i32 @PTR_ERR(%struct.inet_diag_handler* %23)
  store i32 %24, i32* %5, align 4
  br label %186

25:                                               ; preds = %2
  %26 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %10, align 8
  %27 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %26, i32 0, i32 1
  %28 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %27, align 8
  store %struct.inet_hashinfo* %28, %struct.inet_hashinfo** %9, align 8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.inet_diag_req*, %struct.inet_diag_req** %7, align 8
  %32 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_INET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %25
  %37 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %9, align 8
  %38 = load %struct.inet_diag_req*, %struct.inet_diag_req** %7, align 8
  %39 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.inet_diag_req*, %struct.inet_diag_req** %7, align 8
  %45 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.inet_diag_req*, %struct.inet_diag_req** %7, align 8
  %49 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.inet_diag_req*, %struct.inet_diag_req** %7, align 8
  %55 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.inet_diag_req*, %struct.inet_diag_req** %7, align 8
  %59 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.sock* @inet_lookup(i32* @init_net, %struct.inet_hashinfo* %37, i32 %43, i32 %47, i32 %53, i32 %57, i32 %61)
  store %struct.sock* %62, %struct.sock** %6, align 8
  br label %64

63:                                               ; preds = %25
  br label %186

64:                                               ; preds = %36
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  %67 = load %struct.sock*, %struct.sock** %6, align 8
  %68 = icmp eq %struct.sock* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %186

70:                                               ; preds = %64
  %71 = load i32, i32* @ESTALE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  %73 = load %struct.inet_diag_req*, %struct.inet_diag_req** %7, align 8
  %74 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @INET_DIAG_NOCOOKIE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %90, label %81

81:                                               ; preds = %70
  %82 = load %struct.inet_diag_req*, %struct.inet_diag_req** %7, align 8
  %83 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @INET_DIAG_NOCOOKIE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %81, %70
  %91 = load %struct.sock*, %struct.sock** %6, align 8
  %92 = ptrtoint %struct.sock* %91 to i64
  %93 = load %struct.inet_diag_req*, %struct.inet_diag_req** %7, align 8
  %94 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %92, %98
  br i1 %99, label %112, label %100

100:                                              ; preds = %90
  %101 = load %struct.sock*, %struct.sock** %6, align 8
  %102 = ptrtoint %struct.sock* %101 to i64
  %103 = lshr i64 %102, 31
  %104 = lshr i64 %103, 1
  %105 = load %struct.inet_diag_req*, %struct.inet_diag_req** %7, align 8
  %106 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %104, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %100, %90
  br label %168

113:                                              ; preds = %100, %81
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  %116 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %10, align 8
  %117 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add i64 8, %118
  %120 = add i64 %119, 64
  %121 = call i32 @NLMSG_SPACE(i64 %120)
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call %struct.sk_buff* @alloc_skb(i32 %121, i32 %122)
  store %struct.sk_buff* %123, %struct.sk_buff** %8, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = icmp ne %struct.sk_buff* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %113
  br label %168

127:                                              ; preds = %113
  %128 = load %struct.sock*, %struct.sock** %6, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = load %struct.inet_diag_req*, %struct.inet_diag_req** %7, align 8
  %131 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %134 = call i32 @NETLINK_CB(%struct.sk_buff* %133)
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %134, i32* %135, align 4
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %139 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %142 = call i32 @sk_diag_fill(%struct.sock* %128, %struct.sk_buff* %129, i32 %132, i32 %137, i32 %140, i32 0, %struct.nlmsghdr* %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %127
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @EMSGSIZE, align 4
  %148 = sub nsw i32 0, %147
  %149 = icmp eq i32 %146, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @WARN_ON(i32 %150)
  %152 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %153 = call i32 @kfree_skb(%struct.sk_buff* %152)
  br label %168

154:                                              ; preds = %127
  %155 = load i32, i32* @idiagnl, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %158 = call i32 @NETLINK_CB(%struct.sk_buff* %157)
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %158, i32* %159, align 4
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @MSG_DONTWAIT, align 4
  %163 = call i32 @netlink_unicast(i32 %155, %struct.sk_buff* %156, i32 %161, i32 %162)
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %5, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %154
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %154
  br label %168

168:                                              ; preds = %167, %145, %126, %112
  %169 = load %struct.sock*, %struct.sock** %6, align 8
  %170 = icmp ne %struct.sock* %169, null
  br i1 %170, label %171, label %185

171:                                              ; preds = %168
  %172 = load %struct.sock*, %struct.sock** %6, align 8
  %173 = getelementptr inbounds %struct.sock, %struct.sock* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @TCP_TIME_WAIT, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = load %struct.sock*, %struct.sock** %6, align 8
  %179 = bitcast %struct.sock* %178 to %struct.inet_timewait_sock*
  %180 = call i32 @inet_twsk_put(%struct.inet_timewait_sock* %179)
  br label %184

181:                                              ; preds = %171
  %182 = load %struct.sock*, %struct.sock** %6, align 8
  %183 = call i32 @sock_put(%struct.sock* %182)
  br label %184

184:                                              ; preds = %181, %177
  br label %185

185:                                              ; preds = %184, %168
  br label %186

186:                                              ; preds = %185, %69, %63, %22
  %187 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %10, align 8
  %188 = call i32 @inet_diag_unlock_handler(%struct.inet_diag_handler* %187)
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local %struct.inet_diag_req* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local %struct.inet_diag_handler* @inet_diag_lock_handler(i32) #1

declare dso_local i64 @IS_ERR(%struct.inet_diag_handler*) #1

declare dso_local i32 @PTR_ERR(%struct.inet_diag_handler*) #1

declare dso_local %struct.sock* @inet_lookup(i32*, %struct.inet_hashinfo*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @NLMSG_SPACE(i64) #1

declare dso_local i32 @sk_diag_fill(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32, %struct.nlmsghdr*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netlink_unicast(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @inet_twsk_put(%struct.inet_timewait_sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @inet_diag_unlock_handler(%struct.inet_diag_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
