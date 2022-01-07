; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_twsk_diag_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_twsk_diag_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_timewait_sock = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32 }
%struct.inet_diag_msg = type { i64, i32, %struct.TYPE_2__, i64, i64, i64, i64, i32, i32, i64 }
%struct.TYPE_2__ = type { i32*, i32*, i32, i32, i8**, i32 }

@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet_timewait_sock*, %struct.sk_buff*, i32, i8*, i8*, i32, %struct.nlmsghdr*)* @inet_twsk_diag_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_twsk_diag_fill(%struct.inet_timewait_sock* %0, %struct.sk_buff* %1, i32 %2, i8* %3, i8* %4, i32 %5, %struct.nlmsghdr* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inet_timewait_sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nlmsghdr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.inet_diag_msg*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.nlmsghdr*, align 8
  store %struct.inet_timewait_sock* %0, %struct.inet_timewait_sock** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.nlmsghdr* %6, %struct.nlmsghdr** %15, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = call i8* @skb_tail_pointer(%struct.sk_buff* %20)
  store i8* %21, i8** %18, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %26 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.nlmsghdr* @NLMSG_PUT(%struct.sk_buff* %22, i8* %23, i8* %24, i32 %27, i32 104)
  store %struct.nlmsghdr* %28, %struct.nlmsghdr** %19, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %19, align 8
  %30 = call %struct.inet_diag_msg* @NLMSG_DATA(%struct.nlmsghdr* %29)
  store %struct.inet_diag_msg* %30, %struct.inet_diag_msg** %17, align 8
  %31 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %9, align 8
  %32 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TCP_TIME_WAIT, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %19, align 8
  %40 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %9, align 8
  %42 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @jiffies, align 8
  %45 = sub nsw i64 %43, %44
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %16, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %7
  store i64 0, i64* %16, align 8
  br label %49

49:                                               ; preds = %48, %7
  %50 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %9, align 8
  %51 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %54 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %56 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %55, i32 0, i32 9
  store i64 0, i64* %56, align 8
  %57 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %9, align 8
  %58 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %61 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  store i32 %59, i32* %62, align 8
  %63 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %9, align 8
  %64 = ptrtoint %struct.inet_timewait_sock* %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %67 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  store i8* %65, i8** %70, align 8
  %71 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %9, align 8
  %72 = ptrtoint %struct.inet_timewait_sock* %71 to i64
  %73 = lshr i64 %72, 31
  %74 = lshr i64 %73, 1
  %75 = inttoptr i64 %74 to i8*
  %76 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %77 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  store i8* %75, i8** %80, align 8
  %81 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %9, align 8
  %82 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %85 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 4
  %87 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %9, align 8
  %88 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %91 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  %93 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %9, align 8
  %94 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %97 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %95, i32* %100, align 4
  %101 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %9, align 8
  %102 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %105 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 %103, i32* %108, align 4
  %109 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %9, align 8
  %110 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %113 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 4
  %114 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %115 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %114, i32 0, i32 1
  store i32 3, i32* %115, align 8
  %116 = load i64, i64* %16, align 8
  %117 = mul nsw i64 %116, 1000
  %118 = load i32, i32* @HZ, align 4
  %119 = call i32 @DIV_ROUND_UP(i64 %117, i32 %118)
  %120 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %121 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 8
  %122 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %123 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %122, i32 0, i32 6
  store i64 0, i64* %123, align 8
  %124 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %125 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %124, i32 0, i32 5
  store i64 0, i64* %125, align 8
  %126 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %127 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %126, i32 0, i32 4
  store i64 0, i64* %127, align 8
  %128 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %17, align 8
  %129 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %131 = call i8* @skb_tail_pointer(%struct.sk_buff* %130)
  %132 = load i8*, i8** %18, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = load %struct.nlmsghdr*, %struct.nlmsghdr** %19, align 8
  %138 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %8, align 4
  br label %148

142:                                              ; No predecessors!
  %143 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %144 = load i8*, i8** %18, align 8
  %145 = call i32 @nlmsg_trim(%struct.sk_buff* %143, i8* %144)
  %146 = load i32, i32* @EMSGSIZE, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %142, %49
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.nlmsghdr* @NLMSG_PUT(%struct.sk_buff*, i8*, i8*, i32, i32) #1

declare dso_local %struct.inet_diag_msg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
