; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_TPROXY.c_tproxy_sk_is_transparent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_TPROXY.c_tproxy_sk_is_transparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tproxy_sk_is_transparent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tproxy_sk_is_transparent(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %4 = load %struct.sock*, %struct.sock** %3, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TCP_TIME_WAIT, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.TYPE_5__* @inet_sk(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %31

16:                                               ; preds = %9
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call i32 @sock_put(%struct.sock* %17)
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call %struct.TYPE_4__* @inet_twsk(%struct.sock* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %31

26:                                               ; preds = %19
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call %struct.TYPE_4__* @inet_twsk(%struct.sock* %27)
  %29 = call i32 @inet_twsk_put(%struct.TYPE_4__* %28)
  br label %30

30:                                               ; preds = %26, %16
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %25, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.TYPE_5__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet_twsk(%struct.sock*) #1

declare dso_local i32 @inet_twsk_put(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
