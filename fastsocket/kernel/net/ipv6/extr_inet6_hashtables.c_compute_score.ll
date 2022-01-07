; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_inet6_hashtables.c_compute_score.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_inet6_hashtables.c_compute_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.TYPE_2__ = type { i16 }

@PF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.net*, i16, %struct.in6_addr*, i32)* @compute_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_score(%struct.sock* %0, %struct.net* %1, i16 zeroext %2, %struct.in6_addr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipv6_pinfo*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.net* %1, %struct.net** %8, align 8
  store i16 %2, i16* %9, align 2
  store %struct.in6_addr* %3, %struct.in6_addr** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %14 = load %struct.sock*, %struct.sock** %7, align 8
  %15 = call i32 @sock_net(%struct.sock* %14)
  %16 = load %struct.net*, %struct.net** %8, align 8
  %17 = call i64 @net_eq(i32 %15, %struct.net* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %5
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* %9, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %19
  %29 = load %struct.sock*, %struct.sock** %7, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PF_INET6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %28
  %35 = load %struct.sock*, %struct.sock** %7, align 8
  %36 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %35)
  store %struct.ipv6_pinfo* %36, %struct.ipv6_pinfo** %13, align 8
  store i32 1, i32* %12, align 4
  %37 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %13, align 8
  %38 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %37, i32 0, i32 0
  %39 = call i32 @ipv6_addr_any(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %34
  %42 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %13, align 8
  %43 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %42, i32 0, i32 0
  %44 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %45 = call i32 @ipv6_addr_equal(i32* %43, %struct.in6_addr* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  store i32 -1, i32* %6, align 4
  br label %69

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %48, %34
  %52 = load %struct.sock*, %struct.sock** %7, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.sock*, %struct.sock** %7, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 -1, i32* %6, align 4
  br label %69

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %63, %51
  br label %67

67:                                               ; preds = %66, %28, %19, %5
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %67, %62, %47
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local i32 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
