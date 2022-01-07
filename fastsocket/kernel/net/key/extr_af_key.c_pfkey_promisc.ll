; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_promisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i32, i64 }
%struct.pfkey_sock = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BROADCAST_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_promisc(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.pfkey_sock*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = call %struct.pfkey_sock* @pfkey_sk(%struct.sock* %12)
  store %struct.pfkey_sock* %13, %struct.pfkey_sock** %10, align 8
  %14 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %15 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %18 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %20, 4
  br i1 %21, label %22, label %37

22:                                               ; preds = %4
  %23 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %24 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %46

33:                                               ; preds = %27, %22
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %36 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @skb_clone(%struct.sk_buff* %38, i32 %39)
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = load i32, i32* @BROADCAST_ALL, align 4
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  %44 = call i32 @sock_net(%struct.sock* %43)
  %45 = call i32 @pfkey_broadcast(i32 %40, i32 %41, i32 %42, i32* null, i32 %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %37, %30
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.pfkey_sock* @pfkey_sk(%struct.sock*) #1

declare dso_local i32 @pfkey_broadcast(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
