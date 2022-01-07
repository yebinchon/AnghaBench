; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_nilfs_near_disk_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_nilfs_near_disk_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i64, i32, %struct.inode* }
%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_near_disk_full(%struct.the_nilfs* %0) #0 {
  %2 = alloca %struct.the_nilfs*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %2, align 8
  %7 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %8 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %7, i32 0, i32 3
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call i32 @nilfs_sufile_get_ncleansegs(%struct.inode* %10, i64* %4)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %1
  %19 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %20 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %19, i32 0, i32 2
  %21 = call i32 @atomic_read(i32* %20)
  %22 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %23 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %21, %24
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %30 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %31, %32
  %34 = icmp ule i64 %28, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %18
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @nilfs_sufile_get_ncleansegs(%struct.inode*, i64*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
