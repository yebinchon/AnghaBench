; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_sock_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_sock_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.netlbl_lsm_secattr = type { i32 }
%struct.ip_options = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@ENOMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipso_v4_sock_getattr(%struct.sock* %0, %struct.netlbl_lsm_secattr* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.netlbl_lsm_secattr*, align 8
  %5 = alloca %struct.ip_options*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.netlbl_lsm_secattr* %1, %struct.netlbl_lsm_secattr** %4, align 8
  %7 = load i32, i32* @ENOMSG, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ip_options* @rcu_dereference(i32 %13)
  store %struct.ip_options* %14, %struct.ip_options** %5, align 8
  %15 = load %struct.ip_options*, %struct.ip_options** %5, align 8
  %16 = icmp ne %struct.ip_options* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.ip_options*, %struct.ip_options** %5, align 8
  %19 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.ip_options*, %struct.ip_options** %5, align 8
  %24 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ip_options*, %struct.ip_options** %5, align 8
  %27 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = sub i64 %29, 4
  %31 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %32 = call i32 @cipso_v4_getattr(i64 %30, %struct.netlbl_lsm_secattr* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %22, %17, %2
  %34 = call i32 (...) @rcu_read_unlock()
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip_options* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @cipso_v4_getattr(i64, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
