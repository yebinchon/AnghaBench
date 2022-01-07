; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_unix_may_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_unix_may_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inode_security_struct = type { i32, i32 }
%struct.common_audit_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.inode_security_struct* }

@NET = common dso_local global i32 0, align 4
@SOCKET__SENDTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*)* @selinux_socket_unix_may_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_unix_may_send(%struct.socket* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.inode_security_struct*, align 8
  %7 = alloca %struct.inode_security_struct*, align 8
  %8 = alloca %struct.common_audit_data, align 4
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = call %struct.TYPE_6__* @SOCK_INODE(%struct.socket* %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.inode_security_struct*, %struct.inode_security_struct** %12, align 8
  store %struct.inode_security_struct* %13, %struct.inode_security_struct** %6, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = call %struct.TYPE_6__* @SOCK_INODE(%struct.socket* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.inode_security_struct*, %struct.inode_security_struct** %16, align 8
  store %struct.inode_security_struct* %17, %struct.inode_security_struct** %7, align 8
  %18 = load i32, i32* @NET, align 4
  %19 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %8, i32 %18)
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %8, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.inode_security_struct*, %struct.inode_security_struct** %6, align 8
  %27 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %30 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inode_security_struct*, %struct.inode_security_struct** %6, align 8
  %33 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SOCKET__SENDTO, align 4
  %36 = call i32 @avc_has_perm(i32 %28, i32 %31, i32 %34, i32 %35, %struct.common_audit_data* %8)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_6__* @SOCK_INODE(%struct.socket*) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
