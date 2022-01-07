; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_net.c_tipc_net_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_net.c_tipc_net_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tipc_mode = common dso_local global i64 0, align 8
@TIPC_NET_MODE = common dso_local global i64 0, align 8
@tipc_net_lock = common dso_local global i32 0, align 4
@TIPC_NODE_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Left network mode \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_net_stop() #0 {
  %1 = load i64, i64* @tipc_mode, align 8
  %2 = load i64, i64* @TIPC_NET_MODE, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %13

5:                                                ; preds = %0
  %6 = call i32 @write_lock_bh(i32* @tipc_net_lock)
  %7 = call i32 (...) @tipc_bearer_stop()
  %8 = load i64, i64* @TIPC_NODE_MODE, align 8
  store i64 %8, i64* @tipc_mode, align 8
  %9 = call i32 (...) @tipc_bclink_stop()
  %10 = call i32 (...) @net_stop()
  %11 = call i32 @write_unlock_bh(i32* @tipc_net_lock)
  %12 = call i32 @info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %5, %4
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @tipc_bearer_stop(...) #1

declare dso_local i32 @tipc_bclink_stop(...) #1

declare dso_local i32 @net_stop(...) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
