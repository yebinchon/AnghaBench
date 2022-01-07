; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_may_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_may_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__*, %struct.inode_security_struct* }
%struct.TYPE_5__ = type { %struct.superblock_security_struct* }
%struct.superblock_security_struct = type { i32, i32 }
%struct.inode_security_struct = type { i32 }
%struct.dentry = type { i32 }
%struct.cred = type { %struct.task_security_struct* }
%struct.task_security_struct = type { i32, i32 }
%struct.common_audit_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.dentry* }

@FS = common dso_local global i32 0, align 4
@SECCLASS_DIR = common dso_local global i32 0, align 4
@DIR__ADD_NAME = common dso_local global i32 0, align 4
@DIR__SEARCH = common dso_local global i32 0, align 4
@SE_SBLABELSUPP = common dso_local global i32 0, align 4
@FILE__CREATE = common dso_local global i32 0, align 4
@SECCLASS_FILESYSTEM = common dso_local global i32 0, align 4
@FILESYSTEM__ASSOCIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @may_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_create(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cred*, align 8
  %9 = alloca %struct.task_security_struct*, align 8
  %10 = alloca %struct.inode_security_struct*, align 8
  %11 = alloca %struct.superblock_security_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.common_audit_data, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %16, %struct.cred** %8, align 8
  %17 = load %struct.cred*, %struct.cred** %8, align 8
  %18 = getelementptr inbounds %struct.cred, %struct.cred* %17, i32 0, i32 0
  %19 = load %struct.task_security_struct*, %struct.task_security_struct** %18, align 8
  store %struct.task_security_struct* %19, %struct.task_security_struct** %9, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load %struct.inode_security_struct*, %struct.inode_security_struct** %21, align 8
  store %struct.inode_security_struct* %22, %struct.inode_security_struct** %10, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %26, align 8
  store %struct.superblock_security_struct* %27, %struct.superblock_security_struct** %11, align 8
  %28 = load %struct.task_security_struct*, %struct.task_security_struct** %9, align 8
  %29 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.task_security_struct*, %struct.task_security_struct** %9, align 8
  %32 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* @FS, align 4
  %35 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %14, i32 %34)
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %14, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store %struct.dentry* %36, %struct.dentry** %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %43 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SECCLASS_DIR, align 4
  %46 = load i32, i32* @DIR__ADD_NAME, align 4
  %47 = load i32, i32* @DIR__SEARCH, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @avc_has_perm(i32 %41, i32 %44, i32 %45, i32 %48, %struct.common_audit_data* %14)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %3
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %4, align 4
  br label %94

54:                                               ; preds = %3
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %11, align 8
  %59 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SE_SBLABELSUPP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %57, %54
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %67 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @security_transition_sid(i32 %65, i32 %68, i32 %69, i32* %13)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %4, align 4
  br label %94

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %57
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @FILE__CREATE, align 4
  %81 = call i32 @avc_has_perm(i32 %77, i32 %78, i32 %79, i32 %80, %struct.common_audit_data* %14)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %4, align 4
  br label %94

86:                                               ; preds = %76
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %11, align 8
  %89 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SECCLASS_FILESYSTEM, align 4
  %92 = load i32, i32* @FILESYSTEM__ASSOCIATE, align 4
  %93 = call i32 @avc_has_perm(i32 %87, i32 %90, i32 %91, i32 %92, %struct.common_audit_data* %14)
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %86, %84, %73, %52
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

declare dso_local i32 @security_transition_sid(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
