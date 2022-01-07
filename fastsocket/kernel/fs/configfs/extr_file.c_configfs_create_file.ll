; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_file.c_configfs_create_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_file.c_configfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.configfs_attribute = type { i32 }

@CONFIGFS_ITEM_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_create_file(%struct.config_item* %0, %struct.configfs_attribute* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.configfs_attribute*, align 8
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store %struct.configfs_attribute* %1, %struct.configfs_attribute** %4, align 8
  %5 = load %struct.config_item*, %struct.config_item** %3, align 8
  %6 = icmp ne %struct.config_item* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.config_item*, %struct.config_item** %3, align 8
  %9 = getelementptr inbounds %struct.config_item, %struct.config_item* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.configfs_attribute*, %struct.configfs_attribute** %4, align 8
  %14 = icmp ne %struct.configfs_attribute* %13, null
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %7, %2
  %17 = phi i1 [ true, %7 ], [ true, %2 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.config_item*, %struct.config_item** %3, align 8
  %21 = getelementptr inbounds %struct.config_item, %struct.config_item* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.configfs_attribute*, %struct.configfs_attribute** %4, align 8
  %24 = load i32, i32* @CONFIGFS_ITEM_ATTR, align 4
  %25 = call i32 @configfs_add_file(i32 %22, %struct.configfs_attribute* %23, i32 %24)
  ret i32 %25
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @configfs_add_file(i32, %struct.configfs_attribute*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
