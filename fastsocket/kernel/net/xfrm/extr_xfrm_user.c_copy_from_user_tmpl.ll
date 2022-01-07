; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_copy_from_user_tmpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_copy_from_user_tmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i64 }
%struct.nlattr = type { i32 }
%struct.xfrm_user_tmpl = type { i32 }

@XFRMA_TMPL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, %struct.nlattr**)* @copy_from_user_tmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_from_user_tmpl(%struct.xfrm_policy* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.xfrm_user_tmpl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %10 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %11 = load i64, i64* @XFRMA_TMPL, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  store %struct.nlattr* %13, %struct.nlattr** %6, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %18 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %21 = call %struct.xfrm_user_tmpl* @nla_data(%struct.nlattr* %20)
  store %struct.xfrm_user_tmpl* %21, %struct.xfrm_user_tmpl** %7, align 8
  %22 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %23 = call i32 @nla_len(%struct.nlattr* %22)
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %7, align 8
  %29 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %30 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @validate_tmpl(i32 %27, %struct.xfrm_user_tmpl* %28, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %43

37:                                               ; preds = %19
  %38 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %39 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @copy_templates(%struct.xfrm_policy* %38, %struct.xfrm_user_tmpl* %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %16
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.xfrm_user_tmpl* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @validate_tmpl(i32, %struct.xfrm_user_tmpl*, i32) #1

declare dso_local i32 @copy_templates(%struct.xfrm_policy*, %struct.xfrm_user_tmpl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
