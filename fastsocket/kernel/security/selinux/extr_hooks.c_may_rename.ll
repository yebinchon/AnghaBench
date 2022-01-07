; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_may_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_may_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.inode_security_struct* }
%struct.inode_security_struct = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.inode_security_struct* }
%struct.common_audit_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dentry* }

@FS = common dso_local global i32 0, align 4
@SECCLASS_DIR = common dso_local global i32 0, align 4
@DIR__REMOVE_NAME = common dso_local global i32 0, align 4
@DIR__SEARCH = common dso_local global i32 0, align 4
@FILE__RENAME = common dso_local global i32 0, align 4
@DIR__REPARENT = common dso_local global i32 0, align 4
@DIR__ADD_NAME = common dso_local global i32 0, align 4
@DIR__RMDIR = common dso_local global i32 0, align 4
@FILE__UNLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @may_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode_security_struct*, align 8
  %11 = alloca %struct.inode_security_struct*, align 8
  %12 = alloca %struct.inode_security_struct*, align 8
  %13 = alloca %struct.inode_security_struct*, align 8
  %14 = alloca %struct.common_audit_data, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %20 = call i32 (...) @current_sid()
  store i32 %20, i32* %15, align 4
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load %struct.inode_security_struct*, %struct.inode_security_struct** %22, align 8
  store %struct.inode_security_struct* %23, %struct.inode_security_struct** %10, align 8
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load %struct.inode_security_struct*, %struct.inode_security_struct** %27, align 8
  store %struct.inode_security_struct* %28, %struct.inode_security_struct** %12, align 8
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @S_ISDIR(i32 %33)
  store i32 %34, i32* %17, align 4
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load %struct.inode_security_struct*, %struct.inode_security_struct** %36, align 8
  store %struct.inode_security_struct* %37, %struct.inode_security_struct** %11, align 8
  %38 = load i32, i32* @FS, align 4
  %39 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %14, i32 %38)
  %40 = load %struct.dentry*, %struct.dentry** %7, align 8
  %41 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %14, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store %struct.dentry* %40, %struct.dentry** %44, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %47 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SECCLASS_DIR, align 4
  %50 = load i32, i32* @DIR__REMOVE_NAME, align 4
  %51 = load i32, i32* @DIR__SEARCH, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @avc_has_perm(i32 %45, i32 %48, i32 %49, i32 %52, %struct.common_audit_data* %14)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %4
  %57 = load i32, i32* %19, align 4
  store i32 %57, i32* %5, align 4
  br label %162

58:                                               ; preds = %4
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.inode_security_struct*, %struct.inode_security_struct** %12, align 8
  %61 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.inode_security_struct*, %struct.inode_security_struct** %12, align 8
  %64 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FILE__RENAME, align 4
  %67 = call i32 @avc_has_perm(i32 %59, i32 %62, i32 %65, i32 %66, %struct.common_audit_data* %14)
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* %19, align 4
  store i32 %71, i32* %5, align 4
  br label %162

72:                                               ; preds = %58
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = icmp ne %struct.inode* %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load i32, i32* %15, align 4
  %81 = load %struct.inode_security_struct*, %struct.inode_security_struct** %12, align 8
  %82 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.inode_security_struct*, %struct.inode_security_struct** %12, align 8
  %85 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DIR__REPARENT, align 4
  %88 = call i32 @avc_has_perm(i32 %80, i32 %83, i32 %86, i32 %87, %struct.common_audit_data* %14)
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i32, i32* %19, align 4
  store i32 %92, i32* %5, align 4
  br label %162

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %75, %72
  %95 = load %struct.dentry*, %struct.dentry** %9, align 8
  %96 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %14, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store %struct.dentry* %95, %struct.dentry** %99, align 8
  %100 = load i32, i32* @DIR__ADD_NAME, align 4
  %101 = load i32, i32* @DIR__SEARCH, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %16, align 4
  %103 = load %struct.dentry*, %struct.dentry** %9, align 8
  %104 = getelementptr inbounds %struct.dentry, %struct.dentry* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = icmp ne %struct.TYPE_8__* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %94
  %108 = load i32, i32* @DIR__REMOVE_NAME, align 4
  %109 = load i32, i32* %16, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %107, %94
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.inode_security_struct*, %struct.inode_security_struct** %11, align 8
  %114 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SECCLASS_DIR, align 4
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @avc_has_perm(i32 %112, i32 %115, i32 %116, i32 %117, %struct.common_audit_data* %14)
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %19, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = load i32, i32* %19, align 4
  store i32 %122, i32* %5, align 4
  br label %162

123:                                              ; preds = %111
  %124 = load %struct.dentry*, %struct.dentry** %9, align 8
  %125 = getelementptr inbounds %struct.dentry, %struct.dentry* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = icmp ne %struct.TYPE_8__* %126, null
  br i1 %127, label %128, label %161

128:                                              ; preds = %123
  %129 = load %struct.dentry*, %struct.dentry** %9, align 8
  %130 = getelementptr inbounds %struct.dentry, %struct.dentry* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load %struct.inode_security_struct*, %struct.inode_security_struct** %132, align 8
  store %struct.inode_security_struct* %133, %struct.inode_security_struct** %13, align 8
  %134 = load %struct.dentry*, %struct.dentry** %9, align 8
  %135 = getelementptr inbounds %struct.dentry, %struct.dentry* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @S_ISDIR(i32 %138)
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %142 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %145 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %18, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %128
  %150 = load i32, i32* @DIR__RMDIR, align 4
  br label %153

151:                                              ; preds = %128
  %152 = load i32, i32* @FILE__UNLINK, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  %155 = call i32 @avc_has_perm(i32 %140, i32 %143, i32 %146, i32 %154, %struct.common_audit_data* %14)
  store i32 %155, i32* %19, align 4
  %156 = load i32, i32* %19, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %19, align 4
  store i32 %159, i32* %5, align 4
  br label %162

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %123
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %158, %121, %91, %70, %56
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @current_sid(...) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
