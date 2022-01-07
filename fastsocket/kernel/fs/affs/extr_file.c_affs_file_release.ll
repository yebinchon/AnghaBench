; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_file.c_affs_file_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_file.c_affs_file_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32 }
%struct.file = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"AFFS: release(%lu, %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @affs_file_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_file_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @atomic_read(i32* %10)
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %11)
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i64 @atomic_dec_and_test(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call i32 @affs_truncate(%struct.inode* %31)
  br label %33

33:                                               ; preds = %30, %18
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = call i32 @affs_free_prealloc(%struct.inode* %34)
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %39

39:                                               ; preds = %33, %2
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_2__* @AFFS_I(%struct.inode*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @affs_truncate(%struct.inode*) #1

declare dso_local i32 @affs_free_prealloc(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
