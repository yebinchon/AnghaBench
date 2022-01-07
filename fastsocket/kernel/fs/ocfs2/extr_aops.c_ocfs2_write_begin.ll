; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_write_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @ocfs2_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %19 = load %struct.address_space*, %struct.address_space** %10, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %18, align 8
  %22 = load %struct.inode*, %struct.inode** %18, align 8
  %23 = call i32 @ocfs2_inode_lock(%struct.inode* %22, %struct.buffer_head** %17, i32 1)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %7
  %27 = load i32, i32* %16, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %8, align 4
  br label %61

30:                                               ; preds = %7
  %31 = load %struct.inode*, %struct.inode** %18, align 8
  %32 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @down_write(i32* %33)
  %35 = load %struct.address_space*, %struct.address_space** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.page**, %struct.page*** %14, align 8
  %40 = load i8**, i8*** %15, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %42 = call i32 @ocfs2_write_begin_nolock(%struct.address_space* %35, i32 %36, i32 %37, i32 %38, %struct.page** %39, i8** %40, %struct.buffer_head* %41, i32* null)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  br label %51

48:                                               ; preds = %30
  %49 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %50 = call i32 @brelse(%struct.buffer_head* %49)
  store i32 0, i32* %8, align 4
  br label %61

51:                                               ; preds = %45
  %52 = load %struct.inode*, %struct.inode** %18, align 8
  %53 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @up_write(i32* %54)
  %56 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %57 = call i32 @brelse(%struct.buffer_head* %56)
  %58 = load %struct.inode*, %struct.inode** %18, align 8
  %59 = call i32 @ocfs2_inode_unlock(%struct.inode* %58, i32 1)
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %51, %48, %26
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_write_begin_nolock(%struct.address_space*, i32, i32, i32, %struct.page**, i8**, %struct.buffer_head*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
