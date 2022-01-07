; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_timer.c_dccp_write_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_timer.c_dccp_write_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.inet_connection_sock = type { i32, i64 }

@DCCP_REQUESTING = common dso_local global i64 0, align 8
@DCCP_PARTOPEN = common dso_local global i64 0, align 8
@sysctl_dccp_request_retries = common dso_local global i32 0, align 4
@sysctl_dccp_retries1 = common dso_local global i32 0, align 4
@sysctl_dccp_retries2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @dccp_write_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_write_timeout(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.inet_connection_sock*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %6)
  store %struct.inet_connection_sock* %7, %struct.inet_connection_sock** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DCCP_REQUESTING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DCCP_PARTOPEN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13, %1
  %20 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %21 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 1
  %27 = call i32 @dst_negative_advice(i32* %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %30 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @sysctl_dccp_request_retries, align 4
  %36 = sext i32 %35 to i64
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i64 [ %31, %33 ], [ %36, %34 ]
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %52

40:                                               ; preds = %13
  %41 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %42 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @sysctl_dccp_retries1, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 1
  %49 = call i32 @dst_negative_advice(i32* %48)
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i32, i32* @sysctl_dccp_retries2, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %37
  %53 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %54 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = call i32 @dccp_write_err(%struct.sock* %59)
  store i32 1, i32* %2, align 4
  br label %62

61:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @dst_negative_advice(i32*) #1

declare dso_local i32 @dccp_write_err(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
