; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_ioctl.c_nilfs_ioctl_delete_checkpoints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_ioctl.c_nilfs_ioctl_delete_checkpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nilfs_argv = type { i64 }
%struct.nilfs_period = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*, %struct.nilfs_argv*, i8*)* @nilfs_ioctl_delete_checkpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_ioctl_delete_checkpoints(%struct.the_nilfs* %0, %struct.nilfs_argv* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.nilfs_argv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.nilfs_period*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %5, align 8
  store %struct.nilfs_argv* %1, %struct.nilfs_argv** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.nilfs_argv*, %struct.nilfs_argv** %6, align 8
  %14 = getelementptr inbounds %struct.nilfs_argv, %struct.nilfs_argv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %17 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.nilfs_period*
  store %struct.nilfs_period* %20, %struct.nilfs_period** %10, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %46, %3
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = load %struct.nilfs_period*, %struct.nilfs_period** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.nilfs_period, %struct.nilfs_period* %28, i64 %30
  %32 = getelementptr inbounds %struct.nilfs_period, %struct.nilfs_period* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nilfs_period*, %struct.nilfs_period** %10, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.nilfs_period, %struct.nilfs_period* %34, i64 %36
  %38 = getelementptr inbounds %struct.nilfs_period, %struct.nilfs_period* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nilfs_cpfile_delete_checkpoints(%struct.inode* %27, i32 %33, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %26
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %52

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %21

49:                                               ; preds = %21
  %50 = load i64, i64* %8, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @nilfs_cpfile_delete_checkpoints(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
