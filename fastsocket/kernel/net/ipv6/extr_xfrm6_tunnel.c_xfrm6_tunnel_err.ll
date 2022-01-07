; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_tunnel.c_xfrm6_tunnel_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_tunnel.c_xfrm6_tunnel_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.inet6_skb_parm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)* @xfrm6_tunnel_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm6_tunnel_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.inet6_skb_parm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %32 [
    i32 139, label %14
    i32 132, label %19
    i32 130, label %20
    i32 133, label %26
  ]

14:                                               ; preds = %6
  %15 = load i32, i32* %10, align 4
  switch i32 %15, label %17 [
    i32 135, label %16
    i32 140, label %16
    i32 134, label %16
    i32 141, label %16
    i32 131, label %16
  ]

16:                                               ; preds = %14, %14, %14, %14, %14
  br label %17

17:                                               ; preds = %14, %16
  br label %18

18:                                               ; preds = %17
  br label %33

19:                                               ; preds = %6
  br label %33

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %24 [
    i32 137, label %22
    i32 138, label %23
  ]

22:                                               ; preds = %20
  br label %25

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %20, %23
  br label %25

25:                                               ; preds = %24, %22
  br label %33

26:                                               ; preds = %6
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %31 [
    i32 136, label %28
    i32 129, label %29
    i32 128, label %30
  ]

28:                                               ; preds = %26
  br label %31

29:                                               ; preds = %26
  br label %31

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %26, %30, %29, %28
  br label %33

32:                                               ; preds = %6
  br label %33

33:                                               ; preds = %32, %31, %25, %19, %18
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
