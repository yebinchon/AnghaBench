; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_user.c_ocfs2_control_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_user.c_ocfs2_control_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ocfs2_control_private* }
%struct.ocfs2_control_private = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ocfs2_control_lock = common dso_local global i32 0, align 4
@ocfs2_control_private_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ocfs2_control_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_control_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ocfs2_control_private*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ocfs2_control_private* @kzalloc(i32 8, i32 %7)
  store %struct.ocfs2_control_private* %8, %struct.ocfs2_control_private** %6, align 8
  %9 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %6, align 8
  %10 = icmp ne %struct.ocfs2_control_private* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 4
  %17 = call i32 (...) @lock_kernel()
  %18 = call i32 @mutex_lock(i32* @ocfs2_control_lock)
  %19 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %6, align 8
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  store %struct.ocfs2_control_private* %19, %struct.ocfs2_control_private** %21, align 8
  %22 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %6, align 8
  %23 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %22, i32 0, i32 1
  %24 = call i32 @list_add(i32* %23, i32* @ocfs2_control_private_list)
  %25 = call i32 @mutex_unlock(i32* @ocfs2_control_lock)
  %26 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %14, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.ocfs2_control_private* @kzalloc(i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
