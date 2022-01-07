; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_diag_fill_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_diag_fill_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i64, i32 }
%struct.request_sock = type { i64, i32 }
%struct.nlmsghdr = type { i32, i32, i32 }
%struct.inet_request_sock = type { i32, i32, i32 }
%struct.inet_sock = type { i32 }
%struct.inet_diag_msg = type { i64, i32, %struct.TYPE_3__, i64, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32*, i32, i32, i8**, i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@TCP_SYN_RECV = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sock*, %struct.request_sock*, i8*, i8*, %struct.nlmsghdr*)* @inet_diag_fill_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_diag_fill_req(%struct.sk_buff* %0, %struct.sock* %1, %struct.request_sock* %2, i8* %3, i8* %4, %struct.nlmsghdr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.request_sock*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.nlmsghdr*, align 8
  %14 = alloca %struct.inet_request_sock*, align 8
  %15 = alloca %struct.inet_sock*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.inet_diag_msg*, align 8
  %18 = alloca %struct.nlmsghdr*, align 8
  %19 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.request_sock* %2, %struct.request_sock** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.nlmsghdr* %5, %struct.nlmsghdr** %13, align 8
  %20 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %21 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %20)
  store %struct.inet_request_sock* %21, %struct.inet_request_sock** %14, align 8
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = call %struct.inet_sock* @inet_sk(%struct.sock* %22)
  store %struct.inet_sock* %23, %struct.inet_sock** %15, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = call i8* @skb_tail_pointer(%struct.sk_buff* %24)
  store i8* %25, i8** %16, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %30 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.nlmsghdr* @NLMSG_PUT(%struct.sk_buff* %26, i8* %27, i8* %28, i32 %31, i32 104)
  store %struct.nlmsghdr* %32, %struct.nlmsghdr** %18, align 8
  %33 = load i32, i32* @NLM_F_MULTI, align 4
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %35 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %37 = call %struct.inet_diag_msg* @NLMSG_DATA(%struct.nlmsghdr* %36)
  store %struct.inet_diag_msg* %37, %struct.inet_diag_msg** %17, align 8
  %38 = load %struct.sock*, %struct.sock** %9, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %42 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @TCP_SYN_RECV, align 4
  %44 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %45 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 8
  %46 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %47 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %46, i32 0, i32 1
  store i32 1, i32* %47, align 8
  %48 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %49 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %52 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sock*, %struct.sock** %9, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %57 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  store i32 %55, i32* %58, align 8
  %59 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %60 = ptrtoint %struct.request_sock* %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %63 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  store i8* %61, i8** %66, align 8
  %67 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %68 = ptrtoint %struct.request_sock* %67 to i64
  %69 = lshr i64 %68, 31
  %70 = lshr i64 %69, 1
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %73 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  store i8* %71, i8** %76, align 8
  %77 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %78 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @jiffies, align 8
  %81 = sub nsw i64 %79, %80
  store i64 %81, i64* %19, align 8
  %82 = load i64, i64* %19, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %6
  store i64 0, i64* %19, align 8
  br label %85

85:                                               ; preds = %84, %6
  %86 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %87 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %90 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  store i32 %88, i32* %91, align 4
  %92 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %93 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %96 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %99 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %102 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %100, i32* %105, align 4
  %106 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %107 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %110 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %108, i32* %113, align 4
  %114 = load i64, i64* %19, align 8
  %115 = call i32 @jiffies_to_msecs(i64 %114)
  %116 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %117 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 8
  %118 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %119 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %118, i32 0, i32 6
  store i64 0, i64* %119, align 8
  %120 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %121 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %120, i32 0, i32 5
  store i64 0, i64* %121, align 8
  %122 = load %struct.sock*, %struct.sock** %9, align 8
  %123 = call i32 @sock_i_uid(%struct.sock* %122)
  %124 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %125 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %127 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %129 = call i8* @skb_tail_pointer(%struct.sk_buff* %128)
  %130 = load i8*, i8** %16, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %136 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %7, align 4
  br label %144

140:                                              ; No predecessors!
  %141 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %142 = load i8*, i8** %16, align 8
  %143 = call i32 @nlmsg_trim(%struct.sk_buff* %141, i8* %142)
  store i32 -1, i32* %7, align 4
  br label %144

144:                                              ; preds = %140, %85
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.nlmsghdr* @NLMSG_PUT(%struct.sk_buff*, i8*, i8*, i32, i32) #1

declare dso_local %struct.inet_diag_msg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @sock_i_uid(%struct.sock*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
