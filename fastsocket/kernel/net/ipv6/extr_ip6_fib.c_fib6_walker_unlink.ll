; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_walker_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_walker_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_walker_t = type { %struct.fib6_walker_t*, %struct.fib6_walker_t* }

@fib6_walker_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fib6_walker_t*)* @fib6_walker_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib6_walker_unlink(%struct.fib6_walker_t* %0) #0 {
  %2 = alloca %struct.fib6_walker_t*, align 8
  store %struct.fib6_walker_t* %0, %struct.fib6_walker_t** %2, align 8
  %3 = call i32 @write_lock_bh(i32* @fib6_walker_lock)
  %4 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %2, align 8
  %5 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %4, i32 0, i32 1
  %6 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %5, align 8
  %7 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %2, align 8
  %8 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %7, i32 0, i32 0
  %9 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %8, align 8
  %10 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %9, i32 0, i32 1
  store %struct.fib6_walker_t* %6, %struct.fib6_walker_t** %10, align 8
  %11 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %2, align 8
  %12 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %11, i32 0, i32 0
  %13 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %12, align 8
  %14 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %2, align 8
  %15 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %14, i32 0, i32 1
  %16 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %15, align 8
  %17 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %16, i32 0, i32 0
  store %struct.fib6_walker_t* %13, %struct.fib6_walker_t** %17, align 8
  %18 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %2, align 8
  %19 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %2, align 8
  %20 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %19, i32 0, i32 0
  store %struct.fib6_walker_t* %18, %struct.fib6_walker_t** %20, align 8
  %21 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %2, align 8
  %22 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %21, i32 0, i32 1
  store %struct.fib6_walker_t* %18, %struct.fib6_walker_t** %22, align 8
  %23 = call i32 @write_unlock_bh(i32* @fib6_walker_lock)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
