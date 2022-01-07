; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_frontend.c_inet_rtm_newroute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_frontend.c_inet_rtm_newroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.fib_config = type { i32 }
%struct.fib_table = type { i32 (%struct.fib_table*, %struct.fib_config.0*)* }
%struct.fib_config.0 = type opaque

@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @inet_rtm_newroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_rtm_newroute(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.fib_config, align 4
  %9 = alloca %struct.fib_table*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net* @sock_net(i32 %13)
  store %struct.net* %14, %struct.net** %7, align 8
  %15 = load %struct.net*, %struct.net** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %18 = call i32 @rtm_to_fib_config(%struct.net* %15, %struct.sk_buff* %16, %struct.nlmsghdr* %17, %struct.fib_config* %8)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %39

22:                                               ; preds = %3
  %23 = load %struct.net*, %struct.net** %7, align 8
  %24 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.fib_table* @fib_new_table(%struct.net* %23, i32 %25)
  store %struct.fib_table* %26, %struct.fib_table** %9, align 8
  %27 = load %struct.fib_table*, %struct.fib_table** %9, align 8
  %28 = icmp eq %struct.fib_table* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOBUFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %39

32:                                               ; preds = %22
  %33 = load %struct.fib_table*, %struct.fib_table** %9, align 8
  %34 = getelementptr inbounds %struct.fib_table, %struct.fib_table* %33, i32 0, i32 0
  %35 = load i32 (%struct.fib_table*, %struct.fib_config.0*)*, i32 (%struct.fib_table*, %struct.fib_config.0*)** %34, align 8
  %36 = load %struct.fib_table*, %struct.fib_table** %9, align 8
  %37 = bitcast %struct.fib_config* %8 to %struct.fib_config.0*
  %38 = call i32 %35(%struct.fib_table* %36, %struct.fib_config.0* %37)
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %32, %29, %21
  %40 = load i32, i32* %10, align 4
  ret i32 %40
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @rtm_to_fib_config(%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.fib_config*) #1

declare dso_local %struct.fib_table* @fib_new_table(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
