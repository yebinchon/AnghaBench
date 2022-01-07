; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_ibody_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_ibody_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ocfs2_xattr_info = type { i32 }
%struct.ocfs2_xattr_search = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_dinode = type { i32 }

@OCFS2_MIN_BLOCKSIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_INLINE_XATTR_FL = common dso_local global i32 0, align 4
@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_ibody_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_ibody_set(%struct.inode* %0, %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_set_ctxt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_xattr_info*, align 8
  %8 = alloca %struct.ocfs2_xattr_search*, align 8
  %9 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %10 = alloca %struct.ocfs2_inode_info*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %7, align 8
  store %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_search** %8, align 8
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %13)
  store %struct.ocfs2_inode_info* %14, %struct.ocfs2_inode_info** %10, align 8
  %15 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %8, align 8
  %16 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %20, %struct.ocfs2_dinode** %11, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OCFS2_MIN_BLOCKSIZE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOSPC, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %64

31:                                               ; preds = %4
  %32 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %33 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %32, i32 0, i32 1
  %34 = call i32 @down_write(i32* %33)
  %35 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %36 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %31
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %44 = call i32 @ocfs2_xattr_has_space_inline(%struct.inode* %42, %struct.ocfs2_dinode* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %59

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %31
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %7, align 8
  %53 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %8, align 8
  %54 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %9, align 8
  %55 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %56 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @ocfs2_xattr_set_entry(%struct.inode* %51, %struct.ocfs2_xattr_info* %52, %struct.ocfs2_xattr_search* %53, %struct.ocfs2_xattr_set_ctxt* %54, i32 %57)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %50, %46
  %60 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %61 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %60, i32 0, i32 1
  %62 = call i32 @up_write(i32* %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %28
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ocfs2_xattr_has_space_inline(%struct.inode*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_xattr_set_entry(%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
