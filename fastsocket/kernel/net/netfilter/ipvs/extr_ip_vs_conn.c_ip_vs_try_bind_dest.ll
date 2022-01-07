; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_try_bind_dest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_try_bind_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { i32 }
%struct.ip_vs_conn = type { i64, i32, i32*, i64, i32, i32, i32, i32, i32, i32 }
%struct.ip_vs_protocol = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip_vs_dest* @ip_vs_try_bind_dest(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca %struct.ip_vs_conn*, align 8
  %3 = alloca %struct.ip_vs_dest*, align 8
  %4 = alloca %struct.ip_vs_protocol*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %2, align 8
  %5 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %6 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %9 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %8, i32 0, i32 9
  %10 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %11 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %14 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %13, i32 0, i32 7
  %15 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %16 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %19 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %22 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %25 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.ip_vs_dest* @ip_vs_find_dest(i64 %7, i32* %9, i32 %12, i32* %14, i32 %17, i32 %20, i32 %23, i32 %26)
  store %struct.ip_vs_dest* %27, %struct.ip_vs_dest** %3, align 8
  %28 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %29 = icmp ne %struct.ip_vs_dest* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %1
  %31 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %32 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %37 = call i32 @ip_vs_unbind_app(%struct.ip_vs_conn* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %40 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %41 = call i32 @ip_vs_bind_dest(%struct.ip_vs_conn* %39, %struct.ip_vs_dest* %40)
  %42 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %43 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %45 = call i32 @ip_vs_bind_xmit(%struct.ip_vs_conn* %44)
  %46 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %47 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.ip_vs_protocol* @ip_vs_proto_get(i32 %48)
  store %struct.ip_vs_protocol* %49, %struct.ip_vs_protocol** %4, align 8
  %50 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %4, align 8
  %51 = icmp ne %struct.ip_vs_protocol* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %38
  %53 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %4, align 8
  %54 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %53, i32 0, i32 0
  %55 = call i64 @atomic_read(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %59 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %4, align 8
  %60 = call i32 @ip_vs_bind_app(%struct.ip_vs_conn* %58, %struct.ip_vs_protocol* %59)
  br label %61

61:                                               ; preds = %57, %52, %38
  br label %62

62:                                               ; preds = %61, %1
  %63 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  ret %struct.ip_vs_dest* %63
}

declare dso_local %struct.ip_vs_dest* @ip_vs_find_dest(i64, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ip_vs_unbind_app(%struct.ip_vs_conn*) #1

declare dso_local i32 @ip_vs_bind_dest(%struct.ip_vs_conn*, %struct.ip_vs_dest*) #1

declare dso_local i32 @ip_vs_bind_xmit(%struct.ip_vs_conn*) #1

declare dso_local %struct.ip_vs_protocol* @ip_vs_proto_get(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ip_vs_bind_app(%struct.ip_vs_conn*, %struct.ip_vs_protocol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
