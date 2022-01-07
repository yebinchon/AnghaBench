; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_xfrm.c_selinux_xfrm_sock_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_xfrm.c_selinux_xfrm_sock_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sec_path* }
%struct.sec_path = type { i32, %struct.xfrm_state** }
%struct.xfrm_state = type { %struct.xfrm_sec_ctx* }
%struct.xfrm_sec_ctx = type { i32 }
%struct.common_audit_data = type { i32 }

@SECINITSID_UNLABELED = common dso_local global i32 0, align 4
@SECCLASS_ASSOCIATION = common dso_local global i32 0, align 4
@ASSOCIATION__RECVFROM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_xfrm_sock_rcv_skb(i32 %0, %struct.sk_buff* %1, %struct.common_audit_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.common_audit_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sec_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfrm_state*, align 8
  %12 = alloca %struct.xfrm_sec_ctx*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.common_audit_data* %2, %struct.common_audit_data** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @SECINITSID_UNLABELED, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load %struct.sec_path*, %struct.sec_path** %15, align 8
  store %struct.sec_path* %16, %struct.sec_path** %9, align 8
  %17 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %18 = icmp ne %struct.sec_path* %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %48, %19
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %23 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %28 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %27, i32 0, i32 1
  %29 = load %struct.xfrm_state**, %struct.xfrm_state*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %29, i64 %31
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %32, align 8
  store %struct.xfrm_state* %33, %struct.xfrm_state** %11, align 8
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %35 = icmp ne %struct.xfrm_state* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %26
  %37 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %38 = call i64 @selinux_authorizable_xfrm(%struct.xfrm_state* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 0
  %43 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %42, align 8
  store %struct.xfrm_sec_ctx* %43, %struct.xfrm_sec_ctx** %12, align 8
  %44 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %12, align 8
  %45 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  br label %51

47:                                               ; preds = %36, %26
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %20

51:                                               ; preds = %40, %20
  br label %52

52:                                               ; preds = %51, %3
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @SECCLASS_ASSOCIATION, align 4
  %56 = load i32, i32* @ASSOCIATION__RECVFROM, align 4
  %57 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %58 = call i32 @avc_has_perm(i32 %53, i32 %54, i32 %55, i32 %56, %struct.common_audit_data* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i64 @selinux_authorizable_xfrm(%struct.xfrm_state*) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
