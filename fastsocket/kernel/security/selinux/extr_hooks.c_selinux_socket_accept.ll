; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inode_security_struct = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.inode_security_struct* }

@current = common dso_local global i32 0, align 4
@SOCKET__ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*)* @selinux_socket_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_accept(%struct.socket* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode_security_struct*, align 8
  %8 = alloca %struct.inode_security_struct*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %9 = load i32, i32* @current, align 4
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = load i32, i32* @SOCKET__ACCEPT, align 4
  %12 = call i32 @socket_has_perm(i32 %9, %struct.socket* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.socket*, %struct.socket** %5, align 8
  %19 = call %struct.TYPE_2__* @SOCK_INODE(%struct.socket* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.inode_security_struct*, %struct.inode_security_struct** %20, align 8
  store %struct.inode_security_struct* %21, %struct.inode_security_struct** %8, align 8
  %22 = load %struct.socket*, %struct.socket** %4, align 8
  %23 = call %struct.TYPE_2__* @SOCK_INODE(%struct.socket* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.inode_security_struct*, %struct.inode_security_struct** %24, align 8
  store %struct.inode_security_struct* %25, %struct.inode_security_struct** %7, align 8
  %26 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %27 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inode_security_struct*, %struct.inode_security_struct** %8, align 8
  %30 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %32 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inode_security_struct*, %struct.inode_security_struct** %8, align 8
  %35 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.inode_security_struct*, %struct.inode_security_struct** %8, align 8
  %37 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %17, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @socket_has_perm(i32, %struct.socket*, i32) #1

declare dso_local %struct.TYPE_2__* @SOCK_INODE(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
