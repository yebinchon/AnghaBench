; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_symlink.c_sysfs_follow_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_symlink.c_sysfs_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.nameidata*)* @sysfs_follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sysfs_follow_link(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i64 @get_zeroed_page(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @sysfs_getlink(%struct.dentry* %14, i8* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @free_page(i64 %21)
  br label %23

23:                                               ; preds = %20, %13
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @ERR_PTR(i32 %29)
  br label %34

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = inttoptr i64 %32 to i8*
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i8* [ %30, %28 ], [ %33, %31 ]
  %36 = call i32 @nd_set_link(%struct.nameidata* %25, i8* %35)
  ret i8* null
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @sysfs_getlink(%struct.dentry*, i8*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @nd_set_link(%struct.nameidata*, i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
