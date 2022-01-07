; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_do_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_do_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nilfs_bmap*, i64*)* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i64)* @nilfs_bmap_do_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_bmap_do_truncate(%struct.nilfs_bmap* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nilfs_bmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %9 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.nilfs_bmap*, i64*)*, i32 (%struct.nilfs_bmap*, i64*)** %11, align 8
  %13 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %14 = call i32 %12(%struct.nilfs_bmap* %13, i64* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %58

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %56, %25
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @nilfs_bmap_do_delete(%struct.nilfs_bmap* %31, i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %58

38:                                               ; preds = %30
  %39 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %40 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.nilfs_bmap*, i64*)*, i32 (%struct.nilfs_bmap*, i64*)** %42, align 8
  %44 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %45 = call i32 %43(%struct.nilfs_bmap* %44, i64* %6)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %48
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %38
  br label %26

57:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %54, %36, %23
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @nilfs_bmap_do_delete(%struct.nilfs_bmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
