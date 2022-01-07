; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_char_dev.c_cdev_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_char_dev.c_cdev_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.kobject = type { i32 }

@cdev_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdev_index(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load i32, i32* @cdev_map, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.kobject* @kobj_lookup(i32 %6, i32 %9, i32* %4)
  store %struct.kobject* %10, %struct.kobject** %5, align 8
  %11 = load %struct.kobject*, %struct.kobject** %5, align 8
  %12 = icmp ne %struct.kobject* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.kobject*, %struct.kobject** %5, align 8
  %16 = call i32 @kobject_put(%struct.kobject* %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.kobject* @kobj_lookup(i32, i32, i32*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
