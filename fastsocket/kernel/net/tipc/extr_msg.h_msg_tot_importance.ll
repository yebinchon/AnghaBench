; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_msg.h_msg_tot_importance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_msg.h_msg_tot_importance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_msg = type { i32 }

@tipc_own_addr = common dso_local global i64 0, align 8
@MSG_FRAGMENTER = common dso_local global i64 0, align 8
@FIRST_FRAGMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tipc_msg*)* @msg_tot_importance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msg_tot_importance(%struct.tipc_msg* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tipc_msg*, align 8
  store %struct.tipc_msg* %0, %struct.tipc_msg** %3, align 8
  %4 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %5 = call i32 @msg_isdata(%struct.tipc_msg* %4)
  %6 = call i64 @likely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %10 = call i64 @msg_orignode(%struct.tipc_msg* %9)
  %11 = load i64, i64* @tipc_own_addr, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %18 = call i64 @msg_importance(%struct.tipc_msg* %17)
  store i64 %18, i64* %2, align 8
  br label %40

19:                                               ; preds = %8
  %20 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %21 = call i64 @msg_importance(%struct.tipc_msg* %20)
  %22 = add nsw i64 %21, 4
  store i64 %22, i64* %2, align 8
  br label %40

23:                                               ; preds = %1
  %24 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %25 = call i64 @msg_user(%struct.tipc_msg* %24)
  %26 = load i64, i64* @MSG_FRAGMENTER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %30 = call i64 @msg_type(%struct.tipc_msg* %29)
  %31 = load i64, i64* @FIRST_FRAGMENT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %35 = call %struct.tipc_msg* @msg_get_wrapped(%struct.tipc_msg* %34)
  %36 = call i64 @msg_importance(%struct.tipc_msg* %35)
  store i64 %36, i64* %2, align 8
  br label %40

37:                                               ; preds = %28, %23
  %38 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %39 = call i64 @msg_importance(%struct.tipc_msg* %38)
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %37, %33, %19, %16
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @msg_isdata(%struct.tipc_msg*) #1

declare dso_local i64 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i64 @msg_importance(%struct.tipc_msg*) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local i64 @msg_type(%struct.tipc_msg*) #1

declare dso_local %struct.tipc_msg* @msg_get_wrapped(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
