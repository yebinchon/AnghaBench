; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_compile_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_compile_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32 }
%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_userpolicy_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_user_tmpl = type { i32 }

@IP_XFRM_POLICY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XFRM_POLICY_OUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@XFRM_POLICY_TYPE_MAIN = common dso_local global i32 0, align 4
@IPV6_XFRM_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_policy* (%struct.sock*, i32, i32*, i32, i32*)* @xfrm_compile_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_policy* @xfrm_compile_policy(%struct.sock* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.xfrm_userpolicy_info*, align 8
  %14 = alloca %struct.xfrm_user_tmpl*, align 8
  %15 = alloca %struct.xfrm_policy*, align 8
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = call %struct.net* @sock_net(%struct.sock* %17)
  store %struct.net* %18, %struct.net** %12, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = bitcast i32* %19 to %struct.xfrm_userpolicy_info*
  store %struct.xfrm_userpolicy_info* %20, %struct.xfrm_userpolicy_info** %13, align 8
  %21 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %13, align 8
  %22 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %21, i64 1
  %23 = bitcast %struct.xfrm_userpolicy_info* %22 to %struct.xfrm_user_tmpl*
  store %struct.xfrm_user_tmpl* %23, %struct.xfrm_user_tmpl** %14, align 8
  %24 = load %struct.sock*, %struct.sock** %7, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %36 [
    i32 129, label %27
  ]

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @IP_XFRM_POLICY, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  %34 = load i32*, i32** %11, align 8
  store i32 %33, i32* %34, align 4
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %6, align 8
  br label %100

35:                                               ; preds = %27
  br label %40

36:                                               ; preds = %5
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %6, align 8
  br label %100

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = load i32*, i32** %11, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %45, 8
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %13, align 8
  %49 = call i64 @verify_newpolicy_info(%struct.xfrm_userpolicy_info* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %40
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %6, align 8
  br label %100

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 %54, 8
  %56 = udiv i64 %55, 4
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %14, align 8
  %60 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %13, align 8
  %61 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @validate_tmpl(i32 %58, %struct.xfrm_user_tmpl* %59, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %6, align 8
  br label %100

67:                                               ; preds = %52
  %68 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %13, align 8
  %69 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @XFRM_POLICY_OUT, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %6, align 8
  br label %100

74:                                               ; preds = %67
  %75 = load %struct.net*, %struct.net** %12, align 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.xfrm_policy* @xfrm_policy_alloc(%struct.net* %75, i32 %76)
  store %struct.xfrm_policy* %77, %struct.xfrm_policy** %15, align 8
  %78 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %79 = icmp eq %struct.xfrm_policy* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @ENOBUFS, align 4
  %82 = sub nsw i32 0, %81
  %83 = load i32*, i32** %11, align 8
  store i32 %82, i32* %83, align 4
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %6, align 8
  br label %100

84:                                               ; preds = %74
  %85 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %86 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %13, align 8
  %87 = call i32 @copy_from_user_policy(%struct.xfrm_policy* %85, %struct.xfrm_userpolicy_info* %86)
  %88 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  %89 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %90 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  %92 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %14, align 8
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @copy_templates(%struct.xfrm_policy* %91, %struct.xfrm_user_tmpl* %92, i32 %93)
  %95 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %13, align 8
  %96 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %11, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.xfrm_policy*, %struct.xfrm_policy** %15, align 8
  store %struct.xfrm_policy* %99, %struct.xfrm_policy** %6, align 8
  br label %100

100:                                              ; preds = %84, %80, %73, %66, %51, %36, %31
  %101 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  ret %struct.xfrm_policy* %101
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i64 @verify_newpolicy_info(%struct.xfrm_userpolicy_info*) #1

declare dso_local i64 @validate_tmpl(i32, %struct.xfrm_user_tmpl*, i32) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_alloc(%struct.net*, i32) #1

declare dso_local i32 @copy_from_user_policy(%struct.xfrm_policy*, %struct.xfrm_userpolicy_info*) #1

declare dso_local i32 @copy_templates(%struct.xfrm_policy*, %struct.xfrm_user_tmpl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
