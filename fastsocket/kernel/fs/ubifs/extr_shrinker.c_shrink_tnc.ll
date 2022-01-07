; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_shrinker.c_shrink_tnc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_shrinker.c_shrink_tnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.ubifs_znode = type { i64, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@ubifs_clean_zn_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i32*)* @shrink_tnc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shrink_tnc(%struct.ubifs_info* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_znode*, align 8
  %12 = alloca %struct.ubifs_znode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = call i32 (...) @get_seconds()
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 3
  %18 = call i32 @mutex_is_locked(i32* %17)
  %19 = call i32 @ubifs_assert(i32 %18)
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 2
  %22 = call i32 @mutex_is_locked(i32* %21)
  %23 = call i32 @ubifs_assert(i32 %22)
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 1
  %32 = call i64 @atomic_long_read(i32* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %4
  store i32 0, i32* %5, align 4
  br label %138

35:                                               ; preds = %29
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %12, align 8
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call %struct.ubifs_znode* @ubifs_tnc_levelorder_next(i32* %39, %struct.ubifs_znode* null)
  store %struct.ubifs_znode* %40, %struct.ubifs_znode** %11, align 8
  br label %41

41:                                               ; preds = %127, %35
  %42 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %43 = icmp ne %struct.ubifs_znode* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 1
  %51 = call i64 @atomic_long_read(i32* %50)
  %52 = icmp sgt i64 %51, 0
  br label %53

53:                                               ; preds = %48, %44, %41
  %54 = phi i1 [ false, %44 ], [ false, %41 ], [ %52, %48 ]
  br i1 %54, label %55, label %136

55:                                               ; preds = %53
  %56 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %57 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32*, i32** %9, align 8
  store i32 1, i32* %61, align 4
  br label %116

62:                                               ; preds = %55
  %63 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %64 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %115, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %70 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = call i32 @abs(i64 %72)
  %74 = load i32, i32* %8, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %115

76:                                               ; preds = %66
  %77 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %78 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = icmp ne %struct.TYPE_5__* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %83 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %88 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32* null, i32** %91, align 8
  br label %96

92:                                               ; preds = %76
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %94 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %92, %81
  %97 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %98 = call i32 @ubifs_destroy_tnc_subtree(%struct.ubifs_znode* %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @atomic_long_sub(i32 %99, i32* @ubifs_clean_zn_cnt)
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %103 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %102, i32 0, i32 1
  %104 = call i32 @atomic_long_sub(i32 %101, i32* %103)
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %106 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %105, i32 0, i32 1
  %107 = call i64 @atomic_long_read(i32* %106)
  %108 = icmp sge i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @ubifs_assert(i32 %109)
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %10, align 4
  %114 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %114, %struct.ubifs_znode** %11, align 8
  br label %115

115:                                              ; preds = %96, %66, %62
  br label %116

116:                                              ; preds = %115, %60
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %118 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %136

127:                                              ; preds = %116
  %128 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  store %struct.ubifs_znode* %128, %struct.ubifs_znode** %12, align 8
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %130 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %134 = call %struct.ubifs_znode* @ubifs_tnc_levelorder_next(i32* %132, %struct.ubifs_znode* %133)
  store %struct.ubifs_znode* %134, %struct.ubifs_znode** %11, align 8
  %135 = call i32 (...) @cond_resched()
  br label %41

136:                                              ; preds = %126, %53
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %34
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local %struct.ubifs_znode* @ubifs_tnc_levelorder_next(i32*, %struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @ubifs_destroy_tnc_subtree(%struct.ubifs_znode*) #1

declare dso_local i32 @atomic_long_sub(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
