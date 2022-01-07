; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_allocator.c_uwb_rsv_find_best_allocation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_allocator.c_uwb_rsv_find_best_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i32, i32, i32 }
%struct.uwb_mas_bm = type { i32, i32, i32, i32 }
%struct.uwb_rsv_alloc_info = type { i32, i64*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@UWB_NUM_MAS = common dso_local global i32 0, align 4
@UWB_RSV_MAS_NOT_AVAIL = common dso_local global i64 0, align 8
@UWB_RSV_ALLOC_FOUND = common dso_local global i64 0, align 8
@UWB_RSV_MAS_SAFE = common dso_local global i64 0, align 8
@UWB_RSV_MAS_UNSAFE = common dso_local global i64 0, align 8
@UWB_RSV_ALLOC_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rsv_find_best_allocation(%struct.uwb_rsv* %0, %struct.uwb_mas_bm* %1, %struct.uwb_mas_bm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwb_rsv*, align 8
  %6 = alloca %struct.uwb_mas_bm*, align 8
  %7 = alloca %struct.uwb_mas_bm*, align 8
  %8 = alloca %struct.uwb_rsv_alloc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uwb_rsv* %0, %struct.uwb_rsv** %5, align 8
  store %struct.uwb_mas_bm* %1, %struct.uwb_mas_bm** %6, align 8
  store %struct.uwb_mas_bm* %2, %struct.uwb_mas_bm** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.uwb_rsv_alloc_info* @kzalloc(i32 32, i32 %11)
  store %struct.uwb_rsv_alloc_info* %12, %struct.uwb_rsv_alloc_info** %8, align 8
  %13 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %14 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %17 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %19 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %22 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %24 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %27 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %48, %3
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @UWB_NUM_MAS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %6, align 8
  %35 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @test_bit(i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* @UWB_RSV_MAS_NOT_AVAIL, align 8
  %41 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %42 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %40, i64* %46, align 8
  br label %47

47:                                               ; preds = %39, %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %53 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %58 = call i32 @get_row_descriptors(%struct.uwb_rsv_alloc_info* %57)
  %59 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %60 = call i64 @uwb_rsv_find_best_row_alloc(%struct.uwb_rsv_alloc_info* %59)
  %61 = load i64, i64* @UWB_RSV_ALLOC_FOUND, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %98

64:                                               ; preds = %56
  br label %176

65:                                               ; preds = %51
  %66 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %67 = call i32 @get_column_descriptors(%struct.uwb_rsv_alloc_info* %66)
  store i32 16, i32* %9, align 4
  br label %68

68:                                               ; preds = %86, %65
  %69 = load i32, i32* %9, align 4
  %70 = icmp sge i32 %69, 2
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %74 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %86

78:                                               ; preds = %71
  %79 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @uwb_rsv_find_best_col_alloc(%struct.uwb_rsv_alloc_info* %79, i32 %80)
  %82 = load i64, i64* @UWB_RSV_ALLOC_FOUND, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %98

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %77
  %87 = load i32, i32* %9, align 4
  %88 = ashr i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %68

89:                                               ; preds = %68
  %90 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %91 = call i32 @get_row_descriptors(%struct.uwb_rsv_alloc_info* %90)
  %92 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %93 = call i64 @uwb_rsv_find_best_row_alloc(%struct.uwb_rsv_alloc_info* %92)
  %94 = load i64, i64* @UWB_RSV_ALLOC_FOUND, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %98

97:                                               ; preds = %89
  br label %176

98:                                               ; preds = %96, %84, %63
  %99 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %7, align 8
  %100 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @UWB_NUM_MAS, align 4
  %103 = call i32 @bitmap_zero(i32 %101, i32 %102)
  %104 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %7, align 8
  %105 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @UWB_NUM_MAS, align 4
  %108 = call i32 @bitmap_zero(i32 %106, i32 %107)
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %147, %98
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @UWB_NUM_MAS, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %150

113:                                              ; preds = %109
  %114 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %115 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @UWB_RSV_MAS_SAFE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %7, align 8
  %126 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @set_bit(i32 %124, i32 %127)
  br label %146

129:                                              ; preds = %113
  %130 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %131 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %130, i32 0, i32 1
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @UWB_RSV_MAS_UNSAFE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %129
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %7, align 8
  %142 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @set_bit(i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %139, %129
  br label %146

146:                                              ; preds = %145, %123
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %109

150:                                              ; preds = %109
  %151 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %7, align 8
  %152 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %7, align 8
  %155 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %7, align 8
  %158 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @UWB_NUM_MAS, align 4
  %161 = call i32 @bitmap_or(i32 %153, i32 %156, i32 %159, i32 %160)
  %162 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %163 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %7, align 8
  %166 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %168 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %7, align 8
  %171 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %173 = call i32 @kfree(%struct.uwb_rsv_alloc_info* %172)
  %174 = load i64, i64* @UWB_RSV_ALLOC_FOUND, align 8
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %4, align 4
  br label %180

176:                                              ; preds = %97, %64
  %177 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %8, align 8
  %178 = call i32 @kfree(%struct.uwb_rsv_alloc_info* %177)
  %179 = load i32, i32* @UWB_RSV_ALLOC_NOT_FOUND, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %176, %150
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local %struct.uwb_rsv_alloc_info* @kzalloc(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @get_row_descriptors(%struct.uwb_rsv_alloc_info*) #1

declare dso_local i64 @uwb_rsv_find_best_row_alloc(%struct.uwb_rsv_alloc_info*) #1

declare dso_local i32 @get_column_descriptors(%struct.uwb_rsv_alloc_info*) #1

declare dso_local i64 @uwb_rsv_find_best_col_alloc(%struct.uwb_rsv_alloc_info*, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @bitmap_or(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.uwb_rsv_alloc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
