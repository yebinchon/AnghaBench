; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nlattr = type { i32 }

@CTA_STATUS = common dso_local global i64 0, align 8
@IPS_EXPECTED = common dso_local global i64 0, align 8
@IPS_CONFIRMED = common dso_local global i64 0, align 8
@IPS_DYING = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@IPS_SEEN_REPLY = common dso_local global i64 0, align 8
@IPS_ASSURED = common dso_local global i64 0, align 8
@IPS_NAT_DONE_MASK = common dso_local global i32 0, align 4
@IPS_NAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.nlattr**)* @ctnetlink_change_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_change_status(%struct.nf_conn* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %8 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %9 = load i64, i64* @CTA_STATUS, align 8
  %10 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %8, i64 %9
  %11 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %12 = call i32 @nla_get_be32(%struct.nlattr* %11)
  %13 = call i32 @ntohl(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %15 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = xor i32 %16, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @IPS_EXPECTED, align 8
  %22 = load i64, i64* @IPS_CONFIRMED, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @IPS_DYING, align 8
  %25 = or i64 %23, %24
  %26 = and i64 %20, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %70

31:                                               ; preds = %2
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @IPS_SEEN_REPLY, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* @IPS_SEEN_REPLY, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %70

45:                                               ; preds = %36, %31
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @IPS_ASSURED, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* @IPS_ASSURED, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %70

59:                                               ; preds = %50, %45
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @IPS_NAT_DONE_MASK, align 4
  %62 = load i32, i32* @IPS_NAT_MASK, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = and i32 %60, %64
  %66 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %67 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %59, %56, %42, %28
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
