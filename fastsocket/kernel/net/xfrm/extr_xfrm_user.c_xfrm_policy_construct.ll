; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_policy_construct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_policy_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_userpolicy_info = type { i32 }
%struct.nlattr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_policy* (%struct.net*, %struct.xfrm_userpolicy_info*, %struct.nlattr**, i32*)* @xfrm_policy_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_policy* @xfrm_policy_construct(%struct.net* %0, %struct.xfrm_userpolicy_info* %1, %struct.nlattr** %2, i32* %3) #0 {
  %5 = alloca %struct.xfrm_policy*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.xfrm_userpolicy_info*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfrm_policy*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.xfrm_userpolicy_info* %1, %struct.xfrm_userpolicy_info** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.net*, %struct.net** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.xfrm_policy* @xfrm_policy_alloc(%struct.net* %12, i32 %13)
  store %struct.xfrm_policy* %14, %struct.xfrm_policy** %10, align 8
  %15 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %16 = icmp ne %struct.xfrm_policy* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %5, align 8
  br label %59

21:                                               ; preds = %4
  %22 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %23 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %7, align 8
  %24 = call i32 @copy_from_user_policy(%struct.xfrm_policy* %22, %struct.xfrm_userpolicy_info* %23)
  %25 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %26 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %25, i32 0, i32 2
  %27 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %28 = call i32 @copy_from_user_policy_type(i32* %26, %struct.nlattr** %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %51

32:                                               ; preds = %21
  %33 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %34 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %35 = call i32 @copy_from_user_tmpl(%struct.xfrm_policy* %33, %struct.nlattr** %34)
  store i32 %35, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %39 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %40 = call i32 @copy_from_user_sec_ctx(%struct.xfrm_policy* %38, %struct.nlattr** %39)
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %51

45:                                               ; preds = %41
  %46 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %47 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %48 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %47, i32 0, i32 1
  %49 = call i32 @xfrm_mark_get(%struct.nlattr** %46, i32* %48)
  %50 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  store %struct.xfrm_policy* %50, %struct.xfrm_policy** %5, align 8
  br label %59

51:                                               ; preds = %44, %31
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %55 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %58 = call i32 @xfrm_policy_destroy(%struct.xfrm_policy* %57)
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %5, align 8
  br label %59

59:                                               ; preds = %51, %45, %17
  %60 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  ret %struct.xfrm_policy* %60
}

declare dso_local %struct.xfrm_policy* @xfrm_policy_alloc(%struct.net*, i32) #1

declare dso_local i32 @copy_from_user_policy(%struct.xfrm_policy*, %struct.xfrm_userpolicy_info*) #1

declare dso_local i32 @copy_from_user_policy_type(i32*, %struct.nlattr**) #1

declare dso_local i32 @copy_from_user_tmpl(%struct.xfrm_policy*, %struct.nlattr**) #1

declare dso_local i32 @copy_from_user_sec_ctx(%struct.xfrm_policy*, %struct.nlattr**) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, i32*) #1

declare dso_local i32 @xfrm_policy_destroy(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
