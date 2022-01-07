; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_copy_to_user_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_copy_to_user_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrm_userpolicy_info = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@XFRM_SHARE_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_policy*, %struct.xfrm_userpolicy_info*, i32)* @copy_to_user_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_to_user_policy(%struct.xfrm_policy* %0, %struct.xfrm_userpolicy_info* %1, i32 %2) #0 {
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca %struct.xfrm_userpolicy_info*, align 8
  %6 = alloca i32, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %4, align 8
  store %struct.xfrm_userpolicy_info* %1, %struct.xfrm_userpolicy_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %5, align 8
  %8 = call i32 @memset(%struct.xfrm_userpolicy_info* %7, i32 0, i32 36)
  %9 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %5, align 8
  %10 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %9, i32 0, i32 4
  %11 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %12 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %11, i32 0, i32 7
  %13 = call i32 @memcpy(%struct.TYPE_2__* %10, i32* %12, i32 4)
  %14 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %5, align 8
  %15 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %14, i32 0, i32 8
  %16 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %17 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %16, i32 0, i32 6
  %18 = call i32 @memcpy(%struct.TYPE_2__* %15, i32* %17, i32 4)
  %19 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %5, align 8
  %20 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %19, i32 0, i32 7
  %21 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %22 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %21, i32 0, i32 5
  %23 = call i32 @memcpy(%struct.TYPE_2__* %20, i32* %22, i32 4)
  %24 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %25 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %5, align 8
  %28 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %30 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %5, align 8
  %33 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %35 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %5, align 8
  %38 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %5, align 8
  %42 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %44 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %5, align 8
  %47 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %49 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %5, align 8
  %52 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @XFRM_SHARE_ANY, align 4
  %54 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %5, align 8
  %55 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  ret void
}

declare dso_local i32 @memset(%struct.xfrm_userpolicy_info*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
