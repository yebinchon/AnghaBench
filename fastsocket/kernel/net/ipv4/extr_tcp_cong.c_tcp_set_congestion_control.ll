; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cong.c_tcp_set_congestion_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cong.c_tcp_set_congestion_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.inet_connection_sock = type { %struct.tcp_congestion_ops* }
%struct.tcp_congestion_ops = type { i32, i32 (%struct.sock.0*)*, i32 }
%struct.sock.0 = type opaque

@ENOENT = common dso_local global i32 0, align 4
@TCP_CONG_NON_RESTRICTED = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_set_congestion_control(%struct.sock* %0, i8* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca %struct.tcp_congestion_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %8)
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.tcp_congestion_ops* @tcp_ca_find(i8* %11)
  store %struct.tcp_congestion_ops* %12, %struct.tcp_congestion_ops** %6, align 8
  %13 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %6, align 8
  %14 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %15 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %14, i32 0, i32 0
  %16 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %15, align 8
  %17 = icmp eq %struct.tcp_congestion_ops* %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %79

19:                                               ; preds = %2
  %20 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %6, align 8
  %21 = icmp ne %struct.tcp_congestion_ops* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %78

25:                                               ; preds = %19
  %26 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %6, align 8
  %27 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TCP_CONG_NON_RESTRICTED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @CAP_NET_ADMIN, align 4
  %34 = call i64 @capable(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %77

39:                                               ; preds = %32, %25
  %40 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %6, align 8
  %41 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @try_module_get(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %76

48:                                               ; preds = %39
  %49 = load %struct.sock*, %struct.sock** %3, align 8
  %50 = call i32 @tcp_cleanup_congestion_control(%struct.sock* %49)
  %51 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %6, align 8
  %52 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %53 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %52, i32 0, i32 0
  store %struct.tcp_congestion_ops* %51, %struct.tcp_congestion_ops** %53, align 8
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TCP_CLOSE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %48
  %60 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %61 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %60, i32 0, i32 0
  %62 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %61, align 8
  %63 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %62, i32 0, i32 1
  %64 = load i32 (%struct.sock.0*)*, i32 (%struct.sock.0*)** %63, align 8
  %65 = icmp ne i32 (%struct.sock.0*)* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %68 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %67, i32 0, i32 0
  %69 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %68, align 8
  %70 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %69, i32 0, i32 1
  %71 = load i32 (%struct.sock.0*)*, i32 (%struct.sock.0*)** %70, align 8
  %72 = load %struct.sock*, %struct.sock** %3, align 8
  %73 = bitcast %struct.sock* %72 to %struct.sock.0*
  %74 = call i32 %71(%struct.sock.0* %73)
  br label %75

75:                                               ; preds = %66, %59, %48
  br label %76

76:                                               ; preds = %75, %45
  br label %77

77:                                               ; preds = %76, %36
  br label %78

78:                                               ; preds = %77, %22
  br label %79

79:                                               ; preds = %78, %18
  %80 = call i32 (...) @rcu_read_unlock()
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_congestion_ops* @tcp_ca_find(i8*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @tcp_cleanup_congestion_control(%struct.sock*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
