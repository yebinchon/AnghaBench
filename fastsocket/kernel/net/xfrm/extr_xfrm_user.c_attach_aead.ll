; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_attach_aead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_attach_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_algo_aead = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.xfrm_algo_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_algo_aead**, i32*, %struct.nlattr*)* @attach_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_aead(%struct.xfrm_algo_aead** %0, i32* %1, %struct.nlattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_algo_aead**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.xfrm_algo_aead*, align 8
  %9 = alloca %struct.xfrm_algo_aead*, align 8
  %10 = alloca %struct.xfrm_algo_desc*, align 8
  store %struct.xfrm_algo_aead** %0, %struct.xfrm_algo_aead*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nlattr* %2, %struct.nlattr** %7, align 8
  %11 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %12 = icmp ne %struct.nlattr* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

14:                                               ; preds = %3
  %15 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %16 = call %struct.xfrm_algo_aead* @nla_data(%struct.nlattr* %15)
  store %struct.xfrm_algo_aead* %16, %struct.xfrm_algo_aead** %9, align 8
  %17 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %9, align 8
  %18 = getelementptr inbounds %struct.xfrm_algo_aead, %struct.xfrm_algo_aead* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %9, align 8
  %21 = getelementptr inbounds %struct.xfrm_algo_aead, %struct.xfrm_algo_aead* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.xfrm_algo_desc* @xfrm_aead_get_byname(i32 %19, i32 %22, i32 1)
  store %struct.xfrm_algo_desc* %23, %struct.xfrm_algo_desc** %10, align 8
  %24 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %25 = icmp ne %struct.xfrm_algo_desc* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %14
  %27 = load i32, i32* @ENOSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %55

29:                                               ; preds = %14
  %30 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %31 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %9, align 8
  %36 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %9, align 8
  %37 = call i32 @aead_len(%struct.xfrm_algo_aead* %36)
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.xfrm_algo_aead* @kmemdup(%struct.xfrm_algo_aead* %35, i32 %37, i32 %38)
  store %struct.xfrm_algo_aead* %39, %struct.xfrm_algo_aead** %8, align 8
  %40 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %8, align 8
  %41 = icmp ne %struct.xfrm_algo_aead* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %55

45:                                               ; preds = %29
  %46 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %8, align 8
  %47 = getelementptr inbounds %struct.xfrm_algo_aead, %struct.xfrm_algo_aead* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %50 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strcpy(i32 %48, i32 %51)
  %53 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %8, align 8
  %54 = load %struct.xfrm_algo_aead**, %struct.xfrm_algo_aead*** %5, align 8
  store %struct.xfrm_algo_aead* %53, %struct.xfrm_algo_aead** %54, align 8
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %45, %42, %26, %13
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.xfrm_algo_aead* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_aead_get_byname(i32, i32, i32) #1

declare dso_local %struct.xfrm_algo_aead* @kmemdup(%struct.xfrm_algo_aead*, i32, i32) #1

declare dso_local i32 @aead_len(%struct.xfrm_algo_aead*) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
