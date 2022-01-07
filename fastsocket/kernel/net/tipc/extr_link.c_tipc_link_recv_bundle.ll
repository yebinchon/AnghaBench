; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_recv_bundle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_recv_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@INT_H_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"<BNDL<: \00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Link unable to unbundle message(s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"     /\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_recv_bundle(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call i32 @buf_msg(%struct.sk_buff* %6)
  %8 = call i32 @msg_msgcnt(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @INT_H_SIZE, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call i32 @buf_msg(%struct.sk_buff* %10)
  %12 = call i32 @msg_dbg(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %25, %1
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %3, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.sk_buff* @buf_extract(%struct.sk_buff* %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = icmp eq %struct.sk_buff* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %39

25:                                               ; preds = %17
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @buf_msg(%struct.sk_buff* %26)
  %28 = call i32 @msg_size(i32 %27)
  %29 = call i64 @align(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @buf_msg(%struct.sk_buff* %34)
  %36 = call i32 @msg_dbg(i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @tipc_net_route_msg(%struct.sk_buff* %37)
  br label %13

39:                                               ; preds = %23, %13
  %40 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %41 = call i32 @buf_discard(%struct.sk_buff* %40)
  ret void
}

declare dso_local i32 @msg_msgcnt(i32) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_dbg(i32, i8*) #1

declare dso_local %struct.sk_buff* @buf_extract(%struct.sk_buff*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @align(i32) #1

declare dso_local i32 @msg_size(i32) #1

declare dso_local i32 @tipc_net_route_msg(%struct.sk_buff*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
