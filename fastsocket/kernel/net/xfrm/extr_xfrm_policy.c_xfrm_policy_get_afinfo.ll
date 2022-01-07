; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_policy_get_afinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_policy_get_afinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy_afinfo = type { i32 }

@NPROTO = common dso_local global i16 0, align 2
@xfrm_policy_afinfo = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_policy_afinfo* (i16)* @xfrm_policy_get_afinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i16 zeroext %0) #0 {
  %2 = alloca %struct.xfrm_policy_afinfo*, align 8
  %3 = alloca i16, align 2
  %4 = alloca %struct.xfrm_policy_afinfo*, align 8
  store i16 %0, i16* %3, align 2
  %5 = load i16, i16* %3, align 2
  %6 = zext i16 %5 to i32
  %7 = load i16, i16* @NPROTO, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp sge i32 %6, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.xfrm_policy_afinfo* null, %struct.xfrm_policy_afinfo** %2, align 8
  br label %32

14:                                               ; preds = %1
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load i32*, i32** @xfrm_policy_afinfo, align 8
  %17 = load i16, i16* %3, align 2
  %18 = zext i16 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.xfrm_policy_afinfo* @rcu_dereference(i32 %20)
  store %struct.xfrm_policy_afinfo* %21, %struct.xfrm_policy_afinfo** %4, align 8
  %22 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %4, align 8
  %23 = icmp ne %struct.xfrm_policy_afinfo* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = call i32 (...) @rcu_read_unlock()
  br label %30

30:                                               ; preds = %28, %14
  %31 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %4, align 8
  store %struct.xfrm_policy_afinfo* %31, %struct.xfrm_policy_afinfo** %2, align 8
  br label %32

32:                                               ; preds = %30, %13
  %33 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %2, align 8
  ret %struct.xfrm_policy_afinfo* %33
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.xfrm_policy_afinfo* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
