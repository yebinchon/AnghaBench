; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_out.c_nr_send_iframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_out.c_nr_send_iframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32* }
%struct.nr_sock = type { i32, i32, i32 }

@NR_COND_OWN_RX_BUSY = common dso_local global i32 0, align 4
@NR_CHOKE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @nr_send_iframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nr_send_iframe(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nr_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.nr_sock* @nr_sk(%struct.sock* %6)
  store %struct.nr_sock* %7, %struct.nr_sock** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = icmp eq %struct.sk_buff* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %46

11:                                               ; preds = %2
  %12 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %13 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 %14, i32* %18, align 4
  %19 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %20 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 %21, i32* %25, align 4
  %26 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %27 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NR_COND_OWN_RX_BUSY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %11
  %33 = load i32, i32* @NR_CHOKE_FLAG, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %33
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %32, %11
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = call i32 @nr_start_idletimer(%struct.sock* %41)
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @nr_transmit_buffer(%struct.sock* %43, %struct.sk_buff* %44)
  br label %46

46:                                               ; preds = %40, %10
  ret void
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @nr_start_idletimer(%struct.sock*) #1

declare dso_local i32 @nr_transmit_buffer(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
