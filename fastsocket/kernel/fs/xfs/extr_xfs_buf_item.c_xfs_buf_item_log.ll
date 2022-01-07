; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64* }

@XFS_BLI_DIRTY = common dso_local global i32 0, align 4
@XFS_BLF_SHIFT = common dso_local global i64 0, align 8
@BIT_TO_WORD_SHIFT = common dso_local global i64 0, align 8
@NBWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_buf_item_log(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i32, i32* @XFS_BLI_DIRTY, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @XFS_BLF_SHIFT, align 8
  %23 = lshr i64 %21, %22
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @XFS_BLF_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 %27, %28
  %30 = add i64 %29, 1
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @BIT_TO_WORD_SHIFT, align 8
  %33 = lshr i64 %31, %32
  store i64 %33, i64* %11, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64* %39, i64** %12, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* @NBWORD, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = and i64 %40, %43
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %3
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %48, %49
  %51 = load i32, i32* @NBWORD, align 4
  %52 = sext i32 %51 to i64
  %53 = call i64 @MIN(i64 %50, i64 %52)
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %13, align 8
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = shl i32 1, %57
  %59 = sub nsw i32 %58, 1
  %60 = load i64, i64* %13, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 %59, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i64*, i64** %12, align 8
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %66, %64
  store i64 %67, i64* %65, align 8
  %68 = load i64*, i64** %12, align 8
  %69 = getelementptr inbounds i64, i64* %68, i32 1
  store i64* %69, i64** %12, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %13, align 8
  %72 = sub i64 %70, %71
  store i64 %72, i64* %10, align 8
  br label %74

73:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %74

74:                                               ; preds = %73, %47
  br label %75

75:                                               ; preds = %82, %74
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = sub i64 %76, %77
  %79 = load i32, i32* @NBWORD, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp uge i64 %78, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load i64*, i64** %12, align 8
  %84 = load i64, i64* %83, align 8
  %85 = or i64 %84, 4294967295
  store i64 %85, i64* %83, align 8
  %86 = load i32, i32* @NBWORD, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %10, align 8
  %90 = load i64*, i64** %12, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %12, align 8
  br label %75

92:                                               ; preds = %75
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = sub i64 %93, %94
  store i64 %95, i64* %14, align 8
  %96 = load i64, i64* %14, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load i64, i64* %14, align 8
  %100 = trunc i64 %99 to i32
  %101 = shl i32 1, %100
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %15, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load i64*, i64** %12, align 8
  %106 = load i64, i64* %105, align 8
  %107 = or i64 %106, %104
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %98, %92
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @xfs_buf_item_log_debug(%struct.TYPE_6__* %109, i64 %110, i64 %111)
  ret void
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @xfs_buf_item_log_debug(%struct.TYPE_6__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
