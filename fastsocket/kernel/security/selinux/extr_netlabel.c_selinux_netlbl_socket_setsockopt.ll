; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlabel.c_selinux_netlbl_socket_setsockopt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlabel.c_selinux_netlbl_socket_setsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i64 }
%struct.netlbl_lsm_secattr = type { i32 }

@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_OPTIONS = common dso_local global i32 0, align 4
@NLBL_LABELED = common dso_local global i64 0, align 8
@NLBL_CONNLABELED = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_netlbl_socket_setsockopt(%struct.socket* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_security_struct*, align 8
  %10 = alloca %struct.netlbl_lsm_secattr, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load %struct.sk_security_struct*, %struct.sk_security_struct** %15, align 8
  store %struct.sk_security_struct* %16, %struct.sk_security_struct** %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IPPROTO_IP, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @IP_OPTIONS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %20
  %25 = load %struct.sk_security_struct*, %struct.sk_security_struct** %9, align 8
  %26 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NLBL_LABELED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.sk_security_struct*, %struct.sk_security_struct** %9, align 8
  %32 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NLBL_CONNLABELED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %30, %24
  %37 = call i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr* %10)
  %38 = load %struct.sock*, %struct.sock** %8, align 8
  %39 = call i32 @lock_sock(%struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %8, align 8
  %41 = call i32 @netlbl_sock_getattr(%struct.sock* %40, %struct.netlbl_lsm_secattr* %10)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.sock*, %struct.sock** %8, align 8
  %43 = call i32 @release_sock(%struct.sock* %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @EACCES, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %56

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ENOMSG, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %49
  br label %56

56:                                               ; preds = %55, %46
  %57 = call i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr* %10)
  br label %58

58:                                               ; preds = %56, %30, %20, %3
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @netlbl_sock_getattr(%struct.sock*, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
