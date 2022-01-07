; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_sub_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_sub_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32, %struct.idr_layer* }
%struct.idr_layer = type { i64, i32, %struct.idr_layer**, i32 }

@IDR_BITS = common dso_local global i32 0, align 4
@IDR_MASK = common dso_local global i32 0, align 4
@IDR_SIZE = common dso_local global i32 0, align 4
@IDR_NEED_TO_GROW = common dso_local global i32 0, align 4
@MAX_ID_BIT = common dso_local global i32 0, align 4
@IDR_NOMORE_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idr*, i32*, %struct.idr_layer**)* @sub_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sub_alloc(%struct.idr* %0, i32* %1, %struct.idr_layer** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.idr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.idr_layer**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.idr_layer*, align 8
  %12 = alloca %struct.idr_layer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.idr* %0, %struct.idr** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.idr_layer** %2, %struct.idr_layer*** %7, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  br label %19

19:                                               ; preds = %96, %3
  %20 = load %struct.idr*, %struct.idr** %5, align 8
  %21 = getelementptr inbounds %struct.idr, %struct.idr* %20, i32 0, i32 1
  %22 = load %struct.idr_layer*, %struct.idr_layer** %21, align 8
  store %struct.idr_layer* %22, %struct.idr_layer** %11, align 8
  %23 = load %struct.idr*, %struct.idr** %5, align 8
  %24 = getelementptr inbounds %struct.idr, %struct.idr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  %26 = load %struct.idr_layer**, %struct.idr_layer*** %7, align 8
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %13, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %26, i64 %29
  store %struct.idr_layer* null, %struct.idr_layer** %30, align 8
  br label %31

31:                                               ; preds = %19, %95, %160
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @IDR_BITS, align 4
  %34 = load i32, i32* %13, align 4
  %35 = mul nsw i32 %33, %34
  %36 = ashr i32 %32, %35
  %37 = load i32, i32* @IDR_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %40 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = xor i64 %41, -1
  store i64 %42, i64* %16, align 8
  %43 = load i32, i32* @IDR_SIZE, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @find_next_bit(i64* %16, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @IDR_SIZE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %97

49:                                               ; preds = %31
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @IDR_BITS, align 4
  %55 = load i32, i32* %13, align 4
  %56 = mul nsw i32 %54, %55
  %57 = shl i32 1, %56
  %58 = sub nsw i32 %57, 1
  %59 = or i32 %53, %58
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.idr*, %struct.idr** %5, align 8
  %63 = getelementptr inbounds %struct.idr, %struct.idr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IDR_BITS, align 4
  %66 = mul nsw i32 %64, %65
  %67 = shl i32 1, %66
  %68 = icmp sge i32 %61, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %49
  %70 = load i32, i32* %14, align 4
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @IDR_NEED_TO_GROW, align 4
  store i32 %72, i32* %4, align 4
  br label %181

73:                                               ; preds = %49
  %74 = load %struct.idr_layer**, %struct.idr_layer*** %7, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %74, i64 %76
  %78 = load %struct.idr_layer*, %struct.idr_layer** %77, align 8
  store %struct.idr_layer* %78, %struct.idr_layer** %11, align 8
  %79 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %80 = icmp ne %struct.idr_layer* %79, null
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @BUG_ON(i32 %82)
  %84 = load i32, i32* @IDR_BITS, align 4
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  %87 = mul nsw i32 %84, %86
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %10, align 4
  %90 = ashr i32 %88, %89
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %10, align 4
  %93 = ashr i32 %91, %92
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %73
  br label %31

96:                                               ; preds = %73
  br label %19

97:                                               ; preds = %31
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load i32, i32* @IDR_BITS, align 4
  %103 = load i32, i32* %13, align 4
  %104 = mul nsw i32 %102, %103
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %10, align 4
  %107 = ashr i32 %105, %106
  %108 = load i32, i32* %8, align 4
  %109 = xor i32 %107, %108
  %110 = load i32, i32* %9, align 4
  %111 = xor i32 %109, %110
  %112 = load i32, i32* %10, align 4
  %113 = shl i32 %111, %112
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %101, %97
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @MAX_ID_BIT, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118, %114
  %122 = load i32, i32* @IDR_NOMORE_SPACE, align 4
  store i32 %122, i32* %4, align 4
  br label %181

123:                                              ; preds = %118
  %124 = load i32, i32* %13, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %174

127:                                              ; preds = %123
  %128 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %129 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %128, i32 0, i32 2
  %130 = load %struct.idr_layer**, %struct.idr_layer*** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %130, i64 %132
  %134 = load %struct.idr_layer*, %struct.idr_layer** %133, align 8
  %135 = icmp ne %struct.idr_layer* %134, null
  br i1 %135, label %160, label %136

136:                                              ; preds = %127
  %137 = load %struct.idr*, %struct.idr** %5, align 8
  %138 = call %struct.idr_layer* @get_from_free_list(%struct.idr* %137)
  store %struct.idr_layer* %138, %struct.idr_layer** %12, align 8
  %139 = load %struct.idr_layer*, %struct.idr_layer** %12, align 8
  %140 = icmp ne %struct.idr_layer* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  store i32 -1, i32* %4, align 4
  br label %181

142:                                              ; preds = %136
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %143, 1
  %145 = load %struct.idr_layer*, %struct.idr_layer** %12, align 8
  %146 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  %147 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %148 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %147, i32 0, i32 2
  %149 = load %struct.idr_layer**, %struct.idr_layer*** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %149, i64 %151
  %153 = load %struct.idr_layer*, %struct.idr_layer** %152, align 8
  %154 = load %struct.idr_layer*, %struct.idr_layer** %12, align 8
  %155 = call i32 @rcu_assign_pointer(%struct.idr_layer* %153, %struct.idr_layer* %154)
  %156 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %157 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %142, %127
  %161 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %162 = load %struct.idr_layer**, %struct.idr_layer*** %7, align 8
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %13, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %162, i64 %165
  store %struct.idr_layer* %161, %struct.idr_layer** %166, align 8
  %167 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %168 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %167, i32 0, i32 2
  %169 = load %struct.idr_layer**, %struct.idr_layer*** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %169, i64 %171
  %173 = load %struct.idr_layer*, %struct.idr_layer** %172, align 8
  store %struct.idr_layer* %173, %struct.idr_layer** %11, align 8
  br label %31

174:                                              ; preds = %126
  %175 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %176 = load %struct.idr_layer**, %struct.idr_layer*** %7, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %176, i64 %178
  store %struct.idr_layer* %175, %struct.idr_layer** %179, align 8
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %174, %141, %121, %69
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.idr_layer* @get_from_free_list(%struct.idr*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.idr_layer*, %struct.idr_layer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
