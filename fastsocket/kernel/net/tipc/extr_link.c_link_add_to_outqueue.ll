; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_add_to_outqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_add_to_outqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32, %struct.sk_buff*, %struct.sk_buff*, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.tipc_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link*, %struct.sk_buff*, %struct.tipc_msg*)* @link_add_to_outqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_add_to_outqueue(%struct.link* %0, %struct.sk_buff* %1, %struct.tipc_msg* %2) #0 {
  %4 = alloca %struct.link*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.link* %0, %struct.link** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.tipc_msg* %2, %struct.tipc_msg** %6, align 8
  %9 = load %struct.link*, %struct.link** %4, align 8
  %10 = getelementptr inbounds %struct.link, %struct.link* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @mod(i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.link*, %struct.link** %4, align 8
  %15 = getelementptr inbounds %struct.link, %struct.link* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = sext i32 %16 to i64
  %19 = call i32 @mod(i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 16
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @msg_set_word(%struct.tipc_msg* %20, i32 2, i32 %24)
  %26 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %27 = load %struct.link*, %struct.link** %4, align 8
  %28 = getelementptr inbounds %struct.link, %struct.link* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @msg_set_bcast_ack(%struct.tipc_msg* %26, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %35, align 8
  %36 = load %struct.link*, %struct.link** %4, align 8
  %37 = getelementptr inbounds %struct.link, %struct.link* %36, i32 0, i32 2
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %3
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load %struct.link*, %struct.link** %4, align 8
  %43 = getelementptr inbounds %struct.link, %struct.link* %42, i32 0, i32 1
  %44 = load %struct.sk_buff*, %struct.sk_buff** %43, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  store %struct.sk_buff* %41, %struct.sk_buff** %45, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load %struct.link*, %struct.link** %4, align 8
  %48 = getelementptr inbounds %struct.link, %struct.link* %47, i32 0, i32 1
  store %struct.sk_buff* %46, %struct.sk_buff** %48, align 8
  br label %55

49:                                               ; preds = %3
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load %struct.link*, %struct.link** %4, align 8
  %52 = getelementptr inbounds %struct.link, %struct.link* %51, i32 0, i32 1
  store %struct.sk_buff* %50, %struct.sk_buff** %52, align 8
  %53 = load %struct.link*, %struct.link** %4, align 8
  %54 = getelementptr inbounds %struct.link, %struct.link* %53, i32 0, i32 2
  store %struct.sk_buff* %50, %struct.sk_buff** %54, align 8
  br label %55

55:                                               ; preds = %49, %40
  %56 = load %struct.link*, %struct.link** %4, align 8
  %57 = getelementptr inbounds %struct.link, %struct.link* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  ret void
}

declare dso_local i32 @mod(i64) #1

declare dso_local i32 @msg_set_word(%struct.tipc_msg*, i32, i32) #1

declare dso_local i32 @msg_set_bcast_ack(%struct.tipc_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
