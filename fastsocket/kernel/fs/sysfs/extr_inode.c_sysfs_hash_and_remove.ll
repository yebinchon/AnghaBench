; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_inode.c_sysfs_hash_and_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_inode.c_sysfs_hash_and_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { i32 }
%struct.sysfs_addrm_cxt = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_hash_and_remove(%struct.sysfs_dirent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysfs_dirent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sysfs_addrm_cxt, align 4
  %7 = alloca %struct.sysfs_dirent*, align 8
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %9 = icmp ne %struct.sysfs_dirent* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %15 = call i32 @sysfs_addrm_start(%struct.sysfs_addrm_cxt* %6, %struct.sysfs_dirent* %14)
  %16 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.sysfs_dirent* @sysfs_find_dirent(%struct.sysfs_dirent* %16, i8* %17)
  store %struct.sysfs_dirent* %18, %struct.sysfs_dirent** %7, align 8
  %19 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %20 = icmp ne %struct.sysfs_dirent* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %23 = call i32 @sysfs_remove_one(%struct.sysfs_addrm_cxt* %6, %struct.sysfs_dirent* %22)
  br label %24

24:                                               ; preds = %21, %13
  %25 = call i32 @sysfs_addrm_finish(%struct.sysfs_addrm_cxt* %6)
  %26 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %27 = icmp ne %struct.sysfs_dirent* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %28, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @sysfs_addrm_start(%struct.sysfs_addrm_cxt*, %struct.sysfs_dirent*) #1

declare dso_local %struct.sysfs_dirent* @sysfs_find_dirent(%struct.sysfs_dirent*, i8*) #1

declare dso_local i32 @sysfs_remove_one(%struct.sysfs_addrm_cxt*, %struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_addrm_finish(%struct.sysfs_addrm_cxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
