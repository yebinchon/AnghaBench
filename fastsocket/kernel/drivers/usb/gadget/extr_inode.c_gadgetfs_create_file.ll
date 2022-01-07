; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_gadgetfs_create_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_gadgetfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.file_operations = type { i32 }
%struct.dentry = type { i32 }

@S_IFREG = common dso_local global i32 0, align 4
@default_perm = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i8*, i8*, %struct.file_operations*, %struct.dentry**)* @gadgetfs_create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @gadgetfs_create_file(%struct.super_block* %0, i8* %1, i8* %2, %struct.file_operations* %3, %struct.dentry** %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.file_operations*, align 8
  %11 = alloca %struct.dentry**, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.file_operations* %3, %struct.file_operations** %10, align 8
  store %struct.dentry** %4, %struct.dentry*** %11, align 8
  %14 = load %struct.super_block*, %struct.super_block** %7, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call %struct.dentry* @d_alloc_name(i32 %16, i8* %17)
  store %struct.dentry* %18, %struct.dentry** %12, align 8
  %19 = load %struct.dentry*, %struct.dentry** %12, align 8
  %20 = icmp ne %struct.dentry* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store %struct.inode* null, %struct.inode** %6, align 8
  br label %44

22:                                               ; preds = %5
  %23 = load %struct.super_block*, %struct.super_block** %7, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %26 = load i32, i32* @S_IFREG, align 4
  %27 = load i32, i32* @default_perm, align 4
  %28 = load i32, i32* @S_IRWXUGO, align 4
  %29 = and i32 %27, %28
  %30 = or i32 %26, %29
  %31 = call %struct.inode* @gadgetfs_make_inode(%struct.super_block* %23, i8* %24, %struct.file_operations* %25, i32 %30)
  store %struct.inode* %31, %struct.inode** %13, align 8
  %32 = load %struct.inode*, %struct.inode** %13, align 8
  %33 = icmp ne %struct.inode* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load %struct.dentry*, %struct.dentry** %12, align 8
  %36 = call i32 @dput(%struct.dentry* %35)
  store %struct.inode* null, %struct.inode** %6, align 8
  br label %44

37:                                               ; preds = %22
  %38 = load %struct.dentry*, %struct.dentry** %12, align 8
  %39 = load %struct.inode*, %struct.inode** %13, align 8
  %40 = call i32 @d_add(%struct.dentry* %38, %struct.inode* %39)
  %41 = load %struct.dentry*, %struct.dentry** %12, align 8
  %42 = load %struct.dentry**, %struct.dentry*** %11, align 8
  store %struct.dentry* %41, %struct.dentry** %42, align 8
  %43 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %43, %struct.inode** %6, align 8
  br label %44

44:                                               ; preds = %37, %34, %21
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  ret %struct.inode* %45
}

declare dso_local %struct.dentry* @d_alloc_name(i32, i8*) #1

declare dso_local %struct.inode* @gadgetfs_make_inode(%struct.super_block*, i8*, %struct.file_operations*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
