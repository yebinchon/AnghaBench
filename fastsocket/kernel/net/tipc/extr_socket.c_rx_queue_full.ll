; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_rx_queue_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_rx_queue_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_msg = type { i32 }

@TIPC_LOW_IMPORTANCE = common dso_local global i64 0, align 8
@TIPC_MEDIUM_IMPORTANCE = common dso_local global i64 0, align 8
@TIPC_HIGH_IMPORTANCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_msg*, i64, i64)* @rx_queue_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_queue_full(%struct.tipc_msg* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.tipc_msg* %0, %struct.tipc_msg** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %11 = call i64 @msg_importance(%struct.tipc_msg* %10)
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @TIPC_LOW_IMPORTANCE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %8, align 8
  br label %34

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @TIPC_MEDIUM_IMPORTANCE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i64, i64* %7, align 8
  %23 = mul nsw i64 %22, 2
  store i64 %23, i64* %8, align 8
  br label %33

24:                                               ; preds = %17
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @TIPC_HIGH_IMPORTANCE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = mul nsw i64 %29, 100
  store i64 %30, i64* %8, align 8
  br label %32

31:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %46

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %21
  br label %34

34:                                               ; preds = %33, %15
  %35 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %36 = call i64 @msg_connected(%struct.tipc_msg* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  %40 = mul nsw i64 %39, 4
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp sge i64 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %31
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @msg_importance(%struct.tipc_msg*) #1

declare dso_local i64 @msg_connected(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
