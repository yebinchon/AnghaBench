; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c_compute_score.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c_compute_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i16, i64, i32 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6_pinfo = type { i32, i32 }
%struct.inet_sock = type { i64 }

@PF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.net*, i16, %struct.in6_addr*, i64, %struct.in6_addr*, i64, i32)* @compute_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_score(%struct.sock* %0, %struct.net* %1, i16 zeroext %2, %struct.in6_addr* %3, i64 %4, %struct.in6_addr* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i16, align 2
  %13 = alloca %struct.in6_addr*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.in6_addr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ipv6_pinfo*, align 8
  %20 = alloca %struct.inet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %10, align 8
  store %struct.net* %1, %struct.net** %11, align 8
  store i16 %2, i16* %12, align 2
  store %struct.in6_addr* %3, %struct.in6_addr** %13, align 8
  store i64 %4, i64* %14, align 8
  store %struct.in6_addr* %5, %struct.in6_addr** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = call i32 @sock_net(%struct.sock* %21)
  %23 = load %struct.net*, %struct.net** %11, align 8
  %24 = call i64 @net_eq(i32 %22, %struct.net* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %105

26:                                               ; preds = %8
  %27 = load %struct.sock*, %struct.sock** %10, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i16, i16* %28, align 8
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* %12, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %105

34:                                               ; preds = %26
  %35 = load %struct.sock*, %struct.sock** %10, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PF_INET6, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %105

40:                                               ; preds = %34
  %41 = load %struct.sock*, %struct.sock** %10, align 8
  %42 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %41)
  store %struct.ipv6_pinfo* %42, %struct.ipv6_pinfo** %19, align 8
  %43 = load %struct.sock*, %struct.sock** %10, align 8
  %44 = call %struct.inet_sock* @inet_sk(%struct.sock* %43)
  store %struct.inet_sock* %44, %struct.inet_sock** %20, align 8
  store i32 0, i32* %18, align 4
  %45 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %46 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %51 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 -1, i32* %9, align 4
  br label %107

56:                                               ; preds = %49
  %57 = load i32, i32* %18, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %18, align 4
  br label %59

59:                                               ; preds = %56, %40
  %60 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %19, align 8
  %61 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %60, i32 0, i32 1
  %62 = call i32 @ipv6_addr_any(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %19, align 8
  %66 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %65, i32 0, i32 1
  %67 = load %struct.in6_addr*, %struct.in6_addr** %15, align 8
  %68 = call i32 @ipv6_addr_equal(i32* %66, %struct.in6_addr* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store i32 -1, i32* %9, align 4
  br label %107

71:                                               ; preds = %64
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %18, align 4
  br label %74

74:                                               ; preds = %71, %59
  %75 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %19, align 8
  %76 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %75, i32 0, i32 0
  %77 = call i32 @ipv6_addr_any(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %19, align 8
  %81 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %80, i32 0, i32 0
  %82 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %83 = call i32 @ipv6_addr_equal(i32* %81, %struct.in6_addr* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  store i32 -1, i32* %9, align 4
  br label %107

86:                                               ; preds = %79
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %18, align 4
  br label %89

89:                                               ; preds = %86, %74
  %90 = load %struct.sock*, %struct.sock** %10, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load %struct.sock*, %struct.sock** %10, align 8
  %96 = getelementptr inbounds %struct.sock, %struct.sock* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 -1, i32* %9, align 4
  br label %107

101:                                              ; preds = %94
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %18, align 4
  br label %104

104:                                              ; preds = %101, %89
  br label %105

105:                                              ; preds = %104, %34, %26, %8
  %106 = load i32, i32* %18, align 4
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %105, %100, %85, %70, %55
  %108 = load i32, i32* %9, align 4
  ret i32 %108
}

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local i32 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
