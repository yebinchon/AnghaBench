; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_sub_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_sub_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i64, %struct.idr_layer* }
%struct.idr_layer = type { i32, %struct.idr_layer**, i32 }

@MAX_LEVEL = common dso_local global i32 0, align 4
@IDR_MASK = common dso_local global i32 0, align 4
@IDR_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idr*, i32, i32)* @sub_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sub_remove(%struct.idr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.idr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.idr_layer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.idr_layer***, align 8
  %11 = alloca %struct.idr_layer*, align 8
  %12 = alloca i32, align 4
  store %struct.idr* %0, %struct.idr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.idr*, %struct.idr** %4, align 8
  %14 = getelementptr inbounds %struct.idr, %struct.idr* %13, i32 0, i32 1
  %15 = load %struct.idr_layer*, %struct.idr_layer** %14, align 8
  store %struct.idr_layer* %15, %struct.idr_layer** %7, align 8
  %16 = load i32, i32* @MAX_LEVEL, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca %struct.idr_layer**, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = getelementptr inbounds %struct.idr_layer**, %struct.idr_layer*** %19, i64 0
  store %struct.idr_layer*** %20, %struct.idr_layer**** %10, align 8
  %21 = load %struct.idr_layer***, %struct.idr_layer**** %10, align 8
  store %struct.idr_layer** null, %struct.idr_layer*** %21, align 8
  %22 = load %struct.idr*, %struct.idr** %4, align 8
  %23 = getelementptr inbounds %struct.idr, %struct.idr* %22, i32 0, i32 1
  %24 = load %struct.idr_layer***, %struct.idr_layer**** %10, align 8
  %25 = getelementptr inbounds %struct.idr_layer**, %struct.idr_layer*** %24, i32 1
  store %struct.idr_layer*** %25, %struct.idr_layer**** %10, align 8
  store %struct.idr_layer** %23, %struct.idr_layer*** %25, align 8
  br label %26

26:                                               ; preds = %34, %3
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %31 = icmp ne %struct.idr_layer* %30, null
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i1 [ false, %26 ], [ %31, %29 ]
  br i1 %33, label %34, label %64

34:                                               ; preds = %32
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %35, %36
  %38 = load i32, i32* @IDR_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %42 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %41, i32 0, i32 2
  %43 = call i32 @__clear_bit(i32 %40, i32* %42)
  %44 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %45 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %44, i32 0, i32 1
  %46 = load %struct.idr_layer**, %struct.idr_layer*** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %46, i64 %48
  %50 = load %struct.idr_layer***, %struct.idr_layer**** %10, align 8
  %51 = getelementptr inbounds %struct.idr_layer**, %struct.idr_layer*** %50, i32 1
  store %struct.idr_layer*** %51, %struct.idr_layer**** %10, align 8
  store %struct.idr_layer** %49, %struct.idr_layer*** %51, align 8
  %52 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %53 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %52, i32 0, i32 1
  %54 = load %struct.idr_layer**, %struct.idr_layer*** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %54, i64 %56
  %58 = load %struct.idr_layer*, %struct.idr_layer** %57, align 8
  store %struct.idr_layer* %58, %struct.idr_layer** %7, align 8
  %59 = load i64, i64* @IDR_BITS, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %26

64:                                               ; preds = %32
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @IDR_MASK, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %12, align 4
  %68 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %69 = icmp ne %struct.idr_layer* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %73 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %72, i32 0, i32 2
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %70, %64
  %77 = phi i1 [ false, %64 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  %79 = call i64 @likely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %136

81:                                               ; preds = %76
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %84 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %83, i32 0, i32 2
  %85 = call i32 @__clear_bit(i32 %82, i32* %84)
  %86 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %87 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %86, i32 0, i32 1
  %88 = load %struct.idr_layer**, %struct.idr_layer*** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %88, i64 %90
  %92 = load %struct.idr_layer*, %struct.idr_layer** %91, align 8
  %93 = call i32 @rcu_assign_pointer(%struct.idr_layer* %92, i32* null)
  store %struct.idr_layer* null, %struct.idr_layer** %11, align 8
  br label %94

94:                                               ; preds = %115, %81
  %95 = load %struct.idr_layer***, %struct.idr_layer**** %10, align 8
  %96 = load %struct.idr_layer**, %struct.idr_layer*** %95, align 8
  %97 = icmp ne %struct.idr_layer** %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load %struct.idr_layer***, %struct.idr_layer**** %10, align 8
  %100 = load %struct.idr_layer**, %struct.idr_layer*** %99, align 8
  %101 = load %struct.idr_layer*, %struct.idr_layer** %100, align 8
  %102 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 8
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br label %107

107:                                              ; preds = %98, %94
  %108 = phi i1 [ false, %94 ], [ %106, %98 ]
  br i1 %108, label %109, label %122

109:                                              ; preds = %107
  %110 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %111 = icmp ne %struct.idr_layer* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %114 = call i32 @free_layer(%struct.idr_layer* %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load %struct.idr_layer***, %struct.idr_layer**** %10, align 8
  %117 = load %struct.idr_layer**, %struct.idr_layer*** %116, align 8
  %118 = load %struct.idr_layer*, %struct.idr_layer** %117, align 8
  store %struct.idr_layer* %118, %struct.idr_layer** %11, align 8
  %119 = load %struct.idr_layer***, %struct.idr_layer**** %10, align 8
  %120 = getelementptr inbounds %struct.idr_layer**, %struct.idr_layer*** %119, i32 -1
  store %struct.idr_layer*** %120, %struct.idr_layer**** %10, align 8
  %121 = load %struct.idr_layer**, %struct.idr_layer*** %119, align 8
  store %struct.idr_layer* null, %struct.idr_layer** %121, align 8
  br label %94

122:                                              ; preds = %107
  %123 = load %struct.idr_layer***, %struct.idr_layer**** %10, align 8
  %124 = load %struct.idr_layer**, %struct.idr_layer*** %123, align 8
  %125 = icmp ne %struct.idr_layer** %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = load %struct.idr*, %struct.idr** %4, align 8
  %128 = getelementptr inbounds %struct.idr, %struct.idr* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %126, %122
  %130 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %131 = icmp ne %struct.idr_layer* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %134 = call i32 @free_layer(%struct.idr_layer* %133)
  br label %135

135:                                              ; preds = %132, %129
  br label %139

136:                                              ; preds = %76
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @idr_remove_warning(i32 %137)
  br label %139

139:                                              ; preds = %136, %135
  %140 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %140)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__clear_bit(i32, i32*) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @rcu_assign_pointer(%struct.idr_layer*, i32*) #2

declare dso_local i32 @free_layer(%struct.idr_layer*) #2

declare dso_local i32 @idr_remove_warning(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
