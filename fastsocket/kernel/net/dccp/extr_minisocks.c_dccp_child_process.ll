; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_minisocks.c_dccp_child_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_minisocks.c_dccp_child_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*, i32)* }
%struct.sk_buff = type { i32 }

@DCCP_RESPOND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_child_process(%struct.sock* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call i32 @sock_owned_by_user(%struct.sock* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %3
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @dccp_hdr(%struct.sk_buff* %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dccp_rcv_state_process(%struct.sock* %16, %struct.sk_buff* %17, i32 %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @DCCP_RESPOND, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %15
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 1
  %36 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %35, align 8
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = call i32 %36(%struct.sock* %37, i32 0)
  br label %39

39:                                               ; preds = %33, %27, %15
  br label %44

40:                                               ; preds = %3
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call i32 @__sk_add_backlog(%struct.sock* %41, %struct.sk_buff* %42)
  br label %44

44:                                               ; preds = %40, %39
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = call i32 @bh_unlock_sock(%struct.sock* %45)
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = call i32 @sock_put(%struct.sock* %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @dccp_rcv_state_process(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__sk_add_backlog(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
