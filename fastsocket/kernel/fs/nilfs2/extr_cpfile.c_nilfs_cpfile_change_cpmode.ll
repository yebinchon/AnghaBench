; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_change_cpmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_change_cpmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.the_nilfs = type { i32 }
%struct.TYPE_2__ = type { %struct.the_nilfs* }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_cpfile_change_cpmode(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.the_nilfs*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %12, align 8
  store %struct.the_nilfs* %13, %struct.the_nilfs** %8, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %33 [
    i32 129, label %15
    i32 128, label %29
  ]

15:                                               ; preds = %3
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @nilfs_checkpoint_is_mounted(%struct.the_nilfs* %16, i32 %17, i32 1)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  br label %27

23:                                               ; preds = %15
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @nilfs_cpfile_clear_snapshot(%struct.inode* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %36

29:                                               ; preds = %3
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @nilfs_cpfile_set_snapshot(%struct.inode* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %29, %27
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_checkpoint_is_mounted(%struct.the_nilfs*, i32, i32) #1

declare dso_local i32 @nilfs_cpfile_clear_snapshot(%struct.inode*, i32) #1

declare dso_local i32 @nilfs_cpfile_set_snapshot(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
