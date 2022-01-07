; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_cipso_v4.c_netlbl_cipsov4_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_cipso_v4.c_netlbl_cipsov4_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.netlbl_audit = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@NLBL_CIPSOV4_A_DOI = common dso_local global i64 0, align 8
@NLBL_CIPSOV4_A_MTYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"trans\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@netlabel_mgmt_protocount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @netlbl_cipsov4_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_cipsov4_add(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.netlbl_audit, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @NLBL_CIPSOV4_A_DOI, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @NLBL_CIPSOV4_A_MTYPE, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %55

29:                                               ; preds = %18
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @netlbl_netlink_auditinfo(%struct.sk_buff* %30, %struct.netlbl_audit* %8)
  %32 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %33 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @NLBL_CIPSOV4_A_MTYPE, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nla_get_u32(i32 %37)
  switch i32 %38, label %48 [
    i32 128, label %39
    i32 129, label %42
    i32 130, label %45
  ]

39:                                               ; preds = %29
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = call i32 @netlbl_cipsov4_add_std(%struct.genl_info* %40, %struct.netlbl_audit* %8)
  store i32 %41, i32* %6, align 4
  br label %48

42:                                               ; preds = %29
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %43 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %44 = call i32 @netlbl_cipsov4_add_pass(%struct.genl_info* %43, %struct.netlbl_audit* %8)
  store i32 %44, i32* %6, align 4
  br label %48

45:                                               ; preds = %29
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %46 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %47 = call i32 @netlbl_cipsov4_add_local(%struct.genl_info* %46, %struct.netlbl_audit* %8)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %29, %45, %42, %39
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @atomic_inc(i32* @netlabel_mgmt_protocount)
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %26
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @netlbl_netlink_auditinfo(%struct.sk_buff*, %struct.netlbl_audit*) #1

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local i32 @netlbl_cipsov4_add_std(%struct.genl_info*, %struct.netlbl_audit*) #1

declare dso_local i32 @netlbl_cipsov4_add_pass(%struct.genl_info*, %struct.netlbl_audit*) #1

declare dso_local i32 @netlbl_cipsov4_add_local(%struct.genl_info*, %struct.netlbl_audit*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
