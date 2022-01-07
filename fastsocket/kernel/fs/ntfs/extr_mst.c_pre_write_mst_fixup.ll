; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_mst.c_pre_write_mst_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_mst.c_pre_write_mst_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NTFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@NTFS_BLOCK_SIZE_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pre_write_mst_fixup(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ntfs_is_baad_record(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntfs_is_hole_record(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %14, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %108

29:                                               ; preds = %20
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @NTFS_BLOCK_SIZE, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %50, 2
  %52 = add nsw i32 %49, %51
  %53 = load i32, i32* %5, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @NTFS_BLOCK_SIZE_BITS, align 4
  %58 = ashr i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55, %48, %44, %29
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %108

64:                                               ; preds = %55
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = bitcast %struct.TYPE_3__* %65 to i32*
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32* %69, i32** %6, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @le16_to_cpup(i32* %70)
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 65535
  br i1 %74, label %78, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75, %64
  store i32 1, i32* %10, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @cpu_to_le16(i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = bitcast %struct.TYPE_3__* %84 to i32*
  %86 = load i32, i32* @NTFS_BLOCK_SIZE, align 4
  %87 = sext i32 %86 to i64
  %88 = udiv i64 %87, 4
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = getelementptr inbounds i32, i32* %89, i64 -1
  store i32* %90, i32** %7, align 8
  br label %91

91:                                               ; preds = %95, %79
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %9, align 4
  %94 = icmp ne i32 %92, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %6, align 8
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @NTFS_BLOCK_SIZE, align 4
  %103 = sext i32 %102 to i64
  %104 = udiv i64 %103, 4
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 %104
  store i32* %106, i32** %7, align 8
  br label %91

107:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %61, %26
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @ntfs_is_baad_record(i32) #1

declare dso_local i64 @ntfs_is_hole_record(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
