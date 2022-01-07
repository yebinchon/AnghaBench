; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.inode = type { i64, i64 }

@MS_NODIRATIME = common dso_local global i32 0, align 4
@MS_NOSUID = common dso_local global i32 0, align 4
@MS_NOEXEC = common dso_local global i32 0, align 4
@PROC_SUPER_MAGIC = common dso_local global i32 0, align 4
@proc_sops = common dso_local global i32 0, align 4
@proc_root = common dso_local global i32 0, align 4
@PROC_ROOT_INO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"proc_read_super: get root inode failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_fill_super(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @MS_NODIRATIME, align 4
  %6 = load i32, i32* @MS_NOSUID, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MS_NOEXEC, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 1
  store i32 1024, i32* %15, align 4
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 2
  store i32 10, i32* %17, align 8
  %18 = load i32, i32* @PROC_SUPER_MAGIC, align 4
  %19 = load %struct.super_block*, %struct.super_block** %3, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.super_block*, %struct.super_block** %3, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 5
  store i32* @proc_sops, i32** %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %3, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 3
  store i32 1, i32* %24, align 4
  %25 = call i32 @de_get(i32* @proc_root)
  %26 = load %struct.super_block*, %struct.super_block** %3, align 8
  %27 = load i32, i32* @PROC_ROOT_INO, align 4
  %28 = call %struct.inode* @proc_get_inode(%struct.super_block* %26, i32 %27, i32* @proc_root)
  store %struct.inode* %28, %struct.inode** %4, align 8
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = icmp ne %struct.inode* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %47

32:                                               ; preds = %1
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call i32 @d_alloc_root(%struct.inode* %37)
  %39 = load %struct.super_block*, %struct.super_block** %3, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.super_block*, %struct.super_block** %3, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  br label %47

46:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %54

47:                                               ; preds = %45, %31
  %48 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = call i32 @iput(%struct.inode* %49)
  %51 = call i32 @de_put(i32* @proc_root)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %47, %46
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @de_get(i32*) #1

declare dso_local %struct.inode* @proc_get_inode(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @de_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
