; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_arcfour_hmac_md5_usage_to_salt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_arcfour_hmac_md5_usage_to_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @arcfour_hmac_md5_usage_to_salt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcfour_hmac_md5_usage_to_salt(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %10 [
    i32 128, label %8
    i32 129, label %9
  ]

8:                                                ; preds = %2
  store i32 15, i32* %6, align 4
  br label %12

9:                                                ; preds = %2
  store i32 13, i32* %6, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %3, align 4
  br label %33

12:                                               ; preds = %9, %8
  %13 = load i32, i32* %6, align 4
  %14 = lshr i32 %13, 0
  %15 = and i32 %14, 255
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = lshr i32 %18, 8
  %20 = and i32 %19, 255
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = lshr i32 %28, 24
  %30 = and i32 %29, 255
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %12, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
