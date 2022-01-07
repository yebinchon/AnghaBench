; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c___ocfs2_reflink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c___ocfs2_reflink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.buffer_head = type { i32 }
%struct.inode = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.buffer_head*, %struct.inode*, i32)* @__ocfs2_reflink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_reflink(%struct.dentry* %0, %struct.buffer_head* %1, %struct.inode* %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %10, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @filemap_fdatawrite(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @mlog_errno(i32 %22)
  br label %99

24:                                               ; preds = %4
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %27 = call i32 @ocfs2_attach_refcount_tree(%struct.inode* %25, %struct.buffer_head* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @mlog_errno(i32 %31)
  br label %99

33:                                               ; preds = %24
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call i32 @ocfs2_inode_lock(%struct.inode* %37, %struct.buffer_head** %11, i32 1)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %95

44:                                               ; preds = %33
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ocfs2_create_reflink_node(%struct.inode* %45, %struct.buffer_head* %46, %struct.inode* %47, %struct.buffer_head* %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %90

56:                                               ; preds = %44
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %56
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @ocfs2_reflink_xattrs(%struct.inode* %65, %struct.buffer_head* %66, %struct.inode* %67, %struct.buffer_head* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %90

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %56
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @ocfs2_complete_reflink(%struct.inode* %78, %struct.buffer_head* %79, %struct.inode* %80, %struct.buffer_head* %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @mlog_errno(i32 %87)
  br label %89

89:                                               ; preds = %86, %77
  br label %90

90:                                               ; preds = %89, %73, %53
  %91 = load %struct.inode*, %struct.inode** %7, align 8
  %92 = call i32 @ocfs2_inode_unlock(%struct.inode* %91, i32 1)
  %93 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %94 = call i32 @brelse(%struct.buffer_head* %93)
  br label %95

95:                                               ; preds = %90, %41
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  br label %99

99:                                               ; preds = %95, %30, %21
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %99
  %103 = load %struct.inode*, %struct.inode** %10, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @filemap_fdatawait(i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %112

112:                                              ; preds = %109, %102
  br label %113

113:                                              ; preds = %112, %99
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i32 @filemap_fdatawrite(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_attach_refcount_tree(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @ocfs2_create_reflink_node(%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_reflink_xattrs(%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_complete_reflink(%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @filemap_fdatawait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
