; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_write_cache_jdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_write_cache_jdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32 }
%struct.writeback_control = type { i32, i32, i32, i64, i64, i64 }
%struct.pagevec = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@PAGEVEC_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*)* @gfs2_write_cache_jdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_write_cache_jdata(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.backing_dev_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pagevec, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %15 = load %struct.address_space*, %struct.address_space** %4, align 8
  %16 = getelementptr inbounds %struct.address_space, %struct.address_space* %15, i32 0, i32 1
  %17 = load %struct.backing_dev_info*, %struct.backing_dev_info** %16, align 8
  store %struct.backing_dev_info* %17, %struct.backing_dev_info** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %19 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.backing_dev_info*, %struct.backing_dev_info** %6, align 8
  %24 = call i64 @bdi_write_congested(%struct.backing_dev_info* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %28 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  store i32 0, i32* %3, align 4
  br label %128

29:                                               ; preds = %22, %2
  %30 = call i32 @pagevec_init(%struct.pagevec* %9, i32 0)
  %31 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %32 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.address_space*, %struct.address_space** %4, align 8
  %37 = getelementptr inbounds %struct.address_space, %struct.address_space* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %62

39:                                               ; preds = %29
  %40 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %41 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %44 = ashr i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %46 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %49 = ashr i32 %47, %48
  store i32 %49, i32* %12, align 4
  %50 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %51 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %39
  %55 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %56 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @LLONG_MAX, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %14, align 4
  br label %61

61:                                               ; preds = %60, %54, %39
  store i32 1, i32* %13, align 4
  br label %62

62:                                               ; preds = %61, %35
  br label %63

63:                                               ; preds = %108, %62
  br label %64

64:                                               ; preds = %99, %63
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load %struct.address_space*, %struct.address_space** %4, align 8
  %73 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load i64, i64* @PAGEVEC_SIZE, align 8
  %78 = trunc i64 %77 to i32
  %79 = sub nsw i32 %78, 1
  %80 = call i64 @min(i32 %76, i32 %79)
  %81 = add nsw i64 %80, 1
  %82 = call i32 @pagevec_lookup_tag(%struct.pagevec* %9, %struct.address_space* %72, i32* %11, i32 %73, i64 %81)
  store i32 %82, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br label %84

84:                                               ; preds = %71, %67, %64
  %85 = phi i1 [ false, %67 ], [ false, %64 ], [ %83, %71 ]
  br i1 %85, label %86, label %102

86:                                               ; preds = %84
  store i32 1, i32* %13, align 4
  %87 = load %struct.address_space*, %struct.address_space** %4, align 8
  %88 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @gfs2_write_jdata_pagevec(%struct.address_space* %87, %struct.writeback_control* %88, %struct.pagevec* %9, i32 %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 1, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %86
  %96 = load i32, i32* %7, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %98, %95
  %100 = call i32 @pagevec_release(%struct.pagevec* %9)
  %101 = call i32 (...) @cond_resched()
  br label %64

102:                                              ; preds = %84
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  store i32 1, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %63

109:                                              ; preds = %105, %102
  %110 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %111 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %119 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117, %109
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.address_space*, %struct.address_space** %4, align 8
  %125 = getelementptr inbounds %struct.address_space, %struct.address_space* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %122, %117, %114
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %26
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i64 @bdi_write_congested(%struct.backing_dev_info*) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i32 @pagevec_lookup_tag(%struct.pagevec*, %struct.address_space*, i32*, i32, i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @gfs2_write_jdata_pagevec(%struct.address_space*, %struct.writeback_control*, %struct.pagevec*, i32, i32) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
