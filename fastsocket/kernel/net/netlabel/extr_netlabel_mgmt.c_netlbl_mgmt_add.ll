; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_mgmt.c_netlbl_mgmt_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_mgmt.c_netlbl_mgmt_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32** }
%struct.netlbl_audit = type { i32 }

@NLBL_MGMT_A_DOMAIN = common dso_local global i64 0, align 8
@NLBL_MGMT_A_PROTOCOL = common dso_local global i64 0, align 8
@NLBL_MGMT_A_IPV4ADDR = common dso_local global i64 0, align 8
@NLBL_MGMT_A_IPV6ADDR = common dso_local global i64 0, align 8
@NLBL_MGMT_A_IPV4MASK = common dso_local global i64 0, align 8
@NLBL_MGMT_A_IPV6MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @netlbl_mgmt_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_mgmt_add(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.netlbl_audit, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %7 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %8 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %7, i32 0, i32 0
  %9 = load i32**, i32*** %8, align 8
  %10 = load i64, i64* @NLBL_MGMT_A_DOMAIN, align 8
  %11 = getelementptr inbounds i32*, i32** %9, i64 %10
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %92

14:                                               ; preds = %2
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = load i64, i64* @NLBL_MGMT_A_PROTOCOL, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %92

22:                                               ; preds = %14
  %23 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load i64, i64* @NLBL_MGMT_A_IPV4ADDR, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %32 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = load i64, i64* @NLBL_MGMT_A_IPV6ADDR, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %92, label %38

38:                                               ; preds = %30, %22
  %39 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load i64, i64* @NLBL_MGMT_A_IPV4MASK, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = load i64, i64* @NLBL_MGMT_A_IPV6MASK, align 8
  %51 = getelementptr inbounds i32*, i32** %49, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %92, label %54

54:                                               ; preds = %46, %38
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = load i64, i64* @NLBL_MGMT_A_IPV4ADDR, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %64 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = load i64, i64* @NLBL_MGMT_A_IPV4MASK, align 8
  %67 = getelementptr inbounds i32*, i32** %65, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  %70 = zext i1 %69 to i32
  %71 = xor i32 %62, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %54
  %74 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %75 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %74, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = load i64, i64* @NLBL_MGMT_A_IPV6ADDR, align 8
  %78 = getelementptr inbounds i32*, i32** %76, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %83 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %82, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = load i64, i64* @NLBL_MGMT_A_IPV6MASK, align 8
  %86 = getelementptr inbounds i32*, i32** %84, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  %89 = zext i1 %88 to i32
  %90 = xor i32 %81, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %73, %54, %46, %30, %14, %2
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %100

95:                                               ; preds = %73
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = call i32 @netlbl_netlink_auditinfo(%struct.sk_buff* %96, %struct.netlbl_audit* %6)
  %98 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %99 = call i32 @netlbl_mgmt_add_common(%struct.genl_info* %98, %struct.netlbl_audit* %6)
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %92
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @netlbl_netlink_auditinfo(%struct.sk_buff*, %struct.netlbl_audit*) #1

declare dso_local i32 @netlbl_mgmt_add_common(%struct.genl_info*, %struct.netlbl_audit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
