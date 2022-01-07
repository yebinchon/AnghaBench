; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlabel.c_selinux_netlbl_skbuff_setsid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlabel.c_selinux_netlbl_skbuff_setsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i64, %struct.netlbl_lsm_secattr* }
%struct.netlbl_lsm_secattr = type { i32 }

@NLBL_REQSKB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_netlbl_skbuff_setsid(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlbl_lsm_secattr, align 4
  %10 = alloca %struct.netlbl_lsm_secattr*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.sk_security_struct*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.netlbl_lsm_secattr* null, %struct.netlbl_lsm_secattr** %10, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %11, align 8
  %16 = load %struct.sock*, %struct.sock** %11, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  %19 = load %struct.sock*, %struct.sock** %11, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load %struct.sk_security_struct*, %struct.sk_security_struct** %20, align 8
  store %struct.sk_security_struct* %21, %struct.sk_security_struct** %12, align 8
  %22 = load %struct.sk_security_struct*, %struct.sk_security_struct** %12, align 8
  %23 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NLBL_REQSKB, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %58

28:                                               ; preds = %18
  %29 = load %struct.sk_security_struct*, %struct.sk_security_struct** %12, align 8
  %30 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %29, i32 0, i32 1
  %31 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %30, align 8
  store %struct.netlbl_lsm_secattr* %31, %struct.netlbl_lsm_secattr** %10, align 8
  br label %32

32:                                               ; preds = %28, %3
  %33 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %10, align 8
  %34 = icmp eq %struct.netlbl_lsm_secattr* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  store %struct.netlbl_lsm_secattr* %9, %struct.netlbl_lsm_secattr** %10, align 8
  %36 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %10, align 8
  %37 = call i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %10, align 8
  %40 = call i32 @security_netlbl_sid_to_secattr(i32 %38, %struct.netlbl_lsm_secattr* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %50

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %32
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %10, align 8
  %49 = call i32 @netlbl_skbuff_setattr(%struct.sk_buff* %46, i32 %47, %struct.netlbl_lsm_secattr* %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %45, %43
  %51 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %10, align 8
  %52 = icmp eq %struct.netlbl_lsm_secattr* %51, %9
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %10, align 8
  %55 = call i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %27
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @security_netlbl_sid_to_secattr(i32, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @netlbl_skbuff_setattr(%struct.sk_buff*, i32, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
