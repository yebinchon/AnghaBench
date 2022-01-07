; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_clear_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_clear_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.udf_inode_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@MS_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_clear_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MS_RDONLY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = call i32 (...) @lock_kernel()
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = call i32 @udf_truncate_tail_extent(%struct.inode* %14)
  %16 = call i32 (...) @unlock_kernel()
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = call i32 @write_inode_now(%struct.inode* %17, i32 0)
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = call i32 @invalidate_inode_buffers(%struct.inode* %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %22)
  store %struct.udf_inode_info* %23, %struct.udf_inode_info** %3, align 8
  %24 = load %struct.udf_inode_info*, %struct.udf_inode_info** %3, align 8
  %25 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @kfree(i32* %27)
  %29 = load %struct.udf_inode_info*, %struct.udf_inode_info** %3, align 8
  %30 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  ret void
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @udf_truncate_tail_extent(%struct.inode*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @invalidate_inode_buffers(%struct.inode*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
