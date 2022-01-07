; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_count_free_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_count_free_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.extent_position = type { i32, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*)* @udf_count_free_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_count_free_table(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kernel_lb_addr, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.extent_position, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = call i32 (...) @lock_kernel()
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.TYPE_4__* @UDF_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 2
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 0
  store i32 4, i32* %16, align 8
  %17 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %22, %2
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i32 @udf_next_aext(%struct.inode* %19, %struct.extent_position* %9, %struct.kernel_lb_addr* %7, i32* %6, i32 1)
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = lshr i32 %23, %28
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %18

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @brelse(i32* %34)
  %36 = call i32 (...) @unlock_kernel()
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.TYPE_4__* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
