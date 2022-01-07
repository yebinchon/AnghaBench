; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlabel.c_selinux_netlbl_sock_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlabel.c_selinux_netlbl_sock_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_security_struct = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.netlbl_lsm_secattr = type { i64 }

@NETLBL_SECATTR_NONE = common dso_local global i64 0, align 8
@SECINITSID_UNLABELED = common dso_local global i64 0, align 8
@UDP_SOCKET__RECVFROM = common dso_local global i64 0, align 8
@TCP_SOCKET__RECVFROM = common dso_local global i64 0, align 8
@RAWIP_SOCKET__RECVFROM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_netlbl_sock_rcv_skb(%struct.sk_security_struct* %0, %struct.sk_buff* %1, i32 %2, %struct.common_audit_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_security_struct*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.common_audit_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.netlbl_lsm_secattr, align 8
  store %struct.sk_security_struct* %0, %struct.sk_security_struct** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.common_audit_data* %3, %struct.common_audit_data** %9, align 8
  %14 = call i32 (...) @netlbl_enabled()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %74

17:                                               ; preds = %4
  %18 = call i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr* %13)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @netlbl_skbuff_getattr(%struct.sk_buff* %19, i32 %20, %struct.netlbl_lsm_secattr* %13)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %13, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NETLBL_SECATTR_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call i32 @selinux_netlbl_sidlookup_cached(%struct.sk_buff* %30, %struct.netlbl_lsm_secattr* %13, i64* %11)
  store i32 %31, i32* %10, align 4
  br label %34

32:                                               ; preds = %24, %17
  %33 = load i64, i64* @SECINITSID_UNLABELED, align 8
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = call i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr* %13)
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %74

40:                                               ; preds = %34
  %41 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %42 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %48 [
    i32 128, label %44
    i32 129, label %46
  ]

44:                                               ; preds = %40
  %45 = load i64, i64* @UDP_SOCKET__RECVFROM, align 8
  store i64 %45, i64* %12, align 8
  br label %50

46:                                               ; preds = %40
  %47 = load i64, i64* @TCP_SOCKET__RECVFROM, align 8
  store i64 %47, i64* %12, align 8
  br label %50

48:                                               ; preds = %40
  %49 = load i64, i64* @RAWIP_SOCKET__RECVFROM, align 8
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %48, %46, %44
  %51 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %52 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %56 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %60 = call i32 @avc_has_perm(i32 %53, i64 %54, i32 %57, i64 %58, %struct.common_audit_data* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %74

64:                                               ; preds = %50
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @SECINITSID_UNLABELED, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @netlbl_skbuff_err(%struct.sk_buff* %69, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %63, %38, %16
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @netlbl_enabled(...) #1

declare dso_local i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @netlbl_skbuff_getattr(%struct.sk_buff*, i32, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @selinux_netlbl_sidlookup_cached(%struct.sk_buff*, %struct.netlbl_lsm_secattr*, i64*) #1

declare dso_local i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @avc_has_perm(i32, i64, i32, i64, %struct.common_audit_data*) #1

declare dso_local i32 @netlbl_skbuff_err(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
