; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_mst.c_post_read_mst_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_mst.c_post_read_mst_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@NTFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@NTFS_BLOCK_SIZE_BITS = common dso_local global i32 0, align 4
@magic_BAAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @post_read_mst_fixup(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @NTFS_BLOCK_SIZE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 2
  %33 = add nsw i32 %30, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @NTFS_BLOCK_SIZE_BITS, align 4
  %39 = ashr i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %29, %25, %2
  store i32 0, i32* %3, align 4
  br label %108

43:                                               ; preds = %36
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = bitcast %struct.TYPE_3__* %44 to i32*
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = udiv i64 %47, 4
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = bitcast %struct.TYPE_3__* %52 to i32*
  %54 = load i32, i32* @NTFS_BLOCK_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %55, 4
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = getelementptr inbounds i32, i32* %57, i64 -1
  store i32* %58, i32** %10, align 8
  br label %59

59:                                               ; preds = %74, %43
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %7, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @magic_BAAD, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %108

74:                                               ; preds = %63
  %75 = load i32, i32* @NTFS_BLOCK_SIZE, align 4
  %76 = sext i32 %75 to i64
  %77 = udiv i64 %76, 4
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 %77
  store i32* %79, i32** %10, align 8
  br label %59

80:                                               ; preds = %59
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = bitcast %struct.TYPE_3__* %86 to i32*
  %88 = load i32, i32* @NTFS_BLOCK_SIZE, align 4
  %89 = sext i32 %88 to i64
  %90 = udiv i64 %89, 4
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = getelementptr inbounds i32, i32* %91, i64 -1
  store i32* %92, i32** %10, align 8
  br label %93

93:                                               ; preds = %97, %80
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %7, align 4
  %96 = icmp ne i32 %94, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %9, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %10, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @NTFS_BLOCK_SIZE, align 4
  %103 = sext i32 %102 to i64
  %104 = udiv i64 %103, 4
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 %104
  store i32* %106, i32** %10, align 8
  br label %93

107:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %68, %42
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
