; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_mmap.c_ocfs2_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_mmap.c_ocfs2_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.vm_fault = type { %struct.page* }
%struct.page = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_8__ = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @ocfs2_page_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_page_mkwrite(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %13 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %14 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %13, i32 0, i32 0
  %15 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %15, %struct.page** %6, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %24 = call i32 @ocfs2_vm_op_block_sigs(i32* %9, i32* %10)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %3, align 4
  br label %70

31:                                               ; preds = %2
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call i32 @ocfs2_inode_lock(%struct.inode* %32, %struct.buffer_head** %8, i32 1)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  br label %56

39:                                               ; preds = %31
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = call i32 @down_write(i32* %42)
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %46 = load %struct.page*, %struct.page** %6, align 8
  %47 = call i32 @__ocfs2_page_mkwrite(%struct.inode* %44, %struct.buffer_head* %45, %struct.page* %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = call i32 @up_write(i32* %50)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %53 = call i32 @brelse(%struct.buffer_head* %52)
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = call i32 @ocfs2_inode_unlock(%struct.inode* %54, i32 1)
  br label %56

56:                                               ; preds = %39, %36
  %57 = call i32 @ocfs2_vm_op_unblock_sigs(i32* %10)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %27
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @ocfs2_vm_op_block_sigs(i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_8__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @__ocfs2_page_mkwrite(%struct.inode*, %struct.buffer_head*, %struct.page*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_vm_op_unblock_sigs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
