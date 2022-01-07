; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_copy_from_user_policy_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_copy_from_user_policy_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.xfrm_userpolicy_type = type { i32 }

@XFRMA_POLICY_TYPE = common dso_local global i64 0, align 8
@XFRM_POLICY_TYPE_MAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.nlattr**)* @copy_from_user_policy_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_from_user_policy_type(i32* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.xfrm_userpolicy_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %10 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %11 = load i64, i64* @XFRMA_POLICY_TYPE, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  store %struct.nlattr* %13, %struct.nlattr** %6, align 8
  %14 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %19 = call %struct.xfrm_userpolicy_type* @nla_data(%struct.nlattr* %18)
  store %struct.xfrm_userpolicy_type* %19, %struct.xfrm_userpolicy_type** %7, align 8
  %20 = load %struct.xfrm_userpolicy_type*, %struct.xfrm_userpolicy_type** %7, align 8
  %21 = getelementptr inbounds %struct.xfrm_userpolicy_type, %struct.xfrm_userpolicy_type* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %17, %2
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @verify_policy_type(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.xfrm_userpolicy_type* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @verify_policy_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
