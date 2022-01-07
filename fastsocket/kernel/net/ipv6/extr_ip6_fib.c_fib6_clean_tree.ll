; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_clean_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_clean_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib6_node = type { i32 }
%struct.rt6_info = type opaque
%struct.fib6_cleaner_t = type { i32 (%struct.rt6_info.0*, i8*)*, %struct.TYPE_2__, %struct.net*, i8* }
%struct.rt6_info.0 = type opaque
%struct.TYPE_2__ = type { i32, i32, %struct.fib6_node* }

@fib6_clean_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.fib6_node*, i32 (%struct.rt6_info*, i8*)*, i32, i8*)* @fib6_clean_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib6_clean_tree(%struct.net* %0, %struct.fib6_node* %1, i32 (%struct.rt6_info*, i8*)* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.fib6_node*, align 8
  %8 = alloca i32 (%struct.rt6_info*, i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.fib6_cleaner_t, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.fib6_node* %1, %struct.fib6_node** %7, align 8
  store i32 (%struct.rt6_info*, i8*)* %2, i32 (%struct.rt6_info*, i8*)** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %13 = getelementptr inbounds %struct.fib6_cleaner_t, %struct.fib6_cleaner_t* %11, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store %struct.fib6_node* %12, %struct.fib6_node** %14, align 8
  %15 = load i32, i32* @fib6_clean_node, align 4
  %16 = getelementptr inbounds %struct.fib6_cleaner_t, %struct.fib6_cleaner_t* %11, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.fib6_cleaner_t, %struct.fib6_cleaner_t* %11, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32 (%struct.rt6_info*, i8*)*, i32 (%struct.rt6_info*, i8*)** %8, align 8
  %22 = bitcast i32 (%struct.rt6_info*, i8*)* %21 to i32 (%struct.rt6_info.0*, i8*)*
  %23 = getelementptr inbounds %struct.fib6_cleaner_t, %struct.fib6_cleaner_t* %11, i32 0, i32 0
  store i32 (%struct.rt6_info.0*, i8*)* %22, i32 (%struct.rt6_info.0*, i8*)** %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds %struct.fib6_cleaner_t, %struct.fib6_cleaner_t* %11, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = load %struct.net*, %struct.net** %6, align 8
  %27 = getelementptr inbounds %struct.fib6_cleaner_t, %struct.fib6_cleaner_t* %11, i32 0, i32 2
  store %struct.net* %26, %struct.net** %27, align 8
  %28 = getelementptr inbounds %struct.fib6_cleaner_t, %struct.fib6_cleaner_t* %11, i32 0, i32 1
  %29 = call i32 @fib6_walk(%struct.TYPE_2__* %28)
  ret void
}

declare dso_local i32 @fib6_walk(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
