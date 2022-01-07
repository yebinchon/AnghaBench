; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_inode.c_securityfs_create_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_inode.c_securityfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, %struct.file_operations* }
%struct.file_operations = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"securityfs: creating file '%s'\0A\00", align 1
@fs_type = common dso_local global i32 0, align 4
@mount = common dso_local global i32 0, align 4
@mount_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @securityfs_create_file(i8* %0, i32 %1, %struct.dentry* %2, i8* %3, %struct.file_operations* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.file_operations*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.file_operations* %4, %struct.file_operations** %10, align 8
  store %struct.dentry* null, %struct.dentry** %11, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = call i32 @simple_pin_fs(i32* @fs_type, i32* @mount, i32* @mount_count)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* %12, align 4
  %20 = call %struct.dentry* @ERR_PTR(i32 %19)
  store %struct.dentry* %20, %struct.dentry** %11, align 8
  br label %57

21:                                               ; preds = %5
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.dentry*, %struct.dentry** %8, align 8
  %25 = call i32 @create_by_name(i8* %22, i32 %23, %struct.dentry* %24, %struct.dentry** %11)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  %30 = call %struct.dentry* @ERR_PTR(i32 %29)
  store %struct.dentry* %30, %struct.dentry** %11, align 8
  %31 = call i32 @simple_release_fs(i32* @mount, i32* @mount_count)
  br label %57

32:                                               ; preds = %21
  %33 = load %struct.dentry*, %struct.dentry** %11, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %39 = icmp ne %struct.file_operations* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %42 = load %struct.dentry*, %struct.dentry** %11, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store %struct.file_operations* %41, %struct.file_operations** %45, align 8
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.dentry*, %struct.dentry** %11, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i8* %50, i8** %54, align 8
  br label %55

55:                                               ; preds = %49, %46
  br label %56

56:                                               ; preds = %55, %32
  br label %57

57:                                               ; preds = %56, %28, %18
  %58 = load %struct.dentry*, %struct.dentry** %11, align 8
  ret %struct.dentry* %58
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @simple_pin_fs(i32*, i32*, i32*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @create_by_name(i8*, i32, %struct.dentry*, %struct.dentry**) #1

declare dso_local i32 @simple_release_fs(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
