; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_insert_deferred_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_insert_deferred_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i64, %struct.sk_buff*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.link*, %struct.sk_buff*)* @link_insert_deferred_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @link_insert_deferred_queue(%struct.link* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.link*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  store %struct.link* %0, %struct.link** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.link*, %struct.link** %4, align 8
  %8 = getelementptr inbounds %struct.link, %struct.link* %7, i32 0, i32 1
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %10 = icmp eq %struct.sk_buff* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %3, align 8
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.link*, %struct.link** %4, align 8
  %15 = getelementptr inbounds %struct.link, %struct.link* %14, i32 0, i32 1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %17 = call i32 @buf_msg(%struct.sk_buff* %16)
  %18 = call i64 @msg_seqno(i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.link*, %struct.link** %4, align 8
  %21 = getelementptr inbounds %struct.link, %struct.link* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @mod(i32 %22)
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %13
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load %struct.link*, %struct.link** %4, align 8
  %28 = getelementptr inbounds %struct.link, %struct.link* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.sk_buff* %26, %struct.sk_buff** %30, align 8
  %31 = load %struct.link*, %struct.link** %4, align 8
  %32 = getelementptr inbounds %struct.link, %struct.link* %31, i32 0, i32 1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  store %struct.sk_buff* %33, %struct.sk_buff** %5, align 8
  %34 = load %struct.link*, %struct.link** %4, align 8
  %35 = getelementptr inbounds %struct.link, %struct.link* %34, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %35, align 8
  %36 = load %struct.link*, %struct.link** %4, align 8
  %37 = getelementptr inbounds %struct.link, %struct.link* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %25, %13
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %3, align 8
  br label %40

40:                                               ; preds = %38, %11
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %41
}

declare dso_local i64 @msg_seqno(i32) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @mod(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
