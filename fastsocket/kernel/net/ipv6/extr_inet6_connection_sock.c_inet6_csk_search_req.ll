; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_search_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_search_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32*, %struct.TYPE_5__*, %struct.request_sock* }
%struct.TYPE_5__ = type { i64 }
%struct.sock = type { i32 }
%struct.in6_addr = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.listen_sock* }
%struct.listen_sock = type { i32, i32, %struct.request_sock** }
%struct.inet6_request_sock = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request_sock* @inet6_csk_search_req(%struct.sock* %0, %struct.request_sock*** %1, i64 %2, %struct.in6_addr* %3, %struct.in6_addr* %4, i32 %5) #0 {
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.request_sock***, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inet_connection_sock*, align 8
  %15 = alloca %struct.listen_sock*, align 8
  %16 = alloca %struct.request_sock*, align 8
  %17 = alloca %struct.request_sock**, align 8
  %18 = alloca %struct.inet6_request_sock*, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.request_sock*** %1, %struct.request_sock**** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %11, align 8
  store %struct.in6_addr* %4, %struct.in6_addr** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %19)
  store %struct.inet_connection_sock* %20, %struct.inet_connection_sock** %14, align 8
  %21 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %14, align 8
  %22 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.listen_sock*, %struct.listen_sock** %23, align 8
  store %struct.listen_sock* %24, %struct.listen_sock** %15, align 8
  %25 = load %struct.listen_sock*, %struct.listen_sock** %15, align 8
  %26 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %25, i32 0, i32 2
  %27 = load %struct.request_sock**, %struct.request_sock*** %26, align 8
  %28 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.listen_sock*, %struct.listen_sock** %15, align 8
  %31 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.listen_sock*, %struct.listen_sock** %15, align 8
  %34 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @inet6_synq_hash(%struct.in6_addr* %28, i64 %29, i32 %32, i32 %35)
  %37 = getelementptr inbounds %struct.request_sock*, %struct.request_sock** %27, i64 %36
  store %struct.request_sock** %37, %struct.request_sock*** %17, align 8
  br label %38

38:                                               ; preds = %93, %6
  %39 = load %struct.request_sock**, %struct.request_sock*** %17, align 8
  %40 = load %struct.request_sock*, %struct.request_sock** %39, align 8
  store %struct.request_sock* %40, %struct.request_sock** %16, align 8
  %41 = icmp ne %struct.request_sock* %40, null
  br i1 %41, label %42, label %96

42:                                               ; preds = %38
  %43 = load %struct.request_sock*, %struct.request_sock** %16, align 8
  %44 = call %struct.inet6_request_sock* @inet6_rsk(%struct.request_sock* %43)
  store %struct.inet6_request_sock* %44, %struct.inet6_request_sock** %18, align 8
  %45 = load %struct.request_sock*, %struct.request_sock** %16, align 8
  %46 = call %struct.TYPE_6__* @inet_rsk(%struct.request_sock* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %42
  %52 = load %struct.request_sock*, %struct.request_sock** %16, align 8
  %53 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AF_INET6, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %51
  %60 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %18, align 8
  %61 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %60, i32 0, i32 2
  %62 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %63 = call i64 @ipv6_addr_equal(i32* %61, %struct.in6_addr* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %59
  %66 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %18, align 8
  %67 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %66, i32 0, i32 1
  %68 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %69 = call i64 @ipv6_addr_equal(i32* %67, %struct.in6_addr* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %65
  %72 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %18, align 8
  %73 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %18, align 8
  %78 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76, %71
  %83 = load %struct.request_sock*, %struct.request_sock** %16, align 8
  %84 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 @WARN_ON(i32 %87)
  %89 = load %struct.request_sock**, %struct.request_sock*** %17, align 8
  %90 = load %struct.request_sock***, %struct.request_sock**** %9, align 8
  store %struct.request_sock** %89, %struct.request_sock*** %90, align 8
  %91 = load %struct.request_sock*, %struct.request_sock** %16, align 8
  store %struct.request_sock* %91, %struct.request_sock** %7, align 8
  br label %97

92:                                               ; preds = %76, %65, %59, %51, %42
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.request_sock*, %struct.request_sock** %16, align 8
  %95 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %94, i32 0, i32 2
  store %struct.request_sock** %95, %struct.request_sock*** %17, align 8
  br label %38

96:                                               ; preds = %38
  store %struct.request_sock* null, %struct.request_sock** %7, align 8
  br label %97

97:                                               ; preds = %96, %82
  %98 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  ret %struct.request_sock* %98
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i64 @inet6_synq_hash(%struct.in6_addr*, i64, i32, i32) #1

declare dso_local %struct.inet6_request_sock* @inet6_rsk(%struct.request_sock*) #1

declare dso_local %struct.TYPE_6__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
