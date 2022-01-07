; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_xfrm.c_selinux_xfrm_postroute_last.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_xfrm.c_selinux_xfrm_postroute_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.dst_entry = type { %struct.xfrm_state*, %struct.dst_entry* }
%struct.xfrm_state = type { i32 }

@SECINITSID_UNLABELED = common dso_local global i32 0, align 4
@SECCLASS_ASSOCIATION = common dso_local global i32 0, align 4
@ASSOCIATION__SENDTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_xfrm_postroute_last(i32 %0, %struct.sk_buff* %1, %struct.common_audit_data* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.common_audit_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca %struct.xfrm_state*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.common_audit_data* %2, %struct.common_audit_data** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %13)
  store %struct.dst_entry* %14, %struct.dst_entry** %9, align 8
  %15 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %16 = icmp ne %struct.dst_entry* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %4
  %18 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  store %struct.dst_entry* %18, %struct.dst_entry** %11, align 8
  br label %19

19:                                               ; preds = %34, %17
  %20 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %21 = icmp ne %struct.dst_entry* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %24 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %23, i32 0, i32 0
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %24, align 8
  store %struct.xfrm_state* %25, %struct.xfrm_state** %12, align 8
  %26 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  %27 = icmp ne %struct.xfrm_state* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  %30 = call i64 @selinux_authorizable_xfrm(%struct.xfrm_state* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %50

33:                                               ; preds = %28, %22
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %36 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %35, i32 0, i32 1
  %37 = load %struct.dst_entry*, %struct.dst_entry** %36, align 8
  store %struct.dst_entry* %37, %struct.dst_entry** %11, align 8
  br label %19

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38, %4
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %42 [
    i32 130, label %41
    i32 128, label %41
    i32 129, label %41
  ]

41:                                               ; preds = %39, %39, %39
  br label %50

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @SECINITSID_UNLABELED, align 4
  %46 = load i32, i32* @SECCLASS_ASSOCIATION, align 4
  %47 = load i32, i32* @ASSOCIATION__SENDTO, align 4
  %48 = load %struct.common_audit_data*, %struct.common_audit_data** %7, align 8
  %49 = call i32 @avc_has_perm(i32 %44, i32 %45, i32 %46, i32 %47, %struct.common_audit_data* %48)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %43, %41, %32
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @selinux_authorizable_xfrm(%struct.xfrm_state*) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
