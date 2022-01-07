; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_dentry_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_dentry_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.file_security_struct*, %struct.TYPE_4__ }
%struct.file_security_struct = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.inode_security_struct* }
%struct.inode_security_struct = type { i32 }
%struct.cred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.cred*)* @selinux_dentry_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_dentry_open(%struct.file* %0, %struct.cred* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.file_security_struct*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode_security_struct*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.cred* %1, %struct.cred** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.file_security_struct*, %struct.file_security_struct** %15, align 8
  store %struct.file_security_struct* %16, %struct.file_security_struct** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.inode_security_struct*, %struct.inode_security_struct** %18, align 8
  store %struct.inode_security_struct* %19, %struct.inode_security_struct** %7, align 8
  %20 = load %struct.inode_security_struct*, %struct.inode_security_struct** %7, align 8
  %21 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.file_security_struct*, %struct.file_security_struct** %5, align 8
  %24 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = call i32 (...) @avc_policy_seqno()
  %26 = load %struct.file_security_struct*, %struct.file_security_struct** %5, align 8
  %27 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.cred*, %struct.cred** %4, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = call i32 @open_file_to_av(%struct.file* %30)
  %32 = call i32 @inode_has_perm(%struct.cred* %28, %struct.inode* %29, i32 %31, i32* null)
  ret i32 %32
}

declare dso_local i32 @avc_policy_seqno(...) #1

declare dso_local i32 @inode_has_perm(%struct.cred*, %struct.inode*, i32, i32*) #1

declare dso_local i32 @open_file_to_av(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
