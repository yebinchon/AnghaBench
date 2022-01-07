; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_reflink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_reflink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.inode* }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @ocfs2_reflink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reflink(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  store %struct.inode* null, %struct.inode** %13, align 8
  %17 = load %struct.inode*, %struct.inode** %11, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @OCFS2_SB(i32 %19)
  %21 = call i32 @ocfs2_refcount_tree(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %118

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = load %struct.inode*, %struct.inode** %11, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ocfs2_create_inode_in_orphan(%struct.inode* %27, i32 %30, %struct.inode** %13)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %90

37:                                               ; preds = %26
  %38 = load %struct.inode*, %struct.inode** %11, align 8
  %39 = call i32 @ocfs2_inode_lock(%struct.inode* %38, %struct.buffer_head** %12, i32 1)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %90

45:                                               ; preds = %37
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  %47 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @down_write(i32* %48)
  %50 = load %struct.inode*, %struct.inode** %11, align 8
  %51 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = call i32 @down_write(i32* %52)
  %54 = load %struct.dentry*, %struct.dentry** %6, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %56 = load %struct.inode*, %struct.inode** %13, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @__ocfs2_reflink(%struct.dentry* %54, %struct.buffer_head* %55, %struct.inode* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.inode*, %struct.inode** %11, align 8
  %60 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = call i32 @up_write(i32* %61)
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @up_write(i32* %65)
  %67 = load %struct.inode*, %struct.inode** %11, align 8
  %68 = call i32 @ocfs2_inode_unlock(%struct.inode* %67, i32 1)
  %69 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %70 = call i32 @brelse(%struct.buffer_head* %69)
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %45
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %90

76:                                               ; preds = %45
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = load %struct.inode*, %struct.inode** %13, align 8
  %82 = call i32 @ocfs2_init_security_and_acl(%struct.inode* %80, %struct.inode* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @mlog_errno(i32 %86)
  br label %88

88:                                               ; preds = %85, %79
  br label %89

89:                                               ; preds = %88, %76
  br label %90

90:                                               ; preds = %89, %73, %42, %34
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %90
  %94 = load %struct.inode*, %struct.inode** %7, align 8
  %95 = load %struct.inode*, %struct.inode** %13, align 8
  %96 = load %struct.dentry*, %struct.dentry** %8, align 8
  %97 = call i32 @ocfs2_mv_orphaned_inode_to_new(%struct.inode* %94, %struct.inode* %95, %struct.dentry* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @mlog_errno(i32 %101)
  br label %103

103:                                              ; preds = %100, %93
  br label %104

104:                                              ; preds = %103, %90
  %105 = load %struct.inode*, %struct.inode** %13, align 8
  %106 = icmp ne %struct.inode* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load %struct.inode*, %struct.inode** %13, align 8
  %109 = call i32 @ocfs2_open_unlock(%struct.inode* %108)
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.inode*, %struct.inode** %13, align 8
  %114 = call i32 @iput(%struct.inode* %113)
  br label %115

115:                                              ; preds = %112, %107
  br label %116

116:                                              ; preds = %115, %104
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %23
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @ocfs2_refcount_tree(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_create_inode_in_orphan(%struct.inode*, i32, %struct.inode**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @__ocfs2_reflink(%struct.dentry*, %struct.buffer_head*, %struct.inode*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_init_security_and_acl(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ocfs2_mv_orphaned_inode_to_new(%struct.inode*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @ocfs2_open_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
