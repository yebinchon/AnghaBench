; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_net.c_net_route_named_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_net.c_net_route_named_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"tipc_net->drop_nam:\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"tipc_net->lookup<%u,%u>-><%u,%x>\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"tipc_net->rej:NO NAME: \00", align 1
@TIPC_ERR_NO_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @net_route_named_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_route_named_msg(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.tipc_msg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %6)
  store %struct.tipc_msg* %7, %struct.tipc_msg** %3, align 8
  %8 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %9 = call i32 @msg_named(%struct.tipc_msg* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %13 = call i32 @msg_dbg(%struct.tipc_msg* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = call i32 @buf_discard(%struct.sk_buff* %14)
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %18 = call i32 @msg_lookup_scope(%struct.tipc_msg* %17)
  %19 = call i64 @addr_domain(i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %21 = call i32 @msg_nametype(%struct.tipc_msg* %20)
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %23 = call i32 @msg_nameinst(%struct.tipc_msg* %22)
  %24 = call i64 @tipc_nametbl_translate(i32 %21, i32 %23, i64* %4)
  store i64 %24, i64* %5, align 8
  %25 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %26 = call i32 @msg_nametype(%struct.tipc_msg* %25)
  %27 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %28 = call i32 @msg_nameinst(%struct.tipc_msg* %27)
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28, i64 %29, i64 %30)
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %16
  %35 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @msg_set_destnode(%struct.tipc_msg* %35, i64 %36)
  %38 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @msg_set_destport(%struct.tipc_msg* %38, i64 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %42 = call i32 @tipc_net_route_msg(%struct.sk_buff* %41)
  br label %49

43:                                               ; preds = %16
  %44 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %45 = call i32 @msg_dbg(%struct.tipc_msg* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %47 = load i32, i32* @TIPC_ERR_NO_NAME, align 4
  %48 = call i32 @tipc_reject_msg(%struct.sk_buff* %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %34, %11
  ret void
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_named(%struct.tipc_msg*) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i64 @addr_domain(i32) #1

declare dso_local i32 @msg_lookup_scope(%struct.tipc_msg*) #1

declare dso_local i64 @tipc_nametbl_translate(i32, i32, i64*) #1

declare dso_local i32 @msg_nametype(%struct.tipc_msg*) #1

declare dso_local i32 @msg_nameinst(%struct.tipc_msg*) #1

declare dso_local i32 @dbg(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @msg_set_destnode(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i64) #1

declare dso_local i32 @tipc_net_route_msg(%struct.sk_buff*) #1

declare dso_local i32 @tipc_reject_msg(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
