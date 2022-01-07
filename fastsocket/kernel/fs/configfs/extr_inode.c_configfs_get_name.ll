; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_inode.c_configfs_get_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_inode.c_configfs_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_dirent = type { i32, %struct.configfs_attribute*, %struct.TYPE_4__* }
%struct.configfs_attribute = type { i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@CONFIGFS_DIR = common dso_local global i32 0, align 4
@CONFIGFS_ITEM_LINK = common dso_local global i32 0, align 4
@CONFIGFS_ITEM_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @configfs_get_name(%struct.configfs_dirent* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.configfs_dirent*, align 8
  %4 = alloca %struct.configfs_attribute*, align 8
  store %struct.configfs_dirent* %0, %struct.configfs_dirent** %3, align 8
  %5 = load %struct.configfs_dirent*, %struct.configfs_dirent** %3, align 8
  %6 = icmp ne %struct.configfs_dirent* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.configfs_dirent*, %struct.configfs_dirent** %3, align 8
  %9 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %8, i32 0, i32 1
  %10 = load %struct.configfs_attribute*, %struct.configfs_attribute** %9, align 8
  %11 = icmp ne %struct.configfs_attribute* %10, null
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ true, %1 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.configfs_dirent*, %struct.configfs_dirent** %3, align 8
  %18 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CONFIGFS_DIR, align 4
  %21 = load i32, i32* @CONFIGFS_ITEM_LINK, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load %struct.configfs_dirent*, %struct.configfs_dirent** %3, align 8
  %27 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %2, align 8
  br label %47

32:                                               ; preds = %13
  %33 = load %struct.configfs_dirent*, %struct.configfs_dirent** %3, align 8
  %34 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CONFIGFS_ITEM_ATTR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.configfs_dirent*, %struct.configfs_dirent** %3, align 8
  %41 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %40, i32 0, i32 1
  %42 = load %struct.configfs_attribute*, %struct.configfs_attribute** %41, align 8
  store %struct.configfs_attribute* %42, %struct.configfs_attribute** %4, align 8
  %43 = load %struct.configfs_attribute*, %struct.configfs_attribute** %4, align 8
  %44 = getelementptr inbounds %struct.configfs_attribute, %struct.configfs_attribute* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %2, align 8
  br label %47

46:                                               ; preds = %32
  store i8* null, i8** %2, align 8
  br label %47

47:                                               ; preds = %46, %39, %25
  %48 = load i8*, i8** %2, align 8
  ret i8* %48
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
