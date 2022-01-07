; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_68328fb.c_mc68x328fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_68328fb.c_mc68x328fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_12__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @mc68x328fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc68x328fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 256
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %176

18:                                               ; preds = %6
  %19 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %25, 77
  %27 = load i32, i32* %10, align 4
  %28 = mul nsw i32 %27, 151
  %29 = add nsw i32 %26, %28
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 %30, 28
  %32 = add nsw i32 %29, %31
  %33 = ashr i32 %32, 8
  store i32 %33, i32* %11, align 4
  store i32 %33, i32* %10, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %24, %18
  %35 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %109 [
    i32 128, label %39
    i32 129, label %39
    i32 130, label %84
  ]

39:                                               ; preds = %34, %34
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %40, %45
  %47 = add nsw i32 %46, 32767
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %47, %48
  %50 = ashr i32 %49, 16
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %51, %56
  %58 = add nsw i32 %57, 32767
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  %61 = ashr i32 %60, 16
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %62, %67
  %69 = add nsw i32 %68, 32767
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %69, %70
  %72 = ashr i32 %71, 16
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %73, %78
  %80 = add nsw i32 %79, 32767
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 %80, %81
  %83 = ashr i32 %82, 16
  store i32 %83, i32* %12, align 4
  br label %109

84:                                               ; preds = %34
  %85 = load i32, i32* %9, align 4
  %86 = shl i32 %85, 8
  %87 = add nsw i32 %86, 32767
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %87, %88
  %90 = ashr i32 %89, 16
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = shl i32 %91, 8
  %93 = add nsw i32 %92, 32767
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %93, %94
  %96 = ashr i32 %95, 16
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = shl i32 %97, 8
  %99 = add nsw i32 %98, 32767
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %99, %100
  %102 = ashr i32 %101, 16
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = shl i32 %103, 8
  %105 = add nsw i32 %104, 32767
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %105, %106
  %108 = ashr i32 %107, 16
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %34, %84, %39
  %110 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 128
  br i1 %114, label %115, label %175

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  %117 = icmp sge i32 %116, 16
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 1, i32* %7, align 4
  br label %176

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %122 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %120, %125
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %129 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %127, %132
  %134 = or i32 %126, %133
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %137 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %135, %140
  %142 = or i32 %134, %141
  %143 = load i32, i32* %12, align 4
  %144 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %145 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %143, %148
  %150 = or i32 %142, %149
  store i32 %150, i32* %14, align 4
  %151 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %152 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  switch i32 %154, label %174 [
    i32 8, label %155
    i32 16, label %156
    i32 24, label %165
    i32 32, label %165
  ]

155:                                              ; preds = %119
  br label %174

156:                                              ; preds = %119
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %159 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to i32*
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %157, i32* %164, align 4
  br label %174

165:                                              ; preds = %119, %119
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %168 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %166, i32* %173, align 4
  br label %174

174:                                              ; preds = %119, %165, %156, %155
  store i32 0, i32* %7, align 4
  br label %176

175:                                              ; preds = %109
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %175, %174, %118, %17
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
