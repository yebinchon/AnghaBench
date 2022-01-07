; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_namespaces.c_proc_ns_get_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_namespaces.c_proc_ns_get_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8* }
%struct.dentry = type { i32* }
%struct.super_block = type { i32 }
%struct.task_struct = type { i32 }
%struct.proc_ns_operations = type { i32 (i8*)*, i32 (i8*)*, i8* (%struct.task_struct*)* }
%struct.inode = type { i32, i32, i32*, i32*, i32, i32, i32 }
%struct.proc_inode = type { i8*, %struct.proc_ns_operations* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.proc_ns_get_dentry.qname = private unnamed_addr constant %struct.qstr { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }, align 8
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@ns_inode_operations = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@ns_file_operations = common dso_local global i32 0, align 4
@ns_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.task_struct*, %struct.proc_ns_operations*)* @proc_ns_get_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_ns_get_dentry(%struct.super_block* %0, %struct.task_struct* %1, %struct.proc_ns_operations* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.proc_ns_operations*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.proc_inode*, align 8
  %12 = alloca %struct.qstr, align 8
  %13 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.proc_ns_operations* %2, %struct.proc_ns_operations** %7, align 8
  %14 = bitcast %struct.qstr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.qstr* @__const.proc_ns_get_dentry.qname to i8*), i64 8, i1 false)
  %15 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %7, align 8
  %16 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %15, i32 0, i32 2
  %17 = load i8* (%struct.task_struct*)*, i8* (%struct.task_struct*)** %16, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %19 = call i8* %17(%struct.task_struct* %18)
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.dentry* @ERR_PTR(i32 %24)
  store %struct.dentry* %25, %struct.dentry** %4, align 8
  br label %115

26:                                               ; preds = %3
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = call %struct.dentry* @d_alloc_pseudo(%struct.super_block* %27, %struct.qstr* %12)
  store %struct.dentry* %28, %struct.dentry** %8, align 8
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = icmp ne %struct.dentry* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %7, align 8
  %33 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %32, i32 0, i32 0
  %34 = load i32 (i8*)*, i32 (i8*)** %33, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 %34(i8* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.dentry* @ERR_PTR(i32 %38)
  store %struct.dentry* %39, %struct.dentry** %4, align 8
  br label %115

40:                                               ; preds = %26
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %7, align 8
  %43 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %42, i32 0, i32 1
  %44 = load i32 (i8*)*, i32 (i8*)** %43, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 %44(i8* %45)
  %47 = call %struct.inode* @iget_locked(%struct.super_block* %41, i32 %46)
  store %struct.inode* %47, %struct.inode** %10, align 8
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = icmp ne %struct.inode* %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %40
  %51 = load %struct.dentry*, %struct.dentry** %8, align 8
  %52 = call i32 @dput(%struct.dentry* %51)
  %53 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %7, align 8
  %54 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %53, i32 0, i32 0
  %55 = load i32 (i8*)*, i32 (i8*)** %54, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 %55(i8* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.dentry* @ERR_PTR(i32 %59)
  store %struct.dentry* %60, %struct.dentry** %4, align 8
  br label %115

61:                                               ; preds = %40
  %62 = load %struct.inode*, %struct.inode** %10, align 8
  %63 = call %struct.proc_inode* @PROC_I(%struct.inode* %62)
  store %struct.proc_inode* %63, %struct.proc_inode** %11, align 8
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @I_NEW, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %61
  %71 = load i32, i32* @CURRENT_TIME, align 4
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 5
  store i32 %71, i32* %75, align 4
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 6
  store i32 %71, i32* %77, align 8
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 3
  store i32* @ns_inode_operations, i32** %79, align 8
  %80 = load i32, i32* @S_IFREG, align 4
  %81 = load i32, i32* @S_IRUGO, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.inode*, %struct.inode** %10, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 2
  store i32* @ns_file_operations, i32** %86, align 8
  %87 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %7, align 8
  %88 = load %struct.proc_inode*, %struct.proc_inode** %11, align 8
  %89 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %88, i32 0, i32 1
  store %struct.proc_ns_operations* %87, %struct.proc_ns_operations** %89, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = load %struct.proc_inode*, %struct.proc_inode** %11, align 8
  %92 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load %struct.inode*, %struct.inode** %10, align 8
  %94 = call i32 @unlock_new_inode(%struct.inode* %93)
  br label %101

95:                                               ; preds = %61
  %96 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %7, align 8
  %97 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %96, i32 0, i32 0
  %98 = load i32 (i8*)*, i32 (i8*)** %97, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 %98(i8* %99)
  br label %101

101:                                              ; preds = %95, %70
  %102 = load %struct.dentry*, %struct.dentry** %8, align 8
  %103 = getelementptr inbounds %struct.dentry, %struct.dentry* %102, i32 0, i32 0
  store i32* @ns_dentry_operations, i32** %103, align 8
  %104 = load %struct.dentry*, %struct.dentry** %8, align 8
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = call %struct.dentry* @d_instantiate_unique(%struct.dentry* %104, %struct.inode* %105)
  store %struct.dentry* %106, %struct.dentry** %9, align 8
  %107 = load %struct.dentry*, %struct.dentry** %9, align 8
  %108 = icmp ne %struct.dentry* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load %struct.dentry*, %struct.dentry** %8, align 8
  %111 = call i32 @dput(%struct.dentry* %110)
  %112 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %112, %struct.dentry** %8, align 8
  br label %113

113:                                              ; preds = %109, %101
  %114 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %114, %struct.dentry** %4, align 8
  br label %115

115:                                              ; preds = %113, %50, %31, %22
  %116 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #2

declare dso_local %struct.dentry* @d_alloc_pseudo(%struct.super_block*, %struct.qstr*) #2

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i32) #2

declare dso_local i32 @dput(%struct.dentry*) #2

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #2

declare dso_local i32 @unlock_new_inode(%struct.inode*) #2

declare dso_local %struct.dentry* @d_instantiate_unique(%struct.dentry*, %struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
