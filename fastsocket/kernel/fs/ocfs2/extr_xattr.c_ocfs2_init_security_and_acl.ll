; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_init_security_and_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_init_security_and_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_security_xattr_info = type { i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@__const.ocfs2_init_security_and_acl.si = private unnamed_addr constant %struct.ocfs2_security_xattr_info { i32 1, i32 0, i32 0, i32 0 }, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_init_security_and_acl(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.ocfs2_security_xattr_info, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  %8 = bitcast %struct.ocfs2_security_xattr_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.ocfs2_security_xattr_info* @__const.ocfs2_init_security_and_acl.si to i8*), i64 16, i1 false)
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call i32 @ocfs2_init_security_get(%struct.inode* %9, %struct.inode* %10, %struct.ocfs2_security_xattr_info* %7)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %7, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %7, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %7, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @XATTR_CREATE, align 4
  %23 = call i32 @ocfs2_xattr_security_set(%struct.inode* %15, i32 %17, i32 %19, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %62

29:                                               ; preds = %14
  br label %39

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  br label %62

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %29
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = call i32 @ocfs2_inode_lock(%struct.inode* %40, %struct.buffer_head** %6, i32 0)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %62

47:                                               ; preds = %39
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %51 = call i32 @ocfs2_init_acl(i32* null, %struct.inode* %48, %struct.inode* %49, i32* null, %struct.buffer_head* %50, i32* null, i32* null)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %57

57:                                               ; preds = %54, %47
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = call i32 @ocfs2_inode_unlock(%struct.inode* %58, i32 0)
  %60 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %61 = call i32 @brelse(%struct.buffer_head* %60)
  br label %62

62:                                               ; preds = %57, %44, %35, %26
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ocfs2_init_security_get(%struct.inode*, %struct.inode*, %struct.ocfs2_security_xattr_info*) #2

declare dso_local i32 @ocfs2_xattr_security_set(%struct.inode*, i32, i32, i32, i32) #2

declare dso_local i32 @mlog_errno(i32) #2

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #2

declare dso_local i32 @ocfs2_init_acl(i32*, %struct.inode*, %struct.inode*, i32*, %struct.buffer_head*, i32*, i32*) #2

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #2

declare dso_local i32 @brelse(%struct.buffer_head*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
