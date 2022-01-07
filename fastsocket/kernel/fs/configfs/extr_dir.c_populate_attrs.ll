; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_populate_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_populate_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.config_item_type* }
%struct.config_item_type = type { %struct.configfs_attribute** }
%struct.configfs_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*)* @populate_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_attrs(%struct.config_item* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_item_type*, align 8
  %5 = alloca %struct.configfs_attribute*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  %8 = load %struct.config_item*, %struct.config_item** %3, align 8
  %9 = getelementptr inbounds %struct.config_item, %struct.config_item* %8, i32 0, i32 0
  %10 = load %struct.config_item_type*, %struct.config_item_type** %9, align 8
  store %struct.config_item_type* %10, %struct.config_item_type** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.config_item_type*, %struct.config_item_type** %4, align 8
  %12 = icmp ne %struct.config_item_type* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.config_item_type*, %struct.config_item_type** %4, align 8
  %18 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %17, i32 0, i32 0
  %19 = load %struct.configfs_attribute**, %struct.configfs_attribute*** %18, align 8
  %20 = icmp ne %struct.configfs_attribute** %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load %struct.config_item_type*, %struct.config_item_type** %4, align 8
  %24 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %23, i32 0, i32 0
  %25 = load %struct.configfs_attribute**, %struct.configfs_attribute*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.configfs_attribute*, %struct.configfs_attribute** %25, i64 %27
  %29 = load %struct.configfs_attribute*, %struct.configfs_attribute** %28, align 8
  store %struct.configfs_attribute* %29, %struct.configfs_attribute** %5, align 8
  %30 = icmp ne %struct.configfs_attribute* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load %struct.config_item*, %struct.config_item** %3, align 8
  %33 = load %struct.configfs_attribute*, %struct.configfs_attribute** %5, align 8
  %34 = call i32 @configfs_create_file(%struct.config_item* %32, %struct.configfs_attribute* %33)
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %22

41:                                               ; preds = %36, %22
  br label %42

42:                                               ; preds = %41, %16
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.config_item*, %struct.config_item** %3, align 8
  %47 = call i32 @detach_attrs(%struct.config_item* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @configfs_create_file(%struct.config_item*, %struct.configfs_attribute*) #1

declare dso_local i32 @detach_attrs(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
