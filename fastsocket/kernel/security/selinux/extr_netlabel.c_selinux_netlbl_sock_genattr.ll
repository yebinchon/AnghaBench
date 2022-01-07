; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlabel.c_selinux_netlbl_sock_genattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlabel.c_selinux_netlbl_sock_genattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_secattr = type { i32 }
%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { %struct.netlbl_lsm_secattr*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netlbl_lsm_secattr* (%struct.sock*)* @selinux_netlbl_sock_genattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netlbl_lsm_secattr* @selinux_netlbl_sock_genattr(%struct.sock* %0) #0 {
  %2 = alloca %struct.netlbl_lsm_secattr*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_security_struct*, align 8
  %6 = alloca %struct.netlbl_lsm_secattr*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  store %struct.sk_security_struct* %9, %struct.sk_security_struct** %5, align 8
  %10 = load %struct.sk_security_struct*, %struct.sk_security_struct** %5, align 8
  %11 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %10, i32 0, i32 0
  %12 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %11, align 8
  %13 = icmp ne %struct.netlbl_lsm_secattr* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.sk_security_struct*, %struct.sk_security_struct** %5, align 8
  %16 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %15, i32 0, i32 0
  %17 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %16, align 8
  store %struct.netlbl_lsm_secattr* %17, %struct.netlbl_lsm_secattr** %2, align 8
  br label %40

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.netlbl_lsm_secattr* @netlbl_secattr_alloc(i32 %19)
  store %struct.netlbl_lsm_secattr* %20, %struct.netlbl_lsm_secattr** %6, align 8
  %21 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %6, align 8
  %22 = icmp eq %struct.netlbl_lsm_secattr* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.netlbl_lsm_secattr* null, %struct.netlbl_lsm_secattr** %2, align 8
  br label %40

24:                                               ; preds = %18
  %25 = load %struct.sk_security_struct*, %struct.sk_security_struct** %5, align 8
  %26 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %6, align 8
  %29 = call i32 @security_netlbl_sid_to_secattr(i32 %27, %struct.netlbl_lsm_secattr* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %6, align 8
  %34 = call i32 @netlbl_secattr_free(%struct.netlbl_lsm_secattr* %33)
  store %struct.netlbl_lsm_secattr* null, %struct.netlbl_lsm_secattr** %2, align 8
  br label %40

35:                                               ; preds = %24
  %36 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %6, align 8
  %37 = load %struct.sk_security_struct*, %struct.sk_security_struct** %5, align 8
  %38 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %37, i32 0, i32 0
  store %struct.netlbl_lsm_secattr* %36, %struct.netlbl_lsm_secattr** %38, align 8
  %39 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %6, align 8
  store %struct.netlbl_lsm_secattr* %39, %struct.netlbl_lsm_secattr** %2, align 8
  br label %40

40:                                               ; preds = %35, %32, %23, %14
  %41 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %2, align 8
  ret %struct.netlbl_lsm_secattr* %41
}

declare dso_local %struct.netlbl_lsm_secattr* @netlbl_secattr_alloc(i32) #1

declare dso_local i32 @security_netlbl_sid_to_secattr(i32, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @netlbl_secattr_free(%struct.netlbl_lsm_secattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
