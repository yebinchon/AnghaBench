; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_sk_policy_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_sk_policy_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sock = type { i32, i32, %struct.xfrm_policy** }
%struct.flowi = type { i32 }

@xfrm_policy_lock = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_policy* (%struct.sock*, i32, %struct.flowi*)* @xfrm_sk_policy_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_policy* @xfrm_sk_policy_lookup(%struct.sock* %0, i32 %1, %struct.flowi* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca %struct.xfrm_policy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.flowi* %2, %struct.flowi** %6, align 8
  %10 = call i32 @read_lock_bh(i32* @xfrm_policy_lock)
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 2
  %13 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %13, i64 %15
  %17 = load %struct.xfrm_policy*, %struct.xfrm_policy** %16, align 8
  store %struct.xfrm_policy* %17, %struct.xfrm_policy** %7, align 8
  %18 = icmp ne %struct.xfrm_policy* %17, null
  br i1 %18, label %19, label %72

19:                                               ; preds = %3
  %20 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %21 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %20, i32 0, i32 2
  %22 = load %struct.flowi*, %struct.flowi** %6, align 8
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @xfrm_selector_match(i32* %21, %struct.flowi* %22, i32 %25)
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %19
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %34 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %32, %36
  %38 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %39 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %7, align 8
  br label %73

44:                                               ; preds = %29
  %45 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %46 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.flowi*, %struct.flowi** %6, align 8
  %49 = getelementptr inbounds %struct.flowi, %struct.flowi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @policy_to_flow_dir(i32 %51)
  %53 = call i32 @security_xfrm_policy_lookup(i32 %47, i32 %50, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %58 = call i32 @xfrm_pol_hold(%struct.xfrm_policy* %57)
  br label %69

59:                                               ; preds = %44
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @ESRCH, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %7, align 8
  br label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = call %struct.xfrm_policy* @ERR_PTR(i32 %66)
  store %struct.xfrm_policy* %67, %struct.xfrm_policy** %7, align 8
  br label %68

68:                                               ; preds = %65, %64
  br label %69

69:                                               ; preds = %68, %56
  br label %71

70:                                               ; preds = %19
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %7, align 8
  br label %71

71:                                               ; preds = %70, %69
  br label %72

72:                                               ; preds = %71, %3
  br label %73

73:                                               ; preds = %72, %43
  %74 = call i32 @read_unlock_bh(i32* @xfrm_policy_lock)
  %75 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  ret %struct.xfrm_policy* %75
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @xfrm_selector_match(i32*, %struct.flowi*, i32) #1

declare dso_local i32 @security_xfrm_policy_lookup(i32, i32, i32) #1

declare dso_local i32 @policy_to_flow_dir(i32) #1

declare dso_local i32 @xfrm_pol_hold(%struct.xfrm_policy*) #1

declare dso_local %struct.xfrm_policy* @ERR_PTR(i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
