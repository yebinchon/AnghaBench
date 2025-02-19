; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_policy_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_policy_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_policy_destroy(%struct.xfrm_policy* %0) #0 {
  %2 = alloca %struct.xfrm_policy*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %2, align 8
  %3 = load %struct.xfrm_policy*, %struct.xfrm_policy** %2, align 8
  %4 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.xfrm_policy*, %struct.xfrm_policy** %2, align 8
  %12 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %11, i32 0, i32 1
  %13 = call i64 @del_timer(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %15, %1
  %18 = load %struct.xfrm_policy*, %struct.xfrm_policy** %2, align 8
  %19 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @security_xfrm_policy_free(i32 %20)
  %22 = load %struct.xfrm_policy*, %struct.xfrm_policy** %2, align 8
  %23 = call i32 @kfree(%struct.xfrm_policy* %22)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @security_xfrm_policy_free(i32) #1

declare dso_local i32 @kfree(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
