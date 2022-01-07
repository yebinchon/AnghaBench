; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.sk_buff*, %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_buff = type { %struct.sk_buff* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_stop(%struct.link* %0) #0 {
  %2 = alloca %struct.link*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.link* %0, %struct.link** %2, align 8
  %5 = load %struct.link*, %struct.link** %2, align 8
  %6 = getelementptr inbounds %struct.link, %struct.link* %5, i32 0, i32 2
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %7, %struct.sk_buff** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i32 @buf_discard(%struct.sk_buff* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %3, align 8
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.link*, %struct.link** %2, align 8
  %20 = getelementptr inbounds %struct.link, %struct.link* %19, i32 0, i32 1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %3, align 8
  br label %22

22:                                               ; preds = %25, %18
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %4, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i32 @buf_discard(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %3, align 8
  br label %22

32:                                               ; preds = %22
  %33 = load %struct.link*, %struct.link** %2, align 8
  %34 = call i32 @tipc_link_reset_fragments(%struct.link* %33)
  %35 = load %struct.link*, %struct.link** %2, align 8
  %36 = getelementptr inbounds %struct.link, %struct.link* %35, i32 0, i32 0
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  %38 = call i32 @buf_discard(%struct.sk_buff* %37)
  %39 = load %struct.link*, %struct.link** %2, align 8
  %40 = getelementptr inbounds %struct.link, %struct.link* %39, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %40, align 8
  ret void
}

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i32 @tipc_link_reset_fragments(%struct.link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
