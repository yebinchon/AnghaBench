; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_dir_fsync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_dir_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dentry*, i32)* @fuse_dir_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_dir_fsync(%struct.file* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = icmp ne %struct.file* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @fuse_fsync_common(%struct.file* %10, %struct.dentry* %11, i32 %12, i32 1)
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %9
  %16 = phi i32 [ %13, %9 ], [ 0, %14 ]
  ret i32 %16
}

declare dso_local i32 @fuse_fsync_common(%struct.file*, %struct.dentry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
