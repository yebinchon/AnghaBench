; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_find_prefix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_find_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rt6_info* }
%struct.fib6_node = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.rt6_info* }
%struct.TYPE_5__ = type { %struct.rt6_info* }

@RTN_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt6_info* (%struct.net*, %struct.fib6_node*)* @fib6_find_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt6_info* @fib6_find_prefix(%struct.net* %0, %struct.fib6_node* %1) #0 {
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.fib6_node*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.fib6_node* %1, %struct.fib6_node** %5, align 8
  %6 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %7 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @RTN_ROOT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = getelementptr inbounds %struct.net, %struct.net* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  store %struct.rt6_info* %16, %struct.rt6_info** %3, align 8
  br label %47

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %43, %17
  %19 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %20 = icmp ne %struct.fib6_node* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %23 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %28 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.rt6_info*, %struct.rt6_info** %30, align 8
  store %struct.rt6_info* %31, %struct.rt6_info** %3, align 8
  br label %47

32:                                               ; preds = %21
  %33 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %34 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %39 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.rt6_info*, %struct.rt6_info** %41, align 8
  store %struct.rt6_info* %42, %struct.rt6_info** %3, align 8
  br label %47

43:                                               ; preds = %32
  %44 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %45 = call %struct.fib6_node* @FIB6_SUBTREE(%struct.fib6_node* %44)
  store %struct.fib6_node* %45, %struct.fib6_node** %5, align 8
  br label %18

46:                                               ; preds = %18
  store %struct.rt6_info* null, %struct.rt6_info** %3, align 8
  br label %47

47:                                               ; preds = %46, %37, %26, %12
  %48 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  ret %struct.rt6_info* %48
}

declare dso_local %struct.fib6_node* @FIB6_SUBTREE(%struct.fib6_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
