; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_create_default_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_create_default_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, %struct.dentry* }
%struct.dentry = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32 }
%struct.qstr = type { i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CONFIGFS_USET_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_group*, %struct.config_group*)* @create_default_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_default_group(%struct.config_group* %0, %struct.config_group* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qstr, align 8
  %7 = alloca %struct.configfs_dirent*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  store %struct.config_group* %0, %struct.config_group** %3, align 8
  store %struct.config_group* %1, %struct.config_group** %4, align 8
  %10 = load %struct.config_group*, %struct.config_group** %3, align 8
  %11 = getelementptr inbounds %struct.config_group, %struct.config_group* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %9, align 8
  %14 = load %struct.config_group*, %struct.config_group** %4, align 8
  %15 = getelementptr inbounds %struct.config_group, %struct.config_group* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.config_group*, %struct.config_group** %4, align 8
  %21 = getelementptr inbounds %struct.config_group, %struct.config_group* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.config_group*, %struct.config_group** %4, align 8
  %25 = getelementptr inbounds %struct.config_group, %struct.config_group* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.config_group*, %struct.config_group** %4, align 8
  %29 = getelementptr inbounds %struct.config_group, %struct.config_group* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @strlen(i64 %34)
  %36 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @full_name_hash(i64 %38, i32 %40)
  %42 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  %45 = load %struct.dentry*, %struct.dentry** %9, align 8
  %46 = call %struct.dentry* @d_alloc(%struct.dentry* %45, %struct.qstr* %6)
  store %struct.dentry* %46, %struct.dentry** %8, align 8
  %47 = load %struct.dentry*, %struct.dentry** %8, align 8
  %48 = icmp ne %struct.dentry* %47, null
  br i1 %48, label %49, label %75

49:                                               ; preds = %27
  %50 = load %struct.dentry*, %struct.dentry** %8, align 8
  %51 = call i32 @d_add(%struct.dentry* %50, i32* null)
  %52 = load %struct.config_group*, %struct.config_group** %3, align 8
  %53 = getelementptr inbounds %struct.config_group, %struct.config_group* %52, i32 0, i32 0
  %54 = load %struct.config_group*, %struct.config_group** %4, align 8
  %55 = getelementptr inbounds %struct.config_group, %struct.config_group* %54, i32 0, i32 0
  %56 = load %struct.dentry*, %struct.dentry** %8, align 8
  %57 = call i32 @configfs_attach_group(%struct.TYPE_3__* %53, %struct.TYPE_3__* %55, %struct.dentry* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %49
  %61 = load %struct.dentry*, %struct.dentry** %8, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = load %struct.configfs_dirent*, %struct.configfs_dirent** %62, align 8
  store %struct.configfs_dirent* %63, %struct.configfs_dirent** %7, align 8
  %64 = load i32, i32* @CONFIGFS_USET_DEFAULT, align 4
  %65 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %66 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %74

69:                                               ; preds = %49
  %70 = load %struct.dentry*, %struct.dentry** %8, align 8
  %71 = call i32 @d_delete(%struct.dentry* %70)
  %72 = load %struct.dentry*, %struct.dentry** %8, align 8
  %73 = call i32 @dput(%struct.dentry* %72)
  br label %74

74:                                               ; preds = %69, %60
  br label %75

75:                                               ; preds = %74, %27
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @full_name_hash(i64, i32) #1

declare dso_local %struct.dentry* @d_alloc(%struct.dentry*, %struct.qstr*) #1

declare dso_local i32 @d_add(%struct.dentry*, i32*) #1

declare dso_local i32 @configfs_attach_group(%struct.TYPE_3__*, %struct.TYPE_3__*, %struct.dentry*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
