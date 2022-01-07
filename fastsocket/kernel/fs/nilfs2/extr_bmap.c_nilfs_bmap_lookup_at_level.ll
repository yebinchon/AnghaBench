; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_lookup_at_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_lookup_at_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_bmap_lookup_at_level(%struct.nilfs_bmap* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %12 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %11, i32 0, i32 0
  %13 = call i32 @down_read(i32* %12)
  %14 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %15 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.nilfs_bmap*, i32, i32, i32*)**
  %19 = load i32 (%struct.nilfs_bmap*, i32, i32, i32*)*, i32 (%struct.nilfs_bmap*, i32, i32, i32*)** %18, align 8
  %20 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 %19(%struct.nilfs_bmap* %20, i32 %21, i32 %22, i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %45

28:                                               ; preds = %4
  %29 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %30 = call i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %34 = call i32 @nilfs_bmap_get_dat(%struct.nilfs_bmap* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nilfs_dat_translate(i32 %34, i32 %36, i32* %9)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %32
  br label %44

44:                                               ; preds = %43, %28
  br label %45

45:                                               ; preds = %44, %27
  %46 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %47 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %46, i32 0, i32 0
  %48 = call i32 @up_read(i32* %47)
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_dat_translate(i32, i32, i32*) #1

declare dso_local i32 @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
