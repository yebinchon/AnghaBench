; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_mpage_add_bh_to_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_mpage_add_bh_to_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage_da_data = type { i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EXT4_MAX_TRANS_DATA = common dso_local global i32 0, align 4
@BH_FLAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpage_da_data*, i64, i64, i64)* @mpage_add_bh_to_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpage_add_bh_to_extent(%struct.mpage_da_data* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mpage_da_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mpage_da_data* %0, %struct.mpage_da_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %12 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %15 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %13, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %22 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 8388608, %27
  %29 = icmp sge i32 %20, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %116

31:                                               ; preds = %4
  %32 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %33 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %36 = call i32 @ext4_test_inode_flag(%struct.TYPE_4__* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %71, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @EXT4_MAX_TRANS_DATA, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %116

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %48 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = zext i32 %51 to i64
  %53 = lshr i64 %46, %52
  %54 = add i64 %45, %53
  %55 = load i32, i32* @EXT4_MAX_TRANS_DATA, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ugt i64 %54, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %43
  %59 = load i32, i32* @EXT4_MAX_TRANS_DATA, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %63 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %61, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %58, %43
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70, %31
  %72 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %73 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %79 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %7, align 8
  %81 = trunc i64 %80 to i32
  %82 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %83 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @BH_FLAGS, align 8
  %86 = and i64 %84, %85
  %87 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %88 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  br label %119

89:                                               ; preds = %71
  %90 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %91 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %89
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @BH_FLAGS, align 8
  %102 = and i64 %100, %101
  %103 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %104 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load i64, i64* %7, align 8
  %109 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %110 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = add i64 %112, %108
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 8
  br label %119

115:                                              ; preds = %99, %89
  br label %116

116:                                              ; preds = %115, %42, %30
  %117 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %118 = call i32 @mpage_da_map_and_submit(%struct.mpage_da_data* %117)
  br label %119

119:                                              ; preds = %116, %107, %76
  ret void
}

declare dso_local i32 @ext4_test_inode_flag(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mpage_da_map_and_submit(%struct.mpage_da_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
