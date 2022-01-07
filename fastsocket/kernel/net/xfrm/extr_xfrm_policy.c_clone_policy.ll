; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_clone_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_clone_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@xfrm_policy_lock = common dso_local global i32 0, align 4
@XFRM_POLICY_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_policy* (%struct.xfrm_policy*, i32)* @clone_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_policy* @clone_policy(%struct.xfrm_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_policy*, align 8
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_policy*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %8 = call i32 @xp_net(%struct.xfrm_policy* %7)
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.xfrm_policy* @xfrm_policy_alloc(i32 %8, i32 %9)
  store %struct.xfrm_policy* %10, %struct.xfrm_policy** %6, align 8
  %11 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %12 = icmp ne %struct.xfrm_policy* %11, null
  br i1 %12, label %13, label %93

13:                                               ; preds = %2
  %14 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %15 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %18 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %17, i32 0, i32 10
  store i32 %16, i32* %18, align 4
  %19 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %20 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %23 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %22, i32 0, i32 9
  %24 = call i64 @security_xfrm_policy_clone(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %28 = call i32 @kfree(%struct.xfrm_policy* %27)
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %3, align 8
  br label %95

29:                                               ; preds = %13
  %30 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %31 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %34 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %36 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %39 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %41 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %44 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %46 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %49 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %51 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %54 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %56 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %59 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %61 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %64 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %66 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %69 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %71 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %74 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %77 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memcpy(i32 %72, i32 %75, i32 %81)
  %83 = call i32 @write_lock_bh(i32* @xfrm_policy_lock)
  %84 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %85 = load i64, i64* @XFRM_POLICY_MAX, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = call i32 @__xfrm_policy_link(%struct.xfrm_policy* %84, i64 %88)
  %90 = call i32 @write_unlock_bh(i32* @xfrm_policy_lock)
  %91 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %92 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %91)
  br label %93

93:                                               ; preds = %29, %2
  %94 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  store %struct.xfrm_policy* %94, %struct.xfrm_policy** %3, align 8
  br label %95

95:                                               ; preds = %93, %26
  %96 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  ret %struct.xfrm_policy* %96
}

declare dso_local %struct.xfrm_policy* @xfrm_policy_alloc(i32, i32) #1

declare dso_local i32 @xp_net(%struct.xfrm_policy*) #1

declare dso_local i64 @security_xfrm_policy_clone(i32, i32*) #1

declare dso_local i32 @kfree(%struct.xfrm_policy*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @__xfrm_policy_link(%struct.xfrm_policy*, i64) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
