; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c_ipv6_rcv_saddr_equal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c_ipv6_rcv_saddr_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_4__ = type { %struct.in6_addr }
%struct.TYPE_3__ = type { i64 }

@IPV6_ADDR_MAPPED = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_rcv_saddr_equal(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.TYPE_4__* @inet6_sk(%struct.sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.in6_addr* %16, %struct.in6_addr** %6, align 8
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call %struct.in6_addr* @inet6_rcv_saddr(%struct.sock* %17)
  store %struct.in6_addr* %18, %struct.in6_addr** %7, align 8
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = call i64 @inet_rcv_saddr(%struct.sock* %23)
  store i64 %24, i64* %9, align 8
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @ipv6_only_sock(%struct.sock* %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = call i32 @inet_v6_ipv6only(%struct.sock* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %30 = call i32 @ipv6_addr_type(%struct.in6_addr* %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %32 = icmp ne %struct.in6_addr* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %35 = call i32 @ipv6_addr_type(%struct.in6_addr* %34)
  br label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %35, %33 ], [ %37, %36 ]
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %38
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp eq i64 %57, %58
  br label %60

60:                                               ; preds = %56, %53, %50
  %61 = phi i1 [ true, %53 ], [ true, %50 ], [ %59, %56 ]
  br label %62

62:                                               ; preds = %60, %47
  %63 = phi i1 [ false, %47 ], [ %61, %60 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %99

65:                                               ; preds = %43, %38
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %77, label %76

76:                                               ; preds = %72, %69
  store i32 1, i32* %3, align 4
  br label %99

77:                                               ; preds = %72, %65
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %89, label %88

88:                                               ; preds = %84, %81
  store i32 1, i32* %3, align 4
  br label %99

89:                                               ; preds = %84, %77
  %90 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %91 = icmp ne %struct.in6_addr* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %94 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %95 = call i64 @ipv6_addr_equal(%struct.in6_addr* %93, %struct.in6_addr* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* %3, align 4
  br label %99

98:                                               ; preds = %92, %89
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %97, %88, %76, %62
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_4__* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.in6_addr* @inet6_rcv_saddr(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @inet_sk(%struct.sock*) #1

declare dso_local i64 @inet_rcv_saddr(%struct.sock*) #1

declare dso_local i32 @ipv6_only_sock(%struct.sock*) #1

declare dso_local i32 @inet_v6_ipv6only(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
