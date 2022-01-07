; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_data.c_xfs_dir2_data_log_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_data.c_xfs_dir2_data_log_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@XFS_DIR2_DATA_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_BLOCK_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir2_data_log_entry(i32* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @be32_to_cpu(i32 %14)
  %16 = load i64, i64* @XFS_DIR2_DATA_MAGIC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be32_to_cpu(i32 %22)
  %24 = load i64, i64* @XFS_DIR2_BLOCK_MAGIC, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %18, %3
  %27 = phi i1 [ true, %3 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = bitcast i32* %32 to i8*
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = bitcast %struct.TYPE_7__* %34 to i8*
  %36 = ptrtoint i8* %33 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @xfs_dir2_data_entry_tag_p(i32* %40)
  %42 = add nsw i64 %41, 1
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = bitcast %struct.TYPE_7__* %44 to i8*
  %46 = ptrtoint i8* %43 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sub nsw i64 %48, 1
  %50 = trunc i64 %49 to i32
  %51 = call i32 @xfs_da_log_buf(i32* %30, %struct.TYPE_8__* %31, i32 %39, i32 %50)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_da_log_buf(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @xfs_dir2_data_entry_tag_p(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
