; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_dump_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_dump_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_walker_t = type { %struct.rt6_info*, i32 }
%struct.rt6_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rt6_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_walker_t*)* @fib6_dump_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_dump_node(%struct.fib6_walker_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fib6_walker_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt6_info*, align 8
  store %struct.fib6_walker_t* %0, %struct.fib6_walker_t** %3, align 8
  %6 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %7 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %6, i32 0, i32 0
  %8 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  store %struct.rt6_info* %8, %struct.rt6_info** %5, align 8
  br label %9

9:                                                ; preds = %29, %1
  %10 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %11 = icmp ne %struct.rt6_info* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %14 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %15 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @rt6_dump_route(%struct.rt6_info* %13, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %22 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %23 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %22, i32 0, i32 0
  store %struct.rt6_info* %21, %struct.rt6_info** %23, align 8
  store i32 1, i32* %2, align 4
  br label %38

24:                                               ; preds = %12
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  br label %29

29:                                               ; preds = %24
  %30 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %31 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.rt6_info*, %struct.rt6_info** %33, align 8
  store %struct.rt6_info* %34, %struct.rt6_info** %5, align 8
  br label %9

35:                                               ; preds = %9
  %36 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %37 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %36, i32 0, i32 0
  store %struct.rt6_info* null, %struct.rt6_info** %37, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %20
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @rt6_dump_route(%struct.rt6_info*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
