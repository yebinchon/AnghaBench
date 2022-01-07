; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_move_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_move_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { %struct.sysfs_dirent*, i32 }
%struct.kobject = type { %struct.sysfs_dirent* }
%struct.dentry = type { %struct.TYPE_3__*, %struct.dentry* }
%struct.TYPE_3__ = type { i32 }

@sysfs_rename_mutex = common dso_local global i32 0, align 4
@sysfs_root = common dso_local global %struct.sysfs_dirent zeroinitializer, align 8
@sysfs_mutex = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_move_dir(%struct.kobject* %0, %struct.kobject* %1) #0 {
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.sysfs_dirent*, align 8
  %6 = alloca %struct.sysfs_dirent*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  store %struct.kobject* %1, %struct.kobject** %4, align 8
  %12 = load %struct.kobject*, %struct.kobject** %3, align 8
  %13 = getelementptr inbounds %struct.kobject, %struct.kobject* %12, i32 0, i32 0
  %14 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %13, align 8
  store %struct.sysfs_dirent* %14, %struct.sysfs_dirent** %5, align 8
  store %struct.dentry* null, %struct.dentry** %8, align 8
  store %struct.dentry* null, %struct.dentry** %9, align 8
  store %struct.dentry* null, %struct.dentry** %10, align 8
  %15 = call i32 @mutex_lock(i32* @sysfs_rename_mutex)
  %16 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %17 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %16, i32 0, i32 0
  %18 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %17, align 8
  %19 = icmp ne %struct.sysfs_dirent* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.kobject*, %struct.kobject** %4, align 8
  %24 = icmp ne %struct.kobject* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.kobject*, %struct.kobject** %4, align 8
  %27 = getelementptr inbounds %struct.kobject, %struct.kobject* %26, i32 0, i32 0
  %28 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %27, align 8
  %29 = icmp ne %struct.sysfs_dirent* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.kobject*, %struct.kobject** %4, align 8
  %32 = getelementptr inbounds %struct.kobject, %struct.kobject* %31, i32 0, i32 0
  %33 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %32, align 8
  br label %35

34:                                               ; preds = %25, %2
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi %struct.sysfs_dirent* [ %33, %30 ], [ @sysfs_root, %34 ]
  store %struct.sysfs_dirent* %36, %struct.sysfs_dirent** %6, align 8
  store i32 0, i32* %11, align 4
  %37 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %38 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %37, i32 0, i32 0
  %39 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %38, align 8
  %40 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %41 = icmp eq %struct.sysfs_dirent* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %144

43:                                               ; preds = %35
  %44 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %45 = call %struct.dentry* @sysfs_get_dentry(%struct.sysfs_dirent* %44)
  store %struct.dentry* %45, %struct.dentry** %9, align 8
  %46 = load %struct.dentry*, %struct.dentry** %9, align 8
  %47 = call i64 @IS_ERR(%struct.dentry* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.dentry*, %struct.dentry** %9, align 8
  %51 = call i32 @PTR_ERR(%struct.dentry* %50)
  store i32 %51, i32* %11, align 4
  store %struct.dentry* null, %struct.dentry** %9, align 8
  br label %144

52:                                               ; preds = %43
  %53 = load %struct.dentry*, %struct.dentry** %9, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 1
  %55 = load %struct.dentry*, %struct.dentry** %54, align 8
  store %struct.dentry* %55, %struct.dentry** %7, align 8
  %56 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %57 = call %struct.dentry* @sysfs_get_dentry(%struct.sysfs_dirent* %56)
  store %struct.dentry* %57, %struct.dentry** %8, align 8
  %58 = load %struct.dentry*, %struct.dentry** %8, align 8
  %59 = call i64 @IS_ERR(%struct.dentry* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.dentry*, %struct.dentry** %8, align 8
  %63 = call i32 @PTR_ERR(%struct.dentry* %62)
  store i32 %63, i32* %11, align 4
  store %struct.dentry* null, %struct.dentry** %8, align 8
  br label %144

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %77, %64
  %66 = load %struct.dentry*, %struct.dentry** %7, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.dentry*, %struct.dentry** %8, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = call i32 @mutex_trylock(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %65
  %78 = load %struct.dentry*, %struct.dentry** %7, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %65

83:                                               ; preds = %65
  %84 = call i32 @mutex_lock(i32* @sysfs_mutex)
  %85 = load i32, i32* @EEXIST, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  %87 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %88 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %89 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @sysfs_find_dirent(%struct.sysfs_dirent* %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %132

94:                                               ; preds = %83
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %11, align 4
  %97 = load %struct.dentry*, %struct.dentry** %8, align 8
  %98 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %99 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call %struct.dentry* @d_alloc_name(%struct.dentry* %97, i32 %100)
  store %struct.dentry* %101, %struct.dentry** %10, align 8
  %102 = load %struct.dentry*, %struct.dentry** %10, align 8
  %103 = icmp ne %struct.dentry* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %94
  br label %132

105:                                              ; preds = %94
  store i32 0, i32* %11, align 4
  %106 = load %struct.dentry*, %struct.dentry** %10, align 8
  %107 = call i32 @d_add(%struct.dentry* %106, i32* null)
  %108 = load %struct.dentry*, %struct.dentry** %9, align 8
  %109 = load %struct.dentry*, %struct.dentry** %10, align 8
  %110 = call i32 @d_move(%struct.dentry* %108, %struct.dentry* %109)
  %111 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %112 = call i32 @sysfs_unlink_sibling(%struct.sysfs_dirent* %111)
  %113 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %114 = call i32 @sysfs_get(%struct.sysfs_dirent* %113)
  %115 = load %struct.dentry*, %struct.dentry** %7, align 8
  %116 = getelementptr inbounds %struct.dentry, %struct.dentry* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = call i32 @drop_nlink(%struct.TYPE_3__* %117)
  %119 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %120 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %119, i32 0, i32 0
  %121 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %120, align 8
  %122 = call i32 @sysfs_put(%struct.sysfs_dirent* %121)
  %123 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %124 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %125 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %124, i32 0, i32 0
  store %struct.sysfs_dirent* %123, %struct.sysfs_dirent** %125, align 8
  %126 = load %struct.dentry*, %struct.dentry** %8, align 8
  %127 = getelementptr inbounds %struct.dentry, %struct.dentry* %126, i32 0, i32 0
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = call i32 @inc_nlink(%struct.TYPE_3__* %128)
  %130 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %131 = call i32 @sysfs_link_sibling(%struct.sysfs_dirent* %130)
  br label %132

132:                                              ; preds = %105, %104, %93
  %133 = call i32 @mutex_unlock(i32* @sysfs_mutex)
  %134 = load %struct.dentry*, %struct.dentry** %8, align 8
  %135 = getelementptr inbounds %struct.dentry, %struct.dentry* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load %struct.dentry*, %struct.dentry** %7, align 8
  %140 = getelementptr inbounds %struct.dentry, %struct.dentry* %139, i32 0, i32 0
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = call i32 @mutex_unlock(i32* %142)
  br label %144

144:                                              ; preds = %132, %61, %49, %42
  %145 = load %struct.dentry*, %struct.dentry** %8, align 8
  %146 = call i32 @dput(%struct.dentry* %145)
  %147 = load %struct.dentry*, %struct.dentry** %9, align 8
  %148 = call i32 @dput(%struct.dentry* %147)
  %149 = load %struct.dentry*, %struct.dentry** %10, align 8
  %150 = call i32 @dput(%struct.dentry* %149)
  %151 = call i32 @mutex_unlock(i32* @sysfs_rename_mutex)
  %152 = load i32, i32* %11, align 4
  ret i32 %152
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.dentry* @sysfs_get_dentry(%struct.sysfs_dirent*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @sysfs_find_dirent(%struct.sysfs_dirent*, i32) #1

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i32) #1

declare dso_local i32 @d_add(%struct.dentry*, i32*) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @sysfs_unlink_sibling(%struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_get(%struct.sysfs_dirent*) #1

declare dso_local i32 @drop_nlink(%struct.TYPE_3__*) #1

declare dso_local i32 @sysfs_put(%struct.sysfs_dirent*) #1

declare dso_local i32 @inc_nlink(%struct.TYPE_3__*) #1

declare dso_local i32 @sysfs_link_sibling(%struct.sysfs_dirent*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
