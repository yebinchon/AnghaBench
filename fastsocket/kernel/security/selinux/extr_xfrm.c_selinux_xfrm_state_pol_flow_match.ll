; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_xfrm.c_selinux_xfrm_state_pol_flow_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_xfrm.c_selinux_xfrm_state_pol_flow_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.xfrm_policy = type { i32 }
%struct.flowi = type { i64 }

@SECCLASS_ASSOCIATION = common dso_local global i32 0, align 4
@ASSOCIATION__SENDTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_xfrm_state_pol_flow_match(%struct.xfrm_state* %0, %struct.xfrm_policy* %1, %struct.flowi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.xfrm_policy* %1, %struct.xfrm_policy** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %10 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %11 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %16 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %58

20:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %23 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %58

27:                                               ; preds = %21
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %29 = call i32 @selinux_authorizable_xfrm(%struct.xfrm_state* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %58

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %36 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  %40 = load %struct.flowi*, %struct.flowi** %7, align 8
  %41 = getelementptr inbounds %struct.flowi, %struct.flowi* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %58

46:                                               ; preds = %34
  %47 = load %struct.flowi*, %struct.flowi** %7, align 8
  %48 = getelementptr inbounds %struct.flowi, %struct.flowi* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* @SECCLASS_ASSOCIATION, align 4
  %52 = load i32, i32* @ASSOCIATION__SENDTO, align 4
  %53 = call i64 @avc_has_perm(i64 %49, i64 %50, i32 %51, i32 %52, i32* null)
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 1
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %46, %45, %31, %26, %20, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @selinux_authorizable_xfrm(%struct.xfrm_state*) #1

declare dso_local i64 @avc_has_perm(i64, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
