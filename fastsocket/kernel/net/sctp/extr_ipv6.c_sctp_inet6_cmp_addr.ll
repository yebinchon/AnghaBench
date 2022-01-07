; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_inet6_cmp_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_inet6_cmp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sctp_sock = type { i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %union.sctp_addr*)* }
%struct.sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*, %union.sctp_addr*, %struct.sctp_sock*)* @sctp_inet6_cmp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_inet6_cmp_addr(%union.sctp_addr* %0, %union.sctp_addr* %1, %struct.sctp_sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca %struct.sctp_sock*, align 8
  %8 = alloca %struct.sctp_af*, align 8
  %9 = alloca %struct.sctp_af*, align 8
  %10 = alloca %struct.sock*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store %struct.sctp_sock* %2, %struct.sctp_sock** %7, align 8
  %11 = load %struct.sctp_sock*, %struct.sctp_sock** %7, align 8
  %12 = call %struct.sock* @sctp_opt2sk(%struct.sctp_sock* %11)
  store %struct.sock* %12, %struct.sock** %10, align 8
  %13 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %14 = bitcast %union.sctp_addr* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.sctp_af* @sctp_get_af_specific(i64 %16)
  store %struct.sctp_af* %17, %struct.sctp_af** %8, align 8
  %18 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %19 = bitcast %union.sctp_addr* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.sctp_af* @sctp_get_af_specific(i64 %21)
  store %struct.sctp_af* %22, %struct.sctp_af** %9, align 8
  %23 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  %24 = icmp ne %struct.sctp_af* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.sctp_af*, %struct.sctp_af** %9, align 8
  %27 = icmp ne %struct.sctp_af* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %3
  store i32 0, i32* %4, align 4
  br label %67

29:                                               ; preds = %25
  %30 = load %struct.sock*, %struct.sock** %10, align 8
  %31 = call i64 @__ipv6_only_sock(%struct.sock* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  %35 = load %struct.sctp_af*, %struct.sctp_af** %9, align 8
  %36 = icmp ne %struct.sctp_af* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %67

38:                                               ; preds = %33, %29
  %39 = load %struct.sock*, %struct.sock** %10, align 8
  %40 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %41 = call i64 @sctp_is_any(%struct.sock* %39, %union.sctp_addr* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.sock*, %struct.sock** %10, align 8
  %45 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %46 = call i64 @sctp_is_any(%struct.sock* %44, %union.sctp_addr* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %38
  store i32 1, i32* %4, align 4
  br label %67

49:                                               ; preds = %43
  %50 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %51 = bitcast %union.sctp_addr* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %55 = bitcast %union.sctp_addr* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %67

60:                                               ; preds = %49
  %61 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  %62 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %61, i32 0, i32 0
  %63 = load i32 (%union.sctp_addr*, %union.sctp_addr*)*, i32 (%union.sctp_addr*, %union.sctp_addr*)** %62, align 8
  %64 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %65 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %66 = call i32 %63(%union.sctp_addr* %64, %union.sctp_addr* %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %60, %59, %48, %37, %28
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.sock* @sctp_opt2sk(%struct.sctp_sock*) #1

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i64) #1

declare dso_local i64 @__ipv6_only_sock(%struct.sock*) #1

declare dso_local i64 @sctp_is_any(%struct.sock*, %union.sctp_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
