; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_file.c_debugfs_create_u16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_file.c_debugfs_create_u16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@S_IWUGO = common dso_local global i32 0, align 4
@fops_u16_ro = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@fops_u16_wo = common dso_local global i32 0, align 4
@fops_u16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @debugfs_create_u16(i8* %0, i32 %1, %struct.dentry* %2, i32* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @S_IWUGO, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.dentry*, %struct.dentry** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call %struct.dentry* @debugfs_create_file(i8* %15, i32 %16, %struct.dentry* %17, i32* %18, i32* @fops_u16_ro)
  store %struct.dentry* %19, %struct.dentry** %5, align 8
  br label %37

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @S_IRUGO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call %struct.dentry* @debugfs_create_file(i8* %26, i32 %27, %struct.dentry* %28, i32* %29, i32* @fops_u16_wo)
  store %struct.dentry* %30, %struct.dentry** %5, align 8
  br label %37

31:                                               ; preds = %20
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dentry*, %struct.dentry** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call %struct.dentry* @debugfs_create_file(i8* %32, i32 %33, %struct.dentry* %34, i32* %35, i32* @fops_u16)
  store %struct.dentry* %36, %struct.dentry** %5, align 8
  br label %37

37:                                               ; preds = %31, %25, %14
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %38
}

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
