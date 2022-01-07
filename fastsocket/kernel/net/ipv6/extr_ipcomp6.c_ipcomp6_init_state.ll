; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ipcomp6.c_ipcomp6_init_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ipcomp6.c_ipcomp6_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*)* @ipcomp6_init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcomp6_init_state(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %4 = load i32, i32* @EINVAL, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %7 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %20 [
    i32 129, label %13
    i32 128, label %14
  ]

13:                                               ; preds = %1
  br label %21

14:                                               ; preds = %1
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %16 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %17, align 8
  br label %21

20:                                               ; preds = %1
  br label %41

21:                                               ; preds = %14, %13
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %23 = call i32 @ipcomp_init_state(%struct.xfrm_state* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %41

27:                                               ; preds = %21
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %29 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %35 = call i32 @ipcomp6_tunnel_attach(%struct.xfrm_state* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %43

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %27
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %43, %40, %26, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42

43:                                               ; preds = %38
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %45 = call i32 @ipcomp_destroy(%struct.xfrm_state* %44)
  br label %41
}

declare dso_local i32 @ipcomp_init_state(%struct.xfrm_state*) #1

declare dso_local i32 @ipcomp6_tunnel_attach(%struct.xfrm_state*) #1

declare dso_local i32 @ipcomp_destroy(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
