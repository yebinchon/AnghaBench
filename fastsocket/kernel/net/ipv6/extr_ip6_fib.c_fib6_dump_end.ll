; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_dump_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_dump_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { i32*, i8* }
%struct.fib6_walker_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netlink_callback*)* @fib6_dump_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib6_dump_end(%struct.netlink_callback* %0) #0 {
  %2 = alloca %struct.netlink_callback*, align 8
  %3 = alloca %struct.fib6_walker_t*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %2, align 8
  %4 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %5 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 2
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.fib6_walker_t*
  store %struct.fib6_walker_t* %11, %struct.fib6_walker_t** %3, align 8
  %12 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %13 = icmp ne %struct.fib6_walker_t* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %16 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %23 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32 0, i32* %25, align 4
  %26 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %27 = call i32 @fib6_walker_unlink(%struct.fib6_walker_t* %26)
  br label %28

28:                                               ; preds = %21, %14
  %29 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %30 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 0, i32* %32, align 4
  %33 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %34 = call i32 @kfree(%struct.fib6_walker_t* %33)
  br label %35

35:                                               ; preds = %28, %1
  %36 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %37 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %44 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %46 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 3, i32* %48, align 4
  ret void
}

declare dso_local i32 @fib6_walker_unlink(%struct.fib6_walker_t*) #1

declare dso_local i32 @kfree(%struct.fib6_walker_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
