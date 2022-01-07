; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cubic.c_bictcp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cubic.c_bictcp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.bictcp = type { i64 }
%struct.TYPE_2__ = type { i64 }

@hystart = common dso_local global i64 0, align 8
@initial_ssthresh = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @bictcp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bictcp_init(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.bictcp*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.bictcp* @inet_csk_ca(%struct.sock* %4)
  store %struct.bictcp* %5, %struct.bictcp** %3, align 8
  %6 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %7 = call i32 @bictcp_reset(%struct.bictcp* %6)
  %8 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %9 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load i64, i64* @hystart, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call i32 @bictcp_hystart_reset(%struct.sock* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i64, i64* @hystart, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* @initial_ssthresh, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i64, i64* @initial_ssthresh, align 8
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = call %struct.TYPE_2__* @tcp_sk(%struct.sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  br label %26

26:                                               ; preds = %21, %18, %15
  ret void
}

declare dso_local %struct.bictcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @bictcp_reset(%struct.bictcp*) #1

declare dso_local i32 @bictcp_hystart_reset(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @tcp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
