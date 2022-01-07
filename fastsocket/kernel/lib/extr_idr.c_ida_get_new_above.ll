; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_ida_get_new_above.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_ida_get_new_above.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida = type { %struct.TYPE_3__, %struct.ida_bitmap* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ida_bitmap = type { i32, i32 }
%struct.idr_layer = type { i32, i64* }

@MAX_LEVEL = common dso_local global i32 0, align 4
@IDA_BITMAP_BITS = common dso_local global i32 0, align 4
@MAX_ID_BIT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@IDR_MASK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@idr_layer_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ida_get_new_above(%struct.ida* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ida*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ida_bitmap*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.idr_layer*, align 8
  store %struct.ida* %0, %struct.ida** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %18 = load i32, i32* @MAX_LEVEL, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca %struct.idr_layer*, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %120, %3
  %29 = load %struct.ida*, %struct.ida** %5, align 8
  %30 = getelementptr inbounds %struct.ida, %struct.ida* %29, i32 0, i32 0
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @idr_get_empty_slot(%struct.TYPE_3__* %30, i32 %31, %struct.idr_layer** %21)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @_idr_rc_to_errno(i32 %36)
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %175

38:                                               ; preds = %28
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* @MAX_ID_BIT, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOSPC, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %175

47:                                               ; preds = %38
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %12, align 4
  %54 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %21, i64 0
  %55 = load %struct.idr_layer*, %struct.idr_layer** %54, align 16
  %56 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @IDR_MASK, align 4
  %60 = and i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %57, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = bitcast i8* %64 to %struct.ida_bitmap*
  store %struct.ida_bitmap* %65, %struct.ida_bitmap** %10, align 8
  %66 = load %struct.ida_bitmap*, %struct.ida_bitmap** %10, align 8
  %67 = icmp ne %struct.ida_bitmap* %66, null
  br i1 %67, label %110, label %68

68:                                               ; preds = %52
  %69 = load %struct.ida*, %struct.ida** %5, align 8
  %70 = getelementptr inbounds %struct.ida, %struct.ida* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.ida*, %struct.ida** %5, align 8
  %75 = getelementptr inbounds %struct.ida, %struct.ida* %74, i32 0, i32 1
  %76 = load %struct.ida_bitmap*, %struct.ida_bitmap** %75, align 8
  store %struct.ida_bitmap* %76, %struct.ida_bitmap** %10, align 8
  %77 = load %struct.ida*, %struct.ida** %5, align 8
  %78 = getelementptr inbounds %struct.ida, %struct.ida* %77, i32 0, i32 1
  store %struct.ida_bitmap* null, %struct.ida_bitmap** %78, align 8
  %79 = load %struct.ida*, %struct.ida** %5, align 8
  %80 = getelementptr inbounds %struct.ida, %struct.ida* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load %struct.ida_bitmap*, %struct.ida_bitmap** %10, align 8
  %85 = icmp ne %struct.ida_bitmap* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %68
  %87 = load i32, i32* @EAGAIN, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %175

89:                                               ; preds = %68
  %90 = load %struct.ida_bitmap*, %struct.ida_bitmap** %10, align 8
  %91 = call i32 @memset(%struct.ida_bitmap* %90, i32 0, i32 8)
  %92 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %21, i64 0
  %93 = load %struct.idr_layer*, %struct.idr_layer** %92, align 16
  %94 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @IDR_MASK, align 4
  %98 = and i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %95, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.ida_bitmap*, %struct.ida_bitmap** %10, align 8
  %103 = bitcast %struct.ida_bitmap* %102 to i8*
  %104 = call i32 @rcu_assign_pointer(i64 %101, i8* %103)
  %105 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %21, i64 0
  %106 = load %struct.idr_layer*, %struct.idr_layer** %105, align 16
  %107 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %89, %52
  %111 = load %struct.ida_bitmap*, %struct.ida_bitmap** %10, align 8
  %112 = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @find_next_zero_bit(i32 %113, i32 %114, i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %28

123:                                              ; preds = %110
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @MAX_ID_BIT, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load i32, i32* @ENOSPC, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %175

135:                                              ; preds = %123
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.ida_bitmap*, %struct.ida_bitmap** %10, align 8
  %138 = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @__set_bit(i32 %136, i32 %139)
  %141 = load %struct.ida_bitmap*, %struct.ida_bitmap** %10, align 8
  %142 = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %135
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @idr_mark_full(%struct.idr_layer** %21, i32 %148)
  br label %150

150:                                              ; preds = %147, %135
  %151 = load i32, i32* %15, align 4
  %152 = load i32*, i32** %7, align 8
  store i32 %151, i32* %152, align 4
  %153 = load %struct.ida*, %struct.ida** %5, align 8
  %154 = getelementptr inbounds %struct.ida, %struct.ida* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %150
  %159 = load %struct.ida*, %struct.ida** %5, align 8
  %160 = getelementptr inbounds %struct.ida, %struct.ida* %159, i32 0, i32 1
  %161 = load %struct.ida_bitmap*, %struct.ida_bitmap** %160, align 8
  %162 = icmp ne %struct.ida_bitmap* %161, null
  br i1 %162, label %163, label %174

163:                                              ; preds = %158, %150
  %164 = load %struct.ida*, %struct.ida** %5, align 8
  %165 = getelementptr inbounds %struct.ida, %struct.ida* %164, i32 0, i32 0
  %166 = call %struct.idr_layer* @get_from_free_list(%struct.TYPE_3__* %165)
  store %struct.idr_layer* %166, %struct.idr_layer** %17, align 8
  %167 = load %struct.idr_layer*, %struct.idr_layer** %17, align 8
  %168 = icmp ne %struct.idr_layer* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load i32, i32* @idr_layer_cache, align 4
  %171 = load %struct.idr_layer*, %struct.idr_layer** %17, align 8
  %172 = call i32 @kmem_cache_free(i32 %170, %struct.idr_layer* %171)
  br label %173

173:                                              ; preds = %169, %163
  br label %174

174:                                              ; preds = %173, %158
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %175

175:                                              ; preds = %174, %132, %86, %44, %35
  %176 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @idr_get_empty_slot(%struct.TYPE_3__*, i32, %struct.idr_layer**) #2

declare dso_local i32 @_idr_rc_to_errno(i32) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @memset(%struct.ida_bitmap*, i32, i32) #2

declare dso_local i32 @rcu_assign_pointer(i64, i8*) #2

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #2

declare dso_local i32 @__set_bit(i32, i32) #2

declare dso_local i32 @idr_mark_full(%struct.idr_layer**, i32) #2

declare dso_local %struct.idr_layer* @get_from_free_list(%struct.TYPE_3__*) #2

declare dso_local i32 @kmem_cache_free(i32, %struct.idr_layer*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
