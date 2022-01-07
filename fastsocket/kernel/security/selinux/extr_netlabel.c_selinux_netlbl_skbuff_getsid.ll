; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlabel.c_selinux_netlbl_skbuff_getsid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlabel.c_selinux_netlbl_skbuff_getsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlbl_lsm_secattr = type { i64, i32 }

@SECSID_NULL = common dso_local global i32 0, align 4
@NETLBL_SECATTR_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_netlbl_skbuff_getsid(%struct.sk_buff* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlbl_lsm_secattr, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call i32 (...) @netlbl_enabled()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @SECSID_NULL, align 4
  %16 = load i32*, i32** %9, align 8
  store i32 %15, i32* %16, align 4
  store i32 0, i32* %5, align 4
  br label %42

17:                                               ; preds = %4
  %18 = call i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr* %11)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @netlbl_skbuff_getattr(%struct.sk_buff* %19, i32 %20, %struct.netlbl_lsm_secattr* %11)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %11, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NETLBL_SECATTR_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @selinux_netlbl_sidlookup_cached(%struct.sk_buff* %30, %struct.netlbl_lsm_secattr* %11, i32* %31)
  store i32 %32, i32* %10, align 4
  br label %36

33:                                               ; preds = %24, %17
  %34 = load i32, i32* @SECSID_NULL, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %11, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = call i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr* %11)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %36, %14
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @netlbl_enabled(...) #1

declare dso_local i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @netlbl_skbuff_getattr(%struct.sk_buff*, i32, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @selinux_netlbl_sidlookup_cached(%struct.sk_buff*, %struct.netlbl_lsm_secattr*, i32*) #1

declare dso_local i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
