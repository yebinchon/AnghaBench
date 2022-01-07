; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_verify_sec_ctx_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_verify_sec_ctx_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.xfrm_user_sec_ctx = type { i64, i64 }

@XFRMA_SEC_CTX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**)* @verify_sec_ctx_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_sec_ctx_len(%struct.nlattr** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.xfrm_user_sec_ctx*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %7 = load i64, i64* @XFRMA_SEC_CTX, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  store %struct.nlattr* %9, %struct.nlattr** %4, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %15 = call %struct.xfrm_user_sec_ctx* @nla_data(%struct.nlattr* %14)
  store %struct.xfrm_user_sec_ctx* %15, %struct.xfrm_user_sec_ctx** %5, align 8
  %16 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add i64 16, %21
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %24, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.xfrm_user_sec_ctx* @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
