; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_ULOG.c_ulog_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_ULOG.c_ulog_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@nlbufsiz = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ipt_ULOG: can't alloc whole buffer %ub!\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"ipt_ULOG: can't even allocate %ub\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i32)* @ulog_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ulog_alloc_skb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @nlbufsiz, align 4
  %7 = call i32 @max(i32 %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.sk_buff* @alloc_skb(i32 %8, i32 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @PRINTR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.sk_buff* @alloc_skb(i32 %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %3, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @PRINTR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %28, %13
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %31
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @PRINTR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
