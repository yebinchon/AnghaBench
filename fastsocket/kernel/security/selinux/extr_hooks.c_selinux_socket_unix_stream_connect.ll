; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_unix_stream_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_unix_stream_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32, i32 }
%struct.sock = type { %struct.sk_security_struct* }
%struct.inode_security_struct = type { i32, i32 }
%struct.common_audit_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.inode_security_struct* }

@NET = common dso_local global i32 0, align 4
@UNIX_STREAM_SOCKET__CONNECTTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, %struct.sock*)* @selinux_socket_unix_stream_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_unix_stream_connect(%struct.socket* %0, %struct.socket* %1, %struct.sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_security_struct*, align 8
  %9 = alloca %struct.inode_security_struct*, align 8
  %10 = alloca %struct.inode_security_struct*, align 8
  %11 = alloca %struct.common_audit_data, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.sock* %2, %struct.sock** %7, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = call %struct.TYPE_8__* @SOCK_INODE(%struct.socket* %13)
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.inode_security_struct*, %struct.inode_security_struct** %15, align 8
  store %struct.inode_security_struct* %16, %struct.inode_security_struct** %9, align 8
  %17 = load %struct.socket*, %struct.socket** %6, align 8
  %18 = call %struct.TYPE_8__* @SOCK_INODE(%struct.socket* %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.inode_security_struct*, %struct.inode_security_struct** %19, align 8
  store %struct.inode_security_struct* %20, %struct.inode_security_struct** %10, align 8
  %21 = load i32, i32* @NET, align 4
  %22 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %11, i32 %21)
  %23 = load %struct.socket*, %struct.socket** %6, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %28, align 8
  %29 = load %struct.inode_security_struct*, %struct.inode_security_struct** %9, align 8
  %30 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %33 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode_security_struct*, %struct.inode_security_struct** %9, align 8
  %36 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @UNIX_STREAM_SOCKET__CONNECTTO, align 4
  %39 = call i32 @avc_has_perm(i32 %31, i32 %34, i32 %37, i32 %38, %struct.common_audit_data* %11)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %73

44:                                               ; preds = %3
  %45 = load %struct.socket*, %struct.socket** %5, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.sk_security_struct*, %struct.sk_security_struct** %48, align 8
  store %struct.sk_security_struct* %49, %struct.sk_security_struct** %8, align 8
  %50 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %51 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %54 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.sock*, %struct.sock** %7, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load %struct.sk_security_struct*, %struct.sk_security_struct** %56, align 8
  store %struct.sk_security_struct* %57, %struct.sk_security_struct** %8, align 8
  %58 = load %struct.inode_security_struct*, %struct.inode_security_struct** %9, align 8
  %59 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %62 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %64 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %67 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %70 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %69, i32 0, i32 0
  %71 = call i32 @security_sid_mls_copy(i32 %65, i32 %68, i32* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %44, %42
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_8__* @SOCK_INODE(%struct.socket*) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

declare dso_local i32 @security_sid_mls_copy(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
