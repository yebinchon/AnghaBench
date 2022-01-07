; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_mkroute_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_mkroute_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { i32 }
%struct.fib_result = type { i32 }
%struct.flowi = type { i32, i32, i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtable**, %struct.fib_result*, %struct.flowi*, %struct.flowi*, %struct.net_device*, i32)* @ip_mkroute_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_mkroute_output(%struct.rtable** %0, %struct.fib_result* %1, %struct.flowi* %2, %struct.flowi* %3, %struct.net_device* %4, i32 %5) #0 {
  %7 = alloca %struct.rtable**, align 8
  %8 = alloca %struct.fib_result*, align 8
  %9 = alloca %struct.flowi*, align 8
  %10 = alloca %struct.flowi*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtable*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rtable** %0, %struct.rtable*** %7, align 8
  store %struct.fib_result* %1, %struct.fib_result** %8, align 8
  store %struct.flowi* %2, %struct.flowi** %9, align 8
  store %struct.flowi* %3, %struct.flowi** %10, align 8
  store %struct.net_device* %4, %struct.net_device** %11, align 8
  store i32 %5, i32* %12, align 4
  store %struct.rtable* null, %struct.rtable** %13, align 8
  %16 = load %struct.fib_result*, %struct.fib_result** %8, align 8
  %17 = load %struct.flowi*, %struct.flowi** %9, align 8
  %18 = load %struct.flowi*, %struct.flowi** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @__mkroute_output(%struct.rtable** %13, %struct.fib_result* %16, %struct.flowi* %17, %struct.flowi* %18, %struct.net_device* %19, i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %6
  %25 = load %struct.flowi*, %struct.flowi** %10, align 8
  %26 = getelementptr inbounds %struct.flowi, %struct.flowi* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.flowi*, %struct.flowi** %10, align 8
  %29 = getelementptr inbounds %struct.flowi, %struct.flowi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.flowi*, %struct.flowi** %10, align 8
  %32 = getelementptr inbounds %struct.flowi, %struct.flowi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.net_device*, %struct.net_device** %11, align 8
  %35 = call i32 @dev_net(%struct.net_device* %34)
  %36 = call i32 @rt_genid(i32 %35)
  %37 = call i32 @rt_hash(i32 %27, i32 %30, i32 %33, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load %struct.rtable*, %struct.rtable** %13, align 8
  %40 = load %struct.rtable**, %struct.rtable*** %7, align 8
  %41 = call i32 @rt_intern_hash(i32 %38, %struct.rtable* %39, %struct.rtable** %40, i32* null)
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %24, %6
  %43 = load i32, i32* %14, align 4
  ret i32 %43
}

declare dso_local i32 @__mkroute_output(%struct.rtable**, %struct.fib_result*, %struct.flowi*, %struct.flowi*, %struct.net_device*, i32) #1

declare dso_local i32 @rt_hash(i32, i32, i32, i32) #1

declare dso_local i32 @rt_genid(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @rt_intern_hash(i32, %struct.rtable*, %struct.rtable**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
