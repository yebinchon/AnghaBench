; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_vmtruncate_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_vmtruncate_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_2__*, %struct.address_space* }
%struct.TYPE_2__ = type { {}* }
%struct.address_space = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmtruncate_range(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 3
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i64 @round_up(i64 %14, i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add nsw i64 1, %17
  %19 = load i64, i64* %9, align 8
  %20 = sub nsw i64 %18, %19
  store i64 %20, i64* %10, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.inode*, i64, i64)**
  %26 = load i32 (%struct.inode*, i64, i64)*, i32 (%struct.inode*, i64, i64)** %25, align 8
  %27 = icmp ne i32 (%struct.inode*, i64, i64)* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %62

31:                                               ; preds = %3
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = call i32 @down_write(i32* %36)
  %38 = load %struct.address_space*, %struct.address_space** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @unmap_mapping_range(%struct.address_space* %38, i64 %39, i64 %40, i32 1)
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.inode*, i64, i64)**
  %47 = load i32 (%struct.inode*, i64, i64)*, i32 (%struct.inode*, i64, i64)** %46, align 8
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 %47(%struct.inode* %48, i64 %49, i64 %50)
  %52 = load %struct.address_space*, %struct.address_space** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @unmap_mapping_range(%struct.address_space* %52, i64 %53, i64 %54, i32 1)
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = call i32 @up_write(i32* %57)
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %31, %28
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @unmap_mapping_range(%struct.address_space*, i64, i64, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
