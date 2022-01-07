; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_walker_t = type { i32, i32, i32 }

@FWS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_walker_t*)* @fib6_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_walk(%struct.fib6_walker_t* %0) #0 {
  %2 = alloca %struct.fib6_walker_t*, align 8
  %3 = alloca i32, align 4
  store %struct.fib6_walker_t* %0, %struct.fib6_walker_t** %2, align 8
  %4 = load i32, i32* @FWS_INIT, align 4
  %5 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %2, align 8
  %6 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %5, i32 0, i32 2
  store i32 %4, i32* %6, align 4
  %7 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %2, align 8
  %8 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %2, align 8
  %11 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %2, align 8
  %13 = call i32 @fib6_walker_link(%struct.fib6_walker_t* %12)
  %14 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %2, align 8
  %15 = call i32 @fib6_walk_continue(%struct.fib6_walker_t* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %2, align 8
  %20 = call i32 @fib6_walker_unlink(%struct.fib6_walker_t* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @fib6_walker_link(%struct.fib6_walker_t*) #1

declare dso_local i32 @fib6_walk_continue(%struct.fib6_walker_t*) #1

declare dso_local i32 @fib6_walker_unlink(%struct.fib6_walker_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
