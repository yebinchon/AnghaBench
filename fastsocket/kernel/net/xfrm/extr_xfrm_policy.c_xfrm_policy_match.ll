; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_policy_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_policy_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i64, i32, %struct.TYPE_2__, i32, %struct.xfrm_selector }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xfrm_selector = type { i32 }
%struct.flowi = type { i32, i32 }

@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, %struct.flowi*, i64, i32, i32)* @xfrm_policy_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_policy_match(%struct.xfrm_policy* %0, %struct.flowi* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfrm_policy*, align 8
  %8 = alloca %struct.flowi*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfrm_selector*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %7, align 8
  store %struct.flowi* %1, %struct.flowi** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %16 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %15, i32 0, i32 4
  store %struct.xfrm_selector* %16, %struct.xfrm_selector** %12, align 8
  %17 = load i32, i32* @ESRCH, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %14, align 4
  %19 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %20 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %44, label %24

24:                                               ; preds = %5
  %25 = load %struct.flowi*, %struct.flowi** %8, align 8
  %26 = getelementptr inbounds %struct.flowi, %struct.flowi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %29 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %27, %31
  %33 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %34 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %32, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %24
  %39 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %40 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %24, %5
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %6, align 4
  br label %64

46:                                               ; preds = %38
  %47 = load %struct.xfrm_selector*, %struct.xfrm_selector** %12, align 8
  %48 = load %struct.flowi*, %struct.flowi** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @xfrm_selector_match(%struct.xfrm_selector* %47, %struct.flowi* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %55 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.flowi*, %struct.flowi** %8, align 8
  %58 = getelementptr inbounds %struct.flowi, %struct.flowi* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @security_xfrm_policy_lookup(i32 %56, i32 %59, i32 %60)
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %53, %46
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %44
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @xfrm_selector_match(%struct.xfrm_selector*, %struct.flowi*, i32) #1

declare dso_local i32 @security_xfrm_policy_lookup(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
