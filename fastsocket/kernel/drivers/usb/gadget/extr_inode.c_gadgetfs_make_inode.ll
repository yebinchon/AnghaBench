; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_gadgetfs_make_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_gadgetfs_make_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.file_operations*, i8*, i32, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.file_operations = type { i32 }

@default_uid = common dso_local global i32 0, align 4
@default_gid = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i8*, %struct.file_operations*, i32)* @gadgetfs_make_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @gadgetfs_make_inode(%struct.super_block* %0, i8* %1, %struct.file_operations* %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.file_operations*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.file_operations* %2, %struct.file_operations** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.inode* @new_inode(%struct.super_block* %10)
  store %struct.inode* %11, %struct.inode** %9, align 8
  %12 = load %struct.inode*, %struct.inode** %9, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %14, label %37

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @default_uid, align 4
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @default_gid, align 4
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @CURRENT_TIME, align 4
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 4
  store i32 %24, i32* %28, align 4
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 5
  store i32 %24, i32* %30, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  store %struct.file_operations* %34, %struct.file_operations** %36, align 8
  br label %37

37:                                               ; preds = %14, %4
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  ret %struct.inode* %38
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
