; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_connection_sock.c_inet_csk_search_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_connection_sock.c_inet_csk_search_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32, %struct.TYPE_4__*, %struct.request_sock* }
%struct.TYPE_4__ = type { i32 }
%struct.sock = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.listen_sock* }
%struct.listen_sock = type { i32, i32, %struct.request_sock** }
%struct.inet_request_sock = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request_sock* @inet_csk_search_req(%struct.sock* %0, %struct.request_sock*** %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.request_sock***, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.inet_connection_sock*, align 8
  %12 = alloca %struct.listen_sock*, align 8
  %13 = alloca %struct.request_sock*, align 8
  %14 = alloca %struct.request_sock**, align 8
  %15 = alloca %struct.inet_request_sock*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.request_sock*** %1, %struct.request_sock**** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %16)
  store %struct.inet_connection_sock* %17, %struct.inet_connection_sock** %11, align 8
  %18 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %19 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.listen_sock*, %struct.listen_sock** %20, align 8
  store %struct.listen_sock* %21, %struct.listen_sock** %12, align 8
  %22 = load %struct.listen_sock*, %struct.listen_sock** %12, align 8
  %23 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %22, i32 0, i32 2
  %24 = load %struct.request_sock**, %struct.request_sock*** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.listen_sock*, %struct.listen_sock** %12, align 8
  %28 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.listen_sock*, %struct.listen_sock** %12, align 8
  %31 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @inet_synq_hash(i64 %25, i64 %26, i32 %29, i32 %32)
  %34 = getelementptr inbounds %struct.request_sock*, %struct.request_sock** %24, i64 %33
  store %struct.request_sock** %34, %struct.request_sock*** %14, align 8
  br label %35

35:                                               ; preds = %75, %5
  %36 = load %struct.request_sock**, %struct.request_sock*** %14, align 8
  %37 = load %struct.request_sock*, %struct.request_sock** %36, align 8
  store %struct.request_sock* %37, %struct.request_sock** %13, align 8
  %38 = icmp ne %struct.request_sock* %37, null
  br i1 %38, label %39, label %78

39:                                               ; preds = %35
  %40 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %41 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %40)
  store %struct.inet_request_sock* %41, %struct.inet_request_sock** %15, align 8
  %42 = load %struct.inet_request_sock*, %struct.inet_request_sock** %15, align 8
  %43 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %39
  %48 = load %struct.inet_request_sock*, %struct.inet_request_sock** %15, align 8
  %49 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %47
  %54 = load %struct.inet_request_sock*, %struct.inet_request_sock** %15, align 8
  %55 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %61 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @AF_INET_FAMILY(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %69 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @WARN_ON(i32 %70)
  %72 = load %struct.request_sock**, %struct.request_sock*** %14, align 8
  %73 = load %struct.request_sock***, %struct.request_sock**** %7, align 8
  store %struct.request_sock** %72, %struct.request_sock*** %73, align 8
  br label %78

74:                                               ; preds = %59, %53, %47, %39
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  %77 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %76, i32 0, i32 2
  store %struct.request_sock** %77, %struct.request_sock*** %14, align 8
  br label %35

78:                                               ; preds = %67, %35
  %79 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  ret %struct.request_sock* %79
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i64 @inet_synq_hash(i64, i64, i32, i32) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local i64 @AF_INET_FAMILY(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
