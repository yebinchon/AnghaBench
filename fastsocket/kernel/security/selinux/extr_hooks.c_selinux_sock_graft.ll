; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_sock_graft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_sock_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32, i32 }
%struct.socket = type { i32 }
%struct.inode_security_struct = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.inode_security_struct* }

@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@PF_UNIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.socket*)* @selinux_sock_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selinux_sock_graft(%struct.sock* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.inode_security_struct*, align 8
  %6 = alloca %struct.sk_security_struct*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %7 = load %struct.socket*, %struct.socket** %4, align 8
  %8 = call %struct.TYPE_2__* @SOCK_INODE(%struct.socket* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.inode_security_struct*, %struct.inode_security_struct** %9, align 8
  store %struct.inode_security_struct* %10, %struct.inode_security_struct** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 1
  %13 = load %struct.sk_security_struct*, %struct.sk_security_struct** %12, align 8
  store %struct.sk_security_struct* %13, %struct.sk_security_struct** %6, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PF_INET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %2
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PF_INET6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PF_UNIX, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %19, %2
  %32 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %33 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode_security_struct*, %struct.inode_security_struct** %5, align 8
  %36 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.inode_security_struct*, %struct.inode_security_struct** %5, align 8
  %39 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %42 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local %struct.TYPE_2__* @SOCK_INODE(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
