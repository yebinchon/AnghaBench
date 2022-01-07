; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_conn.c_llc_exec_conn_trans_actions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_conn.c_llc_exec_conn_trans_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.llc_conn_state_trans = type { i32 (%struct.sock*, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.llc_conn_state_trans*, %struct.sk_buff*)* @llc_exec_conn_trans_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_exec_conn_trans_actions(%struct.sock* %0, %struct.llc_conn_state_trans* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.llc_conn_state_trans*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.sock*, %struct.sk_buff*)**, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.llc_conn_state_trans* %1, %struct.llc_conn_state_trans** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.llc_conn_state_trans*, %struct.llc_conn_state_trans** %5, align 8
  %11 = getelementptr inbounds %struct.llc_conn_state_trans, %struct.llc_conn_state_trans* %10, i32 0, i32 0
  %12 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %11, align 8
  %13 = bitcast i32 (%struct.sock*, %struct.sk_buff*)* %12 to i32 (%struct.sock*, %struct.sk_buff*)**
  store i32 (%struct.sock*, %struct.sk_buff*)** %13, i32 (%struct.sock*, %struct.sk_buff*)*** %8, align 8
  br label %14

14:                                               ; preds = %39, %3
  %15 = load i32 (%struct.sock*, %struct.sk_buff*)**, i32 (%struct.sock*, %struct.sk_buff*)*** %8, align 8
  %16 = icmp ne i32 (%struct.sock*, %struct.sk_buff*)** %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32 (%struct.sock*, %struct.sk_buff*)**, i32 (%struct.sock*, %struct.sk_buff*)*** %8, align 8
  %19 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %18, align 8
  %20 = icmp ne i32 (%struct.sock*, %struct.sk_buff*)* %19, null
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %42

23:                                               ; preds = %21
  %24 = load i32 (%struct.sock*, %struct.sk_buff*)**, i32 (%struct.sock*, %struct.sk_buff*)*** %8, align 8
  %25 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %24, align 8
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 %25(%struct.sock* %26, %struct.sk_buff* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %7, align 4
  br label %42

33:                                               ; preds = %23
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %33
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38
  %40 = load i32 (%struct.sock*, %struct.sk_buff*)**, i32 (%struct.sock*, %struct.sk_buff*)*** %8, align 8
  %41 = getelementptr inbounds i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %40, i32 1
  store i32 (%struct.sock*, %struct.sk_buff*)** %41, i32 (%struct.sock*, %struct.sk_buff*)*** %8, align 8
  br label %14

42:                                               ; preds = %31, %21
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
