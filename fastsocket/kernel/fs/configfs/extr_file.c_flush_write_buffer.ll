; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_file.c_flush_write_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_file.c_flush_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.configfs_buffer = type { i32, %struct.configfs_item_operations* }
%struct.configfs_item_operations = type { i32 (%struct.config_item*, %struct.configfs_attribute*, i32, i64)* }
%struct.config_item = type opaque
%struct.configfs_attribute = type opaque
%struct.configfs_attribute.0 = type { i32 }
%struct.config_item.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.configfs_buffer*, i64)* @flush_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_write_buffer(%struct.dentry* %0, %struct.configfs_buffer* %1, i64 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.configfs_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.configfs_attribute.0*, align 8
  %8 = alloca %struct.config_item.1*, align 8
  %9 = alloca %struct.configfs_item_operations*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.configfs_buffer* %1, %struct.configfs_buffer** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = call %struct.configfs_attribute.0* @to_attr(%struct.dentry* %10)
  store %struct.configfs_attribute.0* %11, %struct.configfs_attribute.0** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.config_item.1* @to_item(i32 %14)
  store %struct.config_item.1* %15, %struct.config_item.1** %8, align 8
  %16 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %17 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %16, i32 0, i32 1
  %18 = load %struct.configfs_item_operations*, %struct.configfs_item_operations** %17, align 8
  store %struct.configfs_item_operations* %18, %struct.configfs_item_operations** %9, align 8
  %19 = load %struct.configfs_item_operations*, %struct.configfs_item_operations** %9, align 8
  %20 = getelementptr inbounds %struct.configfs_item_operations, %struct.configfs_item_operations* %19, i32 0, i32 0
  %21 = load i32 (%struct.config_item*, %struct.configfs_attribute*, i32, i64)*, i32 (%struct.config_item*, %struct.configfs_attribute*, i32, i64)** %20, align 8
  %22 = load %struct.config_item.1*, %struct.config_item.1** %8, align 8
  %23 = bitcast %struct.config_item.1* %22 to %struct.config_item*
  %24 = load %struct.configfs_attribute.0*, %struct.configfs_attribute.0** %7, align 8
  %25 = bitcast %struct.configfs_attribute.0* %24 to %struct.configfs_attribute*
  %26 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 %21(%struct.config_item* %23, %struct.configfs_attribute* %25, i32 %28, i64 %29)
  ret i32 %30
}

declare dso_local %struct.configfs_attribute.0* @to_attr(%struct.dentry*) #1

declare dso_local %struct.config_item.1* @to_item(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
