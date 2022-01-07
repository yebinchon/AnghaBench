; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_get_empty_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_get_empty_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32, %struct.idr_layer*, i32 }
%struct.idr_layer = type { i32, i64, i64, %struct.idr_layer** }

@MAX_LEVEL = common dso_local global i32 0, align 4
@IDR_BITS = common dso_local global i32 0, align 4
@IDR_FULL = common dso_local global i64 0, align 8
@IDR_NEED_TO_GROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idr*, i32, %struct.idr_layer**)* @idr_get_empty_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idr_get_empty_slot(%struct.idr* %0, i32 %1, %struct.idr_layer** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.idr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.idr_layer**, align 8
  %8 = alloca %struct.idr_layer*, align 8
  %9 = alloca %struct.idr_layer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.idr* %0, %struct.idr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.idr_layer** %2, %struct.idr_layer*** %7, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %146, %3
  %16 = load %struct.idr*, %struct.idr** %5, align 8
  %17 = getelementptr inbounds %struct.idr, %struct.idr* %16, i32 0, i32 1
  %18 = load %struct.idr_layer*, %struct.idr_layer** %17, align 8
  store %struct.idr_layer* %18, %struct.idr_layer** %8, align 8
  %19 = load %struct.idr*, %struct.idr** %5, align 8
  %20 = getelementptr inbounds %struct.idr, %struct.idr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  %23 = icmp ne %struct.idr_layer* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %15
  %29 = load %struct.idr*, %struct.idr** %5, align 8
  %30 = call %struct.idr_layer* @get_from_free_list(%struct.idr* %29)
  store %struct.idr_layer* %30, %struct.idr_layer** %8, align 8
  %31 = icmp ne %struct.idr_layer* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %149

33:                                               ; preds = %28
  %34 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  %35 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  store i32 1, i32* %10, align 4
  br label %36

36:                                               ; preds = %33, %15
  br label %37

37:                                               ; preds = %129, %58, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @MAX_LEVEL, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @IDR_BITS, align 4
  %46 = mul nsw i32 %44, %45
  %47 = shl i32 1, %46
  %48 = icmp sge i32 %43, %47
  br label %49

49:                                               ; preds = %42, %37
  %50 = phi i1 [ false, %37 ], [ %48, %42 ]
  br i1 %50, label %51, label %131

51:                                               ; preds = %49
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  %55 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %51
  %59 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  %60 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %37

63:                                               ; preds = %51
  %64 = load %struct.idr*, %struct.idr** %5, align 8
  %65 = call %struct.idr_layer* @get_from_free_list(%struct.idr* %64)
  store %struct.idr_layer* %65, %struct.idr_layer** %9, align 8
  %66 = icmp ne %struct.idr_layer* %65, null
  br i1 %66, label %108, label %67

67:                                               ; preds = %63
  %68 = load %struct.idr*, %struct.idr** %5, align 8
  %69 = getelementptr inbounds %struct.idr, %struct.idr* %68, i32 0, i32 2
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  store %struct.idr_layer* %72, %struct.idr_layer** %9, align 8
  br label %73

73:                                               ; preds = %101, %67
  %74 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  %75 = icmp ne %struct.idr_layer* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  %78 = load %struct.idr*, %struct.idr** %5, align 8
  %79 = getelementptr inbounds %struct.idr, %struct.idr* %78, i32 0, i32 1
  %80 = load %struct.idr_layer*, %struct.idr_layer** %79, align 8
  %81 = icmp ne %struct.idr_layer* %77, %80
  br label %82

82:                                               ; preds = %76, %73
  %83 = phi i1 [ false, %73 ], [ %81, %76 ]
  br i1 %83, label %84, label %103

84:                                               ; preds = %82
  %85 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  %86 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %85, i32 0, i32 3
  %87 = load %struct.idr_layer**, %struct.idr_layer*** %86, align 8
  %88 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %87, i64 0
  %89 = load %struct.idr_layer*, %struct.idr_layer** %88, align 8
  store %struct.idr_layer* %89, %struct.idr_layer** %8, align 8
  %90 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %91 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %90, i32 0, i32 3
  %92 = load %struct.idr_layer**, %struct.idr_layer*** %91, align 8
  %93 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %92, i64 0
  store %struct.idr_layer* null, %struct.idr_layer** %93, align 8
  %94 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %95 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %97 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.idr*, %struct.idr** %5, align 8
  %99 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %100 = call i32 @__move_to_free_list(%struct.idr* %98, %struct.idr_layer* %99)
  br label %101

101:                                              ; preds = %84
  %102 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  store %struct.idr_layer* %102, %struct.idr_layer** %9, align 8
  br label %73

103:                                              ; preds = %82
  %104 = load %struct.idr*, %struct.idr** %5, align 8
  %105 = getelementptr inbounds %struct.idr, %struct.idr* %104, i32 0, i32 2
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  store i32 -1, i32* %4, align 4
  br label %149

108:                                              ; preds = %63
  %109 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  %110 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %111 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %110, i32 0, i32 3
  %112 = load %struct.idr_layer**, %struct.idr_layer*** %111, align 8
  %113 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %112, i64 0
  store %struct.idr_layer* %109, %struct.idr_layer** %113, align 8
  %114 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %115 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %114, i32 0, i32 1
  store i64 1, i64* %115, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %119 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  %121 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @IDR_FULL, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %108
  %126 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  %127 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %126, i32 0, i32 2
  %128 = call i32 @__set_bit(i32 0, i64* %127)
  br label %129

129:                                              ; preds = %125, %108
  %130 = load %struct.idr_layer*, %struct.idr_layer** %9, align 8
  store %struct.idr_layer* %130, %struct.idr_layer** %8, align 8
  br label %37

131:                                              ; preds = %49
  %132 = load %struct.idr*, %struct.idr** %5, align 8
  %133 = getelementptr inbounds %struct.idr, %struct.idr* %132, i32 0, i32 1
  %134 = load %struct.idr_layer*, %struct.idr_layer** %133, align 8
  %135 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  %136 = call i32 @rcu_assign_pointer(%struct.idr_layer* %134, %struct.idr_layer* %135)
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.idr*, %struct.idr** %5, align 8
  %139 = getelementptr inbounds %struct.idr, %struct.idr* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.idr*, %struct.idr** %5, align 8
  %141 = load %struct.idr_layer**, %struct.idr_layer*** %7, align 8
  %142 = call i32 @sub_alloc(%struct.idr* %140, i32* %12, %struct.idr_layer** %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @IDR_NEED_TO_GROW, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %131
  br label %15

147:                                              ; preds = %131
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %147, %103, %32
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.idr_layer* @get_from_free_list(%struct.idr*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__move_to_free_list(%struct.idr*, %struct.idr_layer*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.idr_layer*, %struct.idr_layer*) #1

declare dso_local i32 @sub_alloc(%struct.idr*, i32*, %struct.idr_layer**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
