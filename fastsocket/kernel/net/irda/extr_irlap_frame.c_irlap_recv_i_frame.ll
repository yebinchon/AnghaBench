; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap_frame.c_irlap_recv_i_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap_frame.c_irlap_recv_i_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irlap_cb = type { i32 }
%struct.sk_buff = type { i32* }
%struct.irlap_info = type { i32, i32, i32 }

@PF_BIT = common dso_local global i32 0, align 4
@RECV_I_CMD = common dso_local global i32 0, align 4
@RECV_I_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irlap_cb*, %struct.sk_buff*, %struct.irlap_info*, i32)* @irlap_recv_i_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irlap_recv_i_frame(%struct.irlap_cb* %0, %struct.sk_buff* %1, %struct.irlap_info* %2, i32 %3) #0 {
  %5 = alloca %struct.irlap_cb*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.irlap_info*, align 8
  %8 = alloca i32, align 4
  store %struct.irlap_cb* %0, %struct.irlap_cb** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.irlap_info* %2, %struct.irlap_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 5
  %15 = load %struct.irlap_info*, %struct.irlap_info** %7, align 8
  %16 = getelementptr inbounds %struct.irlap_info, %struct.irlap_info* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PF_BIT, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.irlap_info*, %struct.irlap_info** %7, align 8
  %25 = getelementptr inbounds %struct.irlap_info, %struct.irlap_info* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 1
  %32 = and i32 %31, 7
  %33 = load %struct.irlap_info*, %struct.irlap_info** %7, align 8
  %34 = getelementptr inbounds %struct.irlap_info, %struct.irlap_info* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %4
  %38 = load %struct.irlap_cb*, %struct.irlap_cb** %5, align 8
  %39 = load i32, i32* @RECV_I_CMD, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load %struct.irlap_info*, %struct.irlap_info** %7, align 8
  %42 = call i32 @irlap_do_event(%struct.irlap_cb* %38, i32 %39, %struct.sk_buff* %40, %struct.irlap_info* %41)
  br label %49

43:                                               ; preds = %4
  %44 = load %struct.irlap_cb*, %struct.irlap_cb** %5, align 8
  %45 = load i32, i32* @RECV_I_RSP, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load %struct.irlap_info*, %struct.irlap_info** %7, align 8
  %48 = call i32 @irlap_do_event(%struct.irlap_cb* %44, i32 %45, %struct.sk_buff* %46, %struct.irlap_info* %47)
  br label %49

49:                                               ; preds = %43, %37
  ret void
}

declare dso_local i32 @irlap_do_event(%struct.irlap_cb*, i32, %struct.sk_buff*, %struct.irlap_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
