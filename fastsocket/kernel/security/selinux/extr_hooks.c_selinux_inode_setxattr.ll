; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_inode_setxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_inode_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_5__*, %struct.inode_security_struct* }
%struct.TYPE_5__ = type { %struct.superblock_security_struct* }
%struct.superblock_security_struct = type { i32, i32 }
%struct.inode_security_struct = type { i32, i32 }
%struct.common_audit_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.dentry* }

@XATTR_NAME_SELINUX = common dso_local global i32 0, align 4
@SE_SBLABELSUPP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@FS = common dso_local global i32 0, align 4
@FILE__RELABELFROM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_MAC_ADMIN = common dso_local global i32 0, align 4
@FILE__RELABELTO = common dso_local global i32 0, align 4
@SECCLASS_FILESYSTEM = common dso_local global i32 0, align 4
@FILESYSTEM__ASSOCIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, i8*, i64, i32)* @selinux_inode_setxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_inode_setxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode_security_struct*, align 8
  %14 = alloca %struct.superblock_security_struct*, align 8
  %15 = alloca %struct.common_audit_data, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %12, align 8
  %22 = load %struct.inode*, %struct.inode** %12, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load %struct.inode_security_struct*, %struct.inode_security_struct** %23, align 8
  store %struct.inode_security_struct* %24, %struct.inode_security_struct** %13, align 8
  %25 = call i32 (...) @current_sid()
  store i32 %25, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @XATTR_NAME_SELINUX, align 4
  %28 = call i64 @strcmp(i8* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load %struct.dentry*, %struct.dentry** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @selinux_inode_setotherxattr(%struct.dentry* %31, i8* %32)
  store i32 %33, i32* %6, align 4
  br label %134

34:                                               ; preds = %5
  %35 = load %struct.inode*, %struct.inode** %12, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %38, align 8
  store %struct.superblock_security_struct* %39, %struct.superblock_security_struct** %14, align 8
  %40 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %14, align 8
  %41 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SE_SBLABELSUPP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %134

49:                                               ; preds = %34
  %50 = load %struct.inode*, %struct.inode** %12, align 8
  %51 = call i32 @is_owner_or_cap(%struct.inode* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %134

56:                                               ; preds = %49
  %57 = load i32, i32* @FS, align 4
  %58 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %15, i32 %57)
  %59 = load %struct.dentry*, %struct.dentry** %7, align 8
  %60 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %15, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store %struct.dentry* %59, %struct.dentry** %63, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %66 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %69 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @FILE__RELABELFROM, align 4
  %72 = call i32 @avc_has_perm(i32 %64, i32 %67, i32 %70, i32 %71, %struct.common_audit_data* %15)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %56
  %76 = load i32, i32* %18, align 4
  store i32 %76, i32* %6, align 4
  br label %134

77:                                               ; preds = %56
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @security_context_to_sid(i8* %78, i64 %79, i32* %16)
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %77
  %86 = load i32, i32* @CAP_MAC_ADMIN, align 4
  %87 = call i32 @capable(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %18, align 4
  store i32 %90, i32* %6, align 4
  br label %134

91:                                               ; preds = %85
  %92 = load i8*, i8** %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @security_context_to_sid_force(i8* %92, i64 %93, i32* %16)
  store i32 %94, i32* %18, align 4
  br label %95

95:                                               ; preds = %91, %77
  %96 = load i32, i32* %18, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* %18, align 4
  store i32 %99, i32* %6, align 4
  br label %134

100:                                              ; preds = %95
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %104 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @FILE__RELABELTO, align 4
  %107 = call i32 @avc_has_perm(i32 %101, i32 %102, i32 %105, i32 %106, %struct.common_audit_data* %15)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i32, i32* %18, align 4
  store i32 %111, i32* %6, align 4
  br label %134

112:                                              ; preds = %100
  %113 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %114 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %119 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @security_validate_transition(i32 %115, i32 %116, i32 %117, i32 %120)
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %112
  %125 = load i32, i32* %18, align 4
  store i32 %125, i32* %6, align 4
  br label %134

126:                                              ; preds = %112
  %127 = load i32, i32* %16, align 4
  %128 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %14, align 8
  %129 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @SECCLASS_FILESYSTEM, align 4
  %132 = load i32, i32* @FILESYSTEM__ASSOCIATE, align 4
  %133 = call i32 @avc_has_perm(i32 %127, i32 %130, i32 %131, i32 %132, %struct.common_audit_data* %15)
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %126, %124, %110, %98, %89, %75, %53, %46, %30
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @current_sid(...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @selinux_inode_setotherxattr(%struct.dentry*, i8*) #1

declare dso_local i32 @is_owner_or_cap(%struct.inode*) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

declare dso_local i32 @security_context_to_sid(i8*, i64, i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @security_context_to_sid_force(i8*, i64, i32*) #1

declare dso_local i32 @security_validate_transition(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
