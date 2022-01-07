; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_mkroute_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_mkroute_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.fib_result = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.flowi = type { i64, i32 }
%struct.in_device = type { i32 }
%struct.rtable = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.fib_result*, %struct.flowi*, %struct.in_device*, i32, i32, i32)* @ip_mkroute_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_mkroute_input(%struct.sk_buff* %0, %struct.fib_result* %1, %struct.flowi* %2, %struct.in_device* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.fib_result*, align 8
  %11 = alloca %struct.flowi*, align 8
  %12 = alloca %struct.in_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rtable*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.fib_result* %1, %struct.fib_result** %10, align 8
  store %struct.flowi* %2, %struct.flowi** %11, align 8
  store %struct.in_device* %3, %struct.in_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.rtable* null, %struct.rtable** %16, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = load %struct.fib_result*, %struct.fib_result** %10, align 8
  %21 = load %struct.in_device*, %struct.in_device** %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call i32 @__mkroute_input(%struct.sk_buff* %19, %struct.fib_result* %20, %struct.in_device* %21, i32 %22, i32 %23, i32 %24, %struct.rtable** %16)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* %17, align 4
  store i32 %29, i32* %8, align 4
  br label %48

30:                                               ; preds = %7
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.flowi*, %struct.flowi** %11, align 8
  %34 = getelementptr inbounds %struct.flowi, %struct.flowi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.rtable*, %struct.rtable** %16, align 8
  %37 = getelementptr inbounds %struct.rtable, %struct.rtable* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_net(i32 %40)
  %42 = call i32 @rt_genid(i32 %41)
  %43 = call i32 @rt_hash(i32 %31, i32 %32, i32 %35, i32 %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = load %struct.rtable*, %struct.rtable** %16, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = call i32 @rt_intern_hash(i32 %44, %struct.rtable* %45, i32* null, %struct.sk_buff* %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %30, %28
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @__mkroute_input(%struct.sk_buff*, %struct.fib_result*, %struct.in_device*, i32, i32, i32, %struct.rtable**) #1

declare dso_local i32 @rt_hash(i32, i32, i32, i32) #1

declare dso_local i32 @rt_genid(i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @rt_intern_hash(i32, %struct.rtable*, i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
