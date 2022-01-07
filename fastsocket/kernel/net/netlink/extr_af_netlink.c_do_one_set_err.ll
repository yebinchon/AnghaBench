; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_do_one_set_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_do_one_set_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.netlink_set_err_data = type { i64, i32, i32, %struct.sock* }
%struct.netlink_sock = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.netlink_set_err_data*)* @do_one_set_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_one_set_err(%struct.sock* %0, %struct.netlink_set_err_data* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.netlink_set_err_data*, align 8
  %5 = alloca %struct.netlink_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.netlink_set_err_data* %1, %struct.netlink_set_err_data** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %6)
  store %struct.netlink_sock* %7, %struct.netlink_sock** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = load %struct.netlink_set_err_data*, %struct.netlink_set_err_data** %4, align 8
  %10 = getelementptr inbounds %struct.netlink_set_err_data, %struct.netlink_set_err_data* %9, i32 0, i32 3
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  %12 = icmp eq %struct.sock* %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %62

14:                                               ; preds = %2
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call i64 @sock_net(%struct.sock* %15)
  %17 = load %struct.netlink_set_err_data*, %struct.netlink_set_err_data** %4, align 8
  %18 = getelementptr inbounds %struct.netlink_set_err_data, %struct.netlink_set_err_data* %17, i32 0, i32 3
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  %20 = call i64 @sock_net(%struct.sock* %19)
  %21 = icmp ne i64 %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %62

23:                                               ; preds = %14
  %24 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %25 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.netlink_set_err_data*, %struct.netlink_set_err_data** %4, align 8
  %28 = getelementptr inbounds %struct.netlink_set_err_data, %struct.netlink_set_err_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %50, label %31

31:                                               ; preds = %23
  %32 = load %struct.netlink_set_err_data*, %struct.netlink_set_err_data** %4, align 8
  %33 = getelementptr inbounds %struct.netlink_set_err_data, %struct.netlink_set_err_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %37 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %31
  %41 = load %struct.netlink_set_err_data*, %struct.netlink_set_err_data** %4, align 8
  %42 = getelementptr inbounds %struct.netlink_set_err_data, %struct.netlink_set_err_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %46 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @test_bit(i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %40, %31, %23
  br label %62

51:                                               ; preds = %40
  %52 = load %struct.netlink_set_err_data*, %struct.netlink_set_err_data** %4, align 8
  %53 = getelementptr inbounds %struct.netlink_set_err_data, %struct.netlink_set_err_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sock*, %struct.sock** %3, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 0
  %59 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %58, align 8
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = call i32 %59(%struct.sock* %60)
  br label %62

62:                                               ; preds = %51, %50, %22, %13
  ret i32 0
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i64 @sock_net(%struct.sock*) #1

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
