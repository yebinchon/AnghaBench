; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_check.c_delete_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_check.c_delete_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.disk_part_tbl* }
%struct.disk_part_tbl = type { i32, %struct.hd_struct*, %struct.hd_struct** }
%struct.hd_struct = type { i32, i32 }

@delete_partition_rcu_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_partition(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.disk_part_tbl*, align 8
  %6 = alloca %struct.hd_struct*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i32 0, i32 0
  %9 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %8, align 8
  store %struct.disk_part_tbl* %9, %struct.disk_part_tbl** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %5, align 8
  %12 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %5, align 8
  %18 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %17, i32 0, i32 2
  %19 = load %struct.hd_struct**, %struct.hd_struct*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hd_struct*, %struct.hd_struct** %19, i64 %21
  %23 = load %struct.hd_struct*, %struct.hd_struct** %22, align 8
  store %struct.hd_struct* %23, %struct.hd_struct** %6, align 8
  %24 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %25 = icmp ne %struct.hd_struct* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %54

27:                                               ; preds = %16
  %28 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %5, align 8
  %29 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %28, i32 0, i32 2
  %30 = load %struct.hd_struct**, %struct.hd_struct*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.hd_struct*, %struct.hd_struct** %30, i64 %32
  %34 = load %struct.hd_struct*, %struct.hd_struct** %33, align 8
  %35 = call i32 @rcu_assign_pointer(%struct.hd_struct* %34, i32* null)
  %36 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %5, align 8
  %37 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %36, i32 0, i32 1
  %38 = load %struct.hd_struct*, %struct.hd_struct** %37, align 8
  %39 = call i32 @rcu_assign_pointer(%struct.hd_struct* %38, i32* null)
  %40 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %41 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kobject_put(i32 %42)
  %44 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %45 = call i32 @part_to_dev(%struct.hd_struct* %44)
  %46 = call i32 @device_del(i32 %45)
  %47 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %48 = call i32 @part_devt(%struct.hd_struct* %47)
  %49 = call i32 @blk_free_devt(i32 %48)
  %50 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %51 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %50, i32 0, i32 0
  %52 = load i32, i32* @delete_partition_rcu_cb, align 4
  %53 = call i32 @call_rcu(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %27, %26, %15
  ret void
}

declare dso_local i32 @rcu_assign_pointer(%struct.hd_struct*, i32*) #1

declare dso_local i32 @kobject_put(i32) #1

declare dso_local i32 @device_del(i32) #1

declare dso_local i32 @part_to_dev(%struct.hd_struct*) #1

declare dso_local i32 @blk_free_devt(i32) #1

declare dso_local i32 @part_devt(%struct.hd_struct*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
