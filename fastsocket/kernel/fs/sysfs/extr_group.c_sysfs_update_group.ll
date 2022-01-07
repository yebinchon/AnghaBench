; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_group.c_sysfs_update_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_group.c_sysfs_update_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute_group = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_update_group(%struct.kobject* %0, %struct.attribute_group* %1) #0 {
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca %struct.attribute_group*, align 8
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  store %struct.attribute_group* %1, %struct.attribute_group** %4, align 8
  %5 = load %struct.kobject*, %struct.kobject** %3, align 8
  %6 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  %7 = call i32 @internal_create_group(%struct.kobject* %5, i32 1, %struct.attribute_group* %6)
  ret i32 %7
}

declare dso_local i32 @internal_create_group(%struct.kobject*, i32, %struct.attribute_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
