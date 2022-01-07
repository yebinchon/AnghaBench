; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_distr.c_named_prepare_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_distr.c_named_prepare_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@LONG_H_SIZE = common dso_local global i64 0, align 8
@NAME_DISTRIBUTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i64, i64, i64)* @named_prepare_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @named_prepare_buf(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @LONG_H_SIZE, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %9, %10
  %12 = call %struct.sk_buff* @buf_acquire(i64 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %16)
  store %struct.tipc_msg* %17, %struct.tipc_msg** %8, align 8
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %19 = load i32, i32* @NAME_DISTRIBUTOR, align 4
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @LONG_H_SIZE, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @msg_init(%struct.tipc_msg* %18, i32 %19, i64 %20, i64 %21, i64 %22)
  %24 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %25 = load i64, i64* @LONG_H_SIZE, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @msg_set_size(%struct.tipc_msg* %24, i64 %27)
  br label %29

29:                                               ; preds = %15, %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %30
}

declare dso_local %struct.sk_buff* @buf_acquire(i64) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_init(%struct.tipc_msg*, i32, i64, i64, i64) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
