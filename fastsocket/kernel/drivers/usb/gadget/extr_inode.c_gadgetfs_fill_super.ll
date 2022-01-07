; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_gadgetfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_gadgetfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_data = type { i32, %struct.super_block* }
%struct.super_block = type { i32, %struct.dentry*, i32*, i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32* }

@the_device = common dso_local global %struct.dev_data* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@probe_driver = common dso_local global i32 0, align 4
@CHIP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@GADGETFS_MAGIC = common dso_local global i32 0, align 4
@gadget_fs_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@dev_init_operations = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @gadgetfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gadgetfs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dev_data*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dev_data*, %struct.dev_data** @the_device, align 8
  %12 = icmp ne %struct.dev_data* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ESRCH, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %88

16:                                               ; preds = %3
  %17 = call i32 @usb_gadget_register_driver(i32* @probe_driver)
  %18 = load i32, i32* @CHIP, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %88

23:                                               ; preds = %16
  %24 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @GADGETFS_MAGIC, align 4
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 2
  store i32* @gadget_fs_operations, i32** %34, align 8
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = load i32, i32* @S_IFDIR, align 4
  %39 = load i32, i32* @S_IRUGO, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @S_IXUGO, align 4
  %42 = or i32 %40, %41
  %43 = call %struct.inode* @gadgetfs_make_inode(%struct.super_block* %37, i32* null, i32* @simple_dir_operations, i32 %42)
  store %struct.inode* %43, %struct.inode** %8, align 8
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = icmp ne %struct.inode* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %23
  br label %85

47:                                               ; preds = %23
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  store i32* @simple_dir_inode_operations, i32** %49, align 8
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = call %struct.dentry* @d_alloc_root(%struct.inode* %50)
  store %struct.dentry* %51, %struct.dentry** %9, align 8
  %52 = icmp ne %struct.dentry* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %82

54:                                               ; preds = %47
  %55 = load %struct.dentry*, %struct.dentry** %9, align 8
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = getelementptr inbounds %struct.super_block, %struct.super_block* %56, i32 0, i32 1
  store %struct.dentry* %55, %struct.dentry** %57, align 8
  %58 = call %struct.dev_data* (...) @dev_new()
  store %struct.dev_data* %58, %struct.dev_data** %10, align 8
  %59 = load %struct.dev_data*, %struct.dev_data** %10, align 8
  %60 = icmp ne %struct.dev_data* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %79

62:                                               ; preds = %54
  %63 = load %struct.super_block*, %struct.super_block** %5, align 8
  %64 = load %struct.dev_data*, %struct.dev_data** %10, align 8
  %65 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %64, i32 0, i32 1
  store %struct.super_block* %63, %struct.super_block** %65, align 8
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = load i32, i32* @CHIP, align 4
  %68 = load %struct.dev_data*, %struct.dev_data** %10, align 8
  %69 = load %struct.dev_data*, %struct.dev_data** %10, align 8
  %70 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %69, i32 0, i32 0
  %71 = call i32 @gadgetfs_create_file(%struct.super_block* %66, i32 %67, %struct.dev_data* %68, i32* @dev_init_operations, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %62
  br label %76

74:                                               ; preds = %62
  %75 = load %struct.dev_data*, %struct.dev_data** %10, align 8
  store %struct.dev_data* %75, %struct.dev_data** @the_device, align 8
  store i32 0, i32* %4, align 4
  br label %88

76:                                               ; preds = %73
  %77 = load %struct.dev_data*, %struct.dev_data** %10, align 8
  %78 = call i32 @put_dev(%struct.dev_data* %77)
  br label %79

79:                                               ; preds = %76, %61
  %80 = load %struct.dentry*, %struct.dentry** %9, align 8
  %81 = call i32 @dput(%struct.dentry* %80)
  br label %82

82:                                               ; preds = %79, %53
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = call i32 @iput(%struct.inode* %83)
  br label %85

85:                                               ; preds = %82, %46
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %85, %74, %20, %13
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @usb_gadget_register_driver(i32*) #1

declare dso_local %struct.inode* @gadgetfs_make_inode(%struct.super_block*, i32*, i32*, i32) #1

declare dso_local %struct.dentry* @d_alloc_root(%struct.inode*) #1

declare dso_local %struct.dev_data* @dev_new(...) #1

declare dso_local i32 @gadgetfs_create_file(%struct.super_block*, i32, %struct.dev_data*, i32*, i32*) #1

declare dso_local i32 @put_dev(%struct.dev_data*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
