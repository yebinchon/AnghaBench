; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_timer.c_dccp_write_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_timer.c_dccp_write_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.inet_connection_sock = type { i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dccp_write_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_write_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.inet_connection_sock*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.sock*
  store %struct.sock* %7, %struct.sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %8)
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call i32 @bh_lock_sock(%struct.sock* %10)
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i64 @sock_owned_by_user(%struct.sock* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %18 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %17, i32 0, i32 2
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i32, i32* @HZ, align 4
  %21 = sdiv i32 %20, 20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i32 @sk_reset_timer(%struct.sock* %16, i32* %18, i64 %23)
  br label %63

25:                                               ; preds = %1
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DCCP_CLOSED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %33 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %25
  br label %63

37:                                               ; preds = %31
  %38 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %39 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @jiffies, align 8
  %42 = call i64 @time_after(i64 %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %47 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %46, i32 0, i32 2
  %48 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %49 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @sk_reset_timer(%struct.sock* %45, i32* %47, i64 %50)
  br label %63

52:                                               ; preds = %37
  %53 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %54 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %5, align 4
  %56 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %57 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  switch i32 %58, label %62 [
    i32 128, label %59
  ]

59:                                               ; preds = %52
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = call i32 @dccp_retransmit_timer(%struct.sock* %60)
  br label %62

62:                                               ; preds = %52, %59
  br label %63

63:                                               ; preds = %62, %44, %36, %15
  %64 = load %struct.sock*, %struct.sock** %3, align 8
  %65 = call i32 @bh_unlock_sock(%struct.sock* %64)
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = call i32 @sock_put(%struct.sock* %66)
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dccp_retransmit_timer(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
