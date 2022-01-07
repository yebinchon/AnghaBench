; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_inode.c_sysfs_init_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_inode.c_sysfs_init_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.sysfs_inode_attrs*, i32 }
%struct.TYPE_6__ = type { %struct.bin_attribute* }
%struct.bin_attribute = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sysfs_inode_attrs = type { i32, i64, i32 }
%struct.inode = type { i32*, i32*, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32*, i32* }

@sysfs_aops = common dso_local global i32 0, align 4
@sysfs_backing_dev_info = common dso_local global i32 0, align 4
@sysfs_inode_operations = common dso_local global i32 0, align 4
@sysfs_inode_imutex_key = common dso_local global i32 0, align 4
@sysfs_dir_inode_operations = common dso_local global i32 0, align 4
@sysfs_dir_operations = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@sysfs_file_operations = common dso_local global i32 0, align 4
@bin_fops = common dso_local global i32 0, align 4
@sysfs_symlink_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysfs_dirent*, %struct.inode*)* @sysfs_init_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysfs_init_inode(%struct.sysfs_dirent* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.sysfs_dirent*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.bin_attribute*, align 8
  %6 = alloca %struct.sysfs_inode_attrs*, align 8
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %7 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %8 = call i32 @sysfs_get(%struct.sysfs_dirent* %7)
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32* @sysfs_aops, i32** %14, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 6
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32* @sysfs_backing_dev_info, i32** %18, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  store i32* @sysfs_inode_operations, i32** %20, align 8
  %21 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %22 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 4
  %28 = call i32 @lockdep_set_class(i32* %27, i32* @sysfs_inode_imutex_key)
  %29 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %30 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %29, i32 0, i32 3
  %31 = load %struct.sysfs_inode_attrs*, %struct.sysfs_inode_attrs** %30, align 8
  store %struct.sysfs_inode_attrs* %31, %struct.sysfs_inode_attrs** %6, align 8
  %32 = load %struct.sysfs_inode_attrs*, %struct.sysfs_inode_attrs** %6, align 8
  %33 = icmp ne %struct.sysfs_inode_attrs* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %2
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load %struct.sysfs_inode_attrs*, %struct.sysfs_inode_attrs** %6, align 8
  %37 = getelementptr inbounds %struct.sysfs_inode_attrs, %struct.sysfs_inode_attrs* %36, i32 0, i32 2
  %38 = call i32 @set_inode_attr(%struct.inode* %35, i32* %37)
  %39 = load %struct.sysfs_inode_attrs*, %struct.sysfs_inode_attrs** %6, align 8
  %40 = getelementptr inbounds %struct.sysfs_inode_attrs, %struct.sysfs_inode_attrs* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = load %struct.sysfs_inode_attrs*, %struct.sysfs_inode_attrs** %6, align 8
  %46 = getelementptr inbounds %struct.sysfs_inode_attrs, %struct.sysfs_inode_attrs* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sysfs_inode_attrs*, %struct.sysfs_inode_attrs** %6, align 8
  %49 = getelementptr inbounds %struct.sysfs_inode_attrs, %struct.sysfs_inode_attrs* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @security_inode_notifysecctx(%struct.inode* %44, i64 %47, i32 %50)
  br label %52

52:                                               ; preds = %43, %34
  br label %59

53:                                               ; preds = %2
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %56 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @set_default_inode_attr(%struct.inode* %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %52
  %60 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %61 = call i32 @sysfs_type(%struct.sysfs_dirent* %60)
  switch i32 %61, label %95 [
    i32 131, label %62
    i32 130, label %74
    i32 129, label %80
    i32 128, label %92
  ]

62:                                               ; preds = %59
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  store i32* @sysfs_dir_inode_operations, i32** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  store i32* @sysfs_dir_operations, i32** %66, align 8
  %67 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %68 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 2
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %97

74:                                               ; preds = %59
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  store i32* @sysfs_file_operations, i32** %79, align 8
  br label %97

80:                                               ; preds = %59
  %81 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %82 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.bin_attribute*, %struct.bin_attribute** %83, align 8
  store %struct.bin_attribute* %84, %struct.bin_attribute** %5, align 8
  %85 = load %struct.bin_attribute*, %struct.bin_attribute** %5, align 8
  %86 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.inode*, %struct.inode** %4, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 1
  store i32* @bin_fops, i32** %91, align 8
  br label %97

92:                                               ; preds = %59
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  store i32* @sysfs_symlink_inode_operations, i32** %94, align 8
  br label %97

95:                                               ; preds = %59
  %96 = call i32 (...) @BUG()
  br label %97

97:                                               ; preds = %95, %92, %80, %74, %62
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = call i32 @unlock_new_inode(%struct.inode* %98)
  ret void
}

declare dso_local i32 @sysfs_get(%struct.sysfs_dirent*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @set_inode_attr(%struct.inode*, i32*) #1

declare dso_local i32 @security_inode_notifysecctx(%struct.inode*, i64, i32) #1

declare dso_local i32 @set_default_inode_attr(%struct.inode*, i32) #1

declare dso_local i32 @sysfs_type(%struct.sysfs_dirent*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
