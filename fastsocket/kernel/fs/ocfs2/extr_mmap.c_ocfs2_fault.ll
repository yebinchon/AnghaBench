; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_mmap.c_ocfs2_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_mmap.c_ocfs2_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.vm_fault = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"(area=%p, page offset=%lu)\0A\00", align 1
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @ocfs2_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.vm_fault*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %4, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %10 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %11 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mlog_entry(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.vm_area_struct* %9, i32 %12)
  %14 = call i32 @ocfs2_vm_op_block_sigs(i32* %5, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @mlog_errno(i32 %18)
  %20 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %20, i32* %8, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %23 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %24 = call i32 @filemap_fault(%struct.vm_area_struct* %22, %struct.vm_fault* %23)
  store i32 %24, i32* %8, align 4
  %25 = call i32 @ocfs2_vm_op_unblock_sigs(i32* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mlog_errno(i32 %29)
  br label %31

31:                                               ; preds = %28, %21
  br label %32

32:                                               ; preds = %31, %17
  %33 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %34 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mlog_exit_ptr(i32 %35)
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local i32 @mlog_entry(i8*, %struct.vm_area_struct*, i32) #1

declare dso_local i32 @ocfs2_vm_op_block_sigs(i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @filemap_fault(%struct.vm_area_struct*, %struct.vm_fault*) #1

declare dso_local i32 @ocfs2_vm_op_unblock_sigs(i32*) #1

declare dso_local i32 @mlog_exit_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
