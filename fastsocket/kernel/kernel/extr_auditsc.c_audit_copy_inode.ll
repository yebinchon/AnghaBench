; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_copy_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_copy_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_names = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_names*, %struct.dentry*, %struct.inode*)* @audit_copy_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_copy_inode(%struct.audit_names* %0, %struct.dentry* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.audit_names*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.audit_names* %0, %struct.audit_names** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %7 = load %struct.inode*, %struct.inode** %6, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %11 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 4
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %18 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %23 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %28 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %33 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %38 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %41 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %40, i32 0, i32 0
  %42 = call i32 @security_inode_getsecid(%struct.inode* %39, i32* %41)
  %43 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  %45 = call i32 @audit_copy_fcaps(%struct.audit_names* %43, %struct.dentry* %44)
  ret void
}

declare dso_local i32 @security_inode_getsecid(%struct.inode*, i32*) #1

declare dso_local i32 @audit_copy_fcaps(%struct.audit_names*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
