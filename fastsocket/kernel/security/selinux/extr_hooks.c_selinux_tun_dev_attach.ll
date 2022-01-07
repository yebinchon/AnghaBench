; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_tun_dev_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_tun_dev_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32 }

@SECCLASS_TUN_SOCKET = common dso_local global i32 0, align 4
@TUN_SOCKET__RELABELFROM = common dso_local global i32 0, align 4
@TUN_SOCKET__RELABELTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @selinux_tun_dev_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_tun_dev_attach(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_security_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  store %struct.sk_security_struct* %9, %struct.sk_security_struct** %4, align 8
  %10 = call i32 (...) @current_sid()
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.sk_security_struct*, %struct.sk_security_struct** %4, align 8
  %13 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SECCLASS_TUN_SOCKET, align 4
  %16 = load i32, i32* @TUN_SOCKET__RELABELFROM, align 4
  %17 = call i32 @avc_has_perm(i32 %11, i32 %14, i32 %15, i32 %16, i32* null)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SECCLASS_TUN_SOCKET, align 4
  %26 = load i32, i32* @TUN_SOCKET__RELABELTO, align 4
  %27 = call i32 @avc_has_perm(i32 %23, i32 %24, i32 %25, i32 %26, i32* null)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.sk_security_struct*, %struct.sk_security_struct** %4, align 8
  %35 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %30, %20
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @current_sid(...) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
