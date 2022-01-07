; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_delete_and_convert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_delete_and_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nilfs_bmap*, i32)*, i32 (%struct.nilfs_bmap*)* }
%struct.nilfs_direct = type { i32 }

@NILFS_DIRECT_NBLOCKS = common dso_local global i32 0, align 4
@NILFS_BMAP_INVALID_PTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_direct_delete_and_convert(%struct.nilfs_bmap* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nilfs_bmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nilfs_direct*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %18 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.nilfs_bmap*, i32)*, i32 (%struct.nilfs_bmap*, i32)** %20, align 8
  %22 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 %21(%struct.nilfs_bmap* %22, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %6, align 4
  br label %99

29:                                               ; preds = %5
  %30 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %31 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (%struct.nilfs_bmap*)*, i32 (%struct.nilfs_bmap*)** %33, align 8
  %35 = icmp ne i32 (%struct.nilfs_bmap*)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %38 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.nilfs_bmap*)*, i32 (%struct.nilfs_bmap*)** %40, align 8
  %42 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %43 = call i32 %41(%struct.nilfs_bmap* %42)
  br label %44

44:                                               ; preds = %36, %29
  %45 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %46 = bitcast %struct.nilfs_bmap* %45 to %struct.nilfs_direct*
  store %struct.nilfs_direct* %46, %struct.nilfs_direct** %12, align 8
  %47 = load %struct.nilfs_direct*, %struct.nilfs_direct** %12, align 8
  %48 = call i32* @nilfs_direct_dptrs(%struct.nilfs_direct* %47)
  store i32* %48, i32** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %49

49:                                               ; preds = %93, %44
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @NILFS_DIRECT_NBLOCKS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %96

53:                                               ; preds = %49
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = load i32, i32* %15, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %58, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %57
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nilfs_bmap_ptr_to_dptr(i32 %74)
  br label %78

76:                                               ; preds = %65
  %77 = load i32, i32* @NILFS_BMAP_INVALID_PTR, align 4
  br label %78

78:                                               ; preds = %76, %69
  %79 = phi i32 [ %75, %69 ], [ %77, %76 ]
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  br label %92

86:                                               ; preds = %57, %53
  %87 = load i32, i32* @NILFS_BMAP_INVALID_PTR, align 4
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %86, %78
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %49

96:                                               ; preds = %49
  %97 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %98 = call i32 @nilfs_direct_init(%struct.nilfs_bmap* %97)
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %96, %27
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32* @nilfs_direct_dptrs(%struct.nilfs_direct*) #1

declare dso_local i32 @nilfs_bmap_ptr_to_dptr(i32) #1

declare dso_local i32 @nilfs_direct_init(%struct.nilfs_bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
