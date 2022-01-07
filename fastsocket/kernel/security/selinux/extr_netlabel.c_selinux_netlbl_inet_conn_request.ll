; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlabel.c_selinux_netlbl_inet_conn_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlabel.c_selinux_netlbl_inet_conn_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32 }
%struct.netlbl_lsm_secattr = type { i32 }

@PF_INET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_netlbl_inet_conn_request(%struct.request_sock* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlbl_lsm_secattr, align 4
  store %struct.request_sock* %0, %struct.request_sock** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @PF_INET, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = call i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr* %7)
  %14 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %15 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @security_netlbl_sid_to_secattr(i32 %16, %struct.netlbl_lsm_secattr* %7)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %24

21:                                               ; preds = %12
  %22 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %23 = call i32 @netlbl_req_setattr(%struct.request_sock* %22, %struct.netlbl_lsm_secattr* %7)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %20
  %25 = call i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr* %7)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @security_netlbl_sid_to_secattr(i32, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @netlbl_req_setattr(%struct.request_sock*, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
