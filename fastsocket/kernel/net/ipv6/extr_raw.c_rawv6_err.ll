; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_raw.c_rawv6_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_raw.c_rawv6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32 (%struct.sock*)* }
%struct.sk_buff = type { i64* }
%struct.inet6_skb_parm = type { i32 }
%struct.inet_sock = type { i32 }
%struct.ipv6_pinfo = type { i64, i64 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ICMPV6_PKT_TOOBIG = common dso_local global i64 0, align 8
@IPV6_PMTUDISC_DO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, %struct.inet6_skb_parm*, i64, i64, i32, i32)* @rawv6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rawv6_err(%struct.sock* %0, %struct.sk_buff* %1, %struct.inet6_skb_parm* %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.inet6_skb_parm*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.inet_sock*, align 8
  %16 = alloca %struct.ipv6_pinfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.inet6_skb_parm* %2, %struct.inet6_skb_parm** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = call %struct.inet_sock* @inet_sk(%struct.sock* %20)
  store %struct.inet_sock* %21, %struct.inet_sock** %15, align 8
  %22 = load %struct.sock*, %struct.sock** %8, align 8
  %23 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %22)
  store %struct.ipv6_pinfo* %23, %struct.ipv6_pinfo** %16, align 8
  %24 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %25 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %7
  %29 = load %struct.sock*, %struct.sock** %8, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TCP_ESTABLISHED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %92

35:                                               ; preds = %28, %7
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @icmpv6_err_convert(i64 %36, i64 %37, i32* %17)
  store i32 %38, i32* %18, align 4
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @ICMPV6_PKT_TOOBIG, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %44 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IPV6_PMTUDISC_DO, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %18, align 4
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %51 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %49
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  store i64* %57, i64** %19, align 8
  %58 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %59 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %13, align 4
  %64 = load i64*, i64** %19, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64* %66, i64** %19, align 8
  br label %67

67:                                               ; preds = %62, %54
  %68 = load %struct.sock*, %struct.sock** %8, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @ntohl(i32 %71)
  %73 = load i64*, i64** %19, align 8
  %74 = call i32 @ipv6_icmp_error(%struct.sock* %68, %struct.sk_buff* %69, i32 %70, i32 0, i32 %72, i64* %73)
  br label %75

75:                                               ; preds = %67, %49
  %76 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %77 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %18, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.sock*, %struct.sock** %8, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sock*, %struct.sock** %8, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 2
  %89 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %88, align 8
  %90 = load %struct.sock*, %struct.sock** %8, align 8
  %91 = call i32 %89(%struct.sock* %90)
  br label %92

92:                                               ; preds = %34, %83, %80
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @icmpv6_err_convert(i64, i64, i32*) #1

declare dso_local i32 @ipv6_icmp_error(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i64*) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
