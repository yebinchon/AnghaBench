; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_sk_policy_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_sk_policy_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.xfrm_policy** }
%struct.xfrm_policy = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }

@xfrm_policy_lock = common dso_local global i32 0, align 4
@XFRM_POLICY_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XFRM_POLICY_TYPE_MAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_sk_policy_insert(%struct.sock* %0, i32 %1, %struct.xfrm_policy* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.xfrm_policy*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.xfrm_policy* %2, %struct.xfrm_policy** %6, align 8
  %9 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %10 = call %struct.net* @xp_net(%struct.xfrm_policy* %9)
  store %struct.net* %10, %struct.net** %7, align 8
  %11 = call i32 @write_lock_bh(i32* @xfrm_policy_lock)
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %14, i64 %16
  %18 = load %struct.xfrm_policy*, %struct.xfrm_policy** %17, align 8
  store %struct.xfrm_policy* %18, %struct.xfrm_policy** %8, align 8
  %19 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %22, i64 %24
  store %struct.xfrm_policy* %19, %struct.xfrm_policy** %25, align 8
  %26 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %27 = icmp ne %struct.xfrm_policy* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %3
  %29 = call i32 (...) @get_seconds()
  %30 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %31 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.net*, %struct.net** %7, align 8
  %34 = load i64, i64* @XFRM_POLICY_MAX, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @xfrm_gen_index(%struct.net* %33, i64 %37)
  %39 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %40 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %42 = load i64, i64* @XFRM_POLICY_MAX, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = call i32 @__xfrm_policy_link(%struct.xfrm_policy* %41, i64 %45)
  br label %47

47:                                               ; preds = %28, %3
  %48 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %49 = icmp ne %struct.xfrm_policy* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %52 = load i64, i64* @XFRM_POLICY_MAX, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i32 @__xfrm_policy_unlink(%struct.xfrm_policy* %51, i64 %55)
  br label %57

57:                                               ; preds = %50, %47
  %58 = call i32 @write_unlock_bh(i32* @xfrm_policy_lock)
  %59 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %60 = icmp ne %struct.xfrm_policy* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %63 = call i32 @xfrm_policy_kill(%struct.xfrm_policy* %62)
  br label %64

64:                                               ; preds = %61, %57
  ret i32 0
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @xfrm_gen_index(%struct.net*, i64) #1

declare dso_local i32 @__xfrm_policy_link(%struct.xfrm_policy*, i64) #1

declare dso_local i32 @__xfrm_policy_unlink(%struct.xfrm_policy*, i64) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_policy_kill(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
