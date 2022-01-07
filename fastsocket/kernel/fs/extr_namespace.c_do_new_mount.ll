; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_new_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_new_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.vfsmount = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i8*, i32, i32, i8*, i8*)* @do_new_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_new_mount(%struct.path* %0, i8* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.path*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.vfsmount*, align 8
  %15 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %54

21:                                               ; preds = %6
  %22 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %23 = call i32 @capable(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %54

28:                                               ; preds = %21
  %29 = call i32 (...) @lock_kernel()
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call %struct.vfsmount* @do_kern_mount(i8* %30, i32 %31, i8* %32, i8* %33)
  store %struct.vfsmount* %34, %struct.vfsmount** %14, align 8
  %35 = call i32 (...) @unlock_kernel()
  %36 = load %struct.vfsmount*, %struct.vfsmount** %14, align 8
  %37 = call i64 @IS_ERR(%struct.vfsmount* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.vfsmount*, %struct.vfsmount** %14, align 8
  %41 = call i32 @PTR_ERR(%struct.vfsmount* %40)
  store i32 %41, i32* %7, align 4
  br label %54

42:                                               ; preds = %28
  %43 = load %struct.vfsmount*, %struct.vfsmount** %14, align 8
  %44 = load %struct.path*, %struct.path** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @__do_add_mount(%struct.vfsmount* %43, %struct.path* %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.vfsmount*, %struct.vfsmount** %14, align 8
  %51 = call i32 @mntput(%struct.vfsmount* %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %39, %25, %18
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.vfsmount* @do_kern_mount(i8*, i32, i8*, i8*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local i32 @PTR_ERR(%struct.vfsmount*) #1

declare dso_local i32 @__do_add_mount(%struct.vfsmount*, %struct.path*, i32) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
