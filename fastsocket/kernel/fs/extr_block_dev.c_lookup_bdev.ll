; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_lookup_bdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_lookup_bdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.inode = type { i32 }
%struct.path = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.inode* }

@EINVAL = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@ENOTBLK = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@MNT_NODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block_device* @lookup_bdev(i8* %0) #0 {
  %2 = alloca %struct.block_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.path, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.block_device* @ERR_PTR(i32 %16)
  store %struct.block_device* %17, %struct.block_device** %2, align 8
  br label %66

18:                                               ; preds = %10
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %21 = call i32 @kern_path(i8* %19, i32 %20, %struct.path* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.block_device* @ERR_PTR(i32 %25)
  store %struct.block_device* %26, %struct.block_device** %2, align 8
  br label %66

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.inode*, %struct.inode** %30, align 8
  store %struct.inode* %31, %struct.inode** %5, align 8
  %32 = load i32, i32* @ENOTBLK, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @S_ISBLK(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  br label %63

40:                                               ; preds = %27
  %41 = load i32, i32* @EACCES, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  %43 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MNT_NODEV, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %63

51:                                               ; preds = %40
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = call %struct.block_device* @bd_acquire(%struct.inode* %54)
  store %struct.block_device* %55, %struct.block_device** %4, align 8
  %56 = load %struct.block_device*, %struct.block_device** %4, align 8
  %57 = icmp ne %struct.block_device* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %63, %59
  %61 = call i32 @path_put(%struct.path* %6)
  %62 = load %struct.block_device*, %struct.block_device** %4, align 8
  store %struct.block_device* %62, %struct.block_device** %2, align 8
  br label %66

63:                                               ; preds = %58, %50, %39
  %64 = load i32, i32* %7, align 4
  %65 = call %struct.block_device* @ERR_PTR(i32 %64)
  store %struct.block_device* %65, %struct.block_device** %4, align 8
  br label %60

66:                                               ; preds = %60, %24, %14
  %67 = load %struct.block_device*, %struct.block_device** %2, align 8
  ret %struct.block_device* %67
}

declare dso_local %struct.block_device* @ERR_PTR(i32) #1

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local %struct.block_device* @bd_acquire(%struct.inode*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
