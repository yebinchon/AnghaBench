; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_update_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_update_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.kstat = type { i32, i32 }
%struct.file = type { i32 }
%struct.fuse_inode = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_update_attributes(%struct.inode* %0, %struct.kstat* %1, %struct.file* %2, i32* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.fuse_inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %12)
  store %struct.fuse_inode* %13, %struct.fuse_inode** %9, align 8
  %14 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %15 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 (...) @get_jiffies_64()
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = load %struct.kstat*, %struct.kstat** %6, align 8
  %22 = load %struct.file*, %struct.file** %7, align 8
  %23 = call i32 @fuse_do_getattr(%struct.inode* %20, %struct.kstat* %21, %struct.file* %22)
  store i32 %23, i32* %10, align 4
  br label %42

24:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %25 = load %struct.kstat*, %struct.kstat** %6, align 8
  %26 = icmp ne %struct.kstat* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load %struct.kstat*, %struct.kstat** %6, align 8
  %30 = call i32 @generic_fillattr(%struct.inode* %28, %struct.kstat* %29)
  %31 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %32 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.kstat*, %struct.kstat** %6, align 8
  %35 = getelementptr inbounds %struct.kstat, %struct.kstat* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %37 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.kstat*, %struct.kstat** %6, align 8
  %40 = getelementptr inbounds %struct.kstat, %struct.kstat* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %27, %24
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local i32 @fuse_do_getattr(%struct.inode*, %struct.kstat*, %struct.file*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
