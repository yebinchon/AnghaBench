; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlabel.c_selinux_netlbl_socket_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlabel.c_selinux_netlbl_socket_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i64 }
%struct.sockaddr = type { i64 }
%struct.netlbl_lsm_secattr = type { i32 }

@NLBL_REQSKB = common dso_local global i64 0, align 8
@NLBL_CONNLABELED = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_netlbl_socket_connect(%struct.sock* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_security_struct*, align 8
  %8 = alloca %struct.netlbl_lsm_secattr*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load %struct.sk_security_struct*, %struct.sk_security_struct** %10, align 8
  store %struct.sk_security_struct* %11, %struct.sk_security_struct** %7, align 8
  %12 = load %struct.sk_security_struct*, %struct.sk_security_struct** %7, align 8
  %13 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NLBL_REQSKB, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.sk_security_struct*, %struct.sk_security_struct** %7, align 8
  %19 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NLBL_CONNLABELED, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %64

24:                                               ; preds = %17, %2
  %25 = call i32 (...) @local_bh_disable()
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = call i32 @bh_lock_sock_nested(%struct.sock* %26)
  %28 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %29 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_UNSPEC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = call i32 @netlbl_sock_delattr(%struct.sock* %34)
  %36 = load i64, i64* @NLBL_REQSKB, align 8
  %37 = load %struct.sk_security_struct*, %struct.sk_security_struct** %7, align 8
  %38 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  store i32 0, i32* %6, align 4
  br label %59

39:                                               ; preds = %24
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call %struct.netlbl_lsm_secattr* @selinux_netlbl_sock_genattr(%struct.sock* %40)
  store %struct.netlbl_lsm_secattr* %41, %struct.netlbl_lsm_secattr** %8, align 8
  %42 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %8, align 8
  %43 = icmp eq %struct.netlbl_lsm_secattr* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %59

47:                                               ; preds = %39
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %50 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %8, align 8
  %51 = call i32 @netlbl_conn_setattr(%struct.sock* %48, %struct.sockaddr* %49, %struct.netlbl_lsm_secattr* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i64, i64* @NLBL_CONNLABELED, align 8
  %56 = load %struct.sk_security_struct*, %struct.sk_security_struct** %7, align 8
  %57 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %47
  br label %59

59:                                               ; preds = %58, %44, %33
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = call i32 @bh_unlock_sock(%struct.sock* %60)
  %62 = call i32 (...) @local_bh_enable()
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %23
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @bh_lock_sock_nested(%struct.sock*) #1

declare dso_local i32 @netlbl_sock_delattr(%struct.sock*) #1

declare dso_local %struct.netlbl_lsm_secattr* @selinux_netlbl_sock_genattr(%struct.sock*) #1

declare dso_local i32 @netlbl_conn_setattr(%struct.sock*, %struct.sockaddr*, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
