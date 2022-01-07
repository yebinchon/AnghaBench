; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_xfrm.c_selinux_xfrm_skb_sid_ingress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_xfrm.c_selinux_xfrm_skb_sid_ingress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sec_path* }
%struct.sec_path = type { i32, %struct.xfrm_state** }
%struct.xfrm_state = type { %struct.xfrm_sec_ctx* }
%struct.xfrm_sec_ctx = type { i64 }

@SECSID_NULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64*, i32)* @selinux_xfrm_skb_sid_ingress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_xfrm_skb_sid_ingress(%struct.sk_buff* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sec_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfrm_state*, align 8
  %12 = alloca %struct.xfrm_sec_ctx*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load %struct.sec_path*, %struct.sec_path** %14, align 8
  store %struct.sec_path* %15, %struct.sec_path** %8, align 8
  %16 = load i64, i64* @SECSID_NULL, align 8
  %17 = load i64*, i64** %6, align 8
  store i64 %16, i64* %17, align 8
  %18 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %19 = icmp ne %struct.sec_path* %18, null
  br i1 %19, label %20, label %71

20:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %21 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %22 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %67, %20
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %25
  %29 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %30 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %29, i32 0, i32 1
  %31 = load %struct.xfrm_state**, %struct.xfrm_state*** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %31, i64 %33
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %34, align 8
  store %struct.xfrm_state* %35, %struct.xfrm_state** %11, align 8
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %37 = call i64 @selinux_authorizable_xfrm(%struct.xfrm_state* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %28
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %41 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %40, i32 0, i32 0
  %42 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %41, align 8
  store %struct.xfrm_sec_ctx* %42, %struct.xfrm_sec_ctx** %12, align 8
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %39
  %46 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %12, align 8
  %47 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %6, align 8
  store i64 %48, i64* %49, align 8
  store i32 1, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %70

53:                                               ; preds = %45
  br label %65

54:                                               ; preds = %39
  %55 = load i64*, i64** %6, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %12, align 8
  %58 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %72

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %53
  br label %66

66:                                               ; preds = %65, %28
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %9, align 4
  br label %25

70:                                               ; preds = %52, %25
  br label %71

71:                                               ; preds = %70, %3
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %61
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @selinux_authorizable_xfrm(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
