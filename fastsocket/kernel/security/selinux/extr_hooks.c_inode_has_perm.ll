; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_inode_has_perm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_inode_has_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.inode = type { %struct.inode_security_struct* }
%struct.inode_security_struct = type { i32, i32 }
%struct.common_audit_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.inode* }

@FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.inode*, i32, %struct.common_audit_data*)* @inode_has_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inode_has_perm(%struct.cred* %0, %struct.inode* %1, i32 %2, %struct.common_audit_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.common_audit_data*, align 8
  %10 = alloca %struct.inode_security_struct*, align 8
  %11 = alloca %struct.common_audit_data, align 8
  %12 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.common_audit_data* %3, %struct.common_audit_data** %9, align 8
  %13 = load %struct.cred*, %struct.cred** %6, align 8
  %14 = call i32 @validate_creds(%struct.cred* %13)
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call i32 @IS_PRIVATE(%struct.inode* %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %46

20:                                               ; preds = %4
  %21 = load %struct.cred*, %struct.cred** %6, align 8
  %22 = call i32 @cred_sid(%struct.cred* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load %struct.inode_security_struct*, %struct.inode_security_struct** %24, align 8
  store %struct.inode_security_struct* %25, %struct.inode_security_struct** %10, align 8
  %26 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %27 = icmp ne %struct.common_audit_data* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  store %struct.common_audit_data* %11, %struct.common_audit_data** %9, align 8
  %29 = load i32, i32* @FS, align 4
  %30 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %11, i32 %29)
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.inode* %31, %struct.inode** %34, align 8
  br label %35

35:                                               ; preds = %28, %20
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %38 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %41 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %45 = call i32 @avc_has_perm(i32 %36, i32 %39, i32 %42, i32 %43, %struct.common_audit_data* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %35, %19
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @validate_creds(%struct.cred*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_PRIVATE(%struct.inode*) #1

declare dso_local i32 @cred_sid(%struct.cred*) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
