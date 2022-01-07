; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_verify_one_alg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_verify_one_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.xfrm_algo = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, i32)* @verify_one_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_one_alg(%struct.nlattr** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.xfrm_algo*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %8, i64 %10
  %12 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  store %struct.nlattr* %12, %struct.nlattr** %6, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %18 = call %struct.xfrm_algo* @nla_data(%struct.nlattr* %17)
  store %struct.xfrm_algo* %18, %struct.xfrm_algo** %7, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %20 = call i64 @nla_len(%struct.nlattr* %19)
  %21 = load %struct.xfrm_algo*, %struct.xfrm_algo** %7, align 8
  %22 = call i64 @xfrm_alg_len(%struct.xfrm_algo* %21)
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %41

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %30 [
    i32 130, label %29
    i32 128, label %29
    i32 129, label %29
  ]

29:                                               ; preds = %27, %27, %27
  br label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %29
  %34 = load %struct.xfrm_algo*, %struct.xfrm_algo** %7, align 8
  %35 = getelementptr inbounds %struct.xfrm_algo, %struct.xfrm_algo* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 0, i8* %40, align 1
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %33, %30, %24, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.xfrm_algo* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i64 @xfrm_alg_len(%struct.xfrm_algo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
