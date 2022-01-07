; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_macfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_macfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_10__, i64, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @macfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp uge i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %179

21:                                               ; preds = %6
  %22 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 8
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %43 [
    i32 1, label %32
    i32 2, label %33
    i32 4, label %33
    i32 8, label %33
  ]

32:                                               ; preds = %27
  br label %43

33:                                               ; preds = %27, %27, %27
  br i1 true, label %34, label %41

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %40 = call i32 @macfb_setpalette(i32 %35, i32 %36, i32 %37, i32 %38, %struct.fb_info* %39)
  br label %42

41:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %179

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %27, %42, %32
  br label %178

44:                                               ; preds = %21
  %45 = load i32, i32* %8, align 4
  %46 = icmp ult i32 %45, 16
  br i1 %46, label %47, label %177

47:                                               ; preds = %44
  %48 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %176 [
    i32 16, label %52
    i32 24, label %102
    i32 32, label %139
  ]

52:                                               ; preds = %47
  %53 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %59, label %83

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 63488
  %62 = lshr i32 %61, 1
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, 63488
  %65 = lshr i32 %64, 6
  %66 = or i32 %62, %65
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, 63488
  %69 = lshr i32 %68, 11
  %70 = or i32 %66, %69
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = shl i32 %73, 15
  %75 = or i32 %70, %74
  %76 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %77 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %75, i32* %82, align 4
  br label %101

83:                                               ; preds = %52
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, 63488
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %86, 64512
  %88 = lshr i32 %87, 5
  %89 = or i32 %85, %88
  %90 = load i32, i32* %11, align 4
  %91 = and i32 %90, 63488
  %92 = lshr i32 %91, 11
  %93 = or i32 %89, %92
  %94 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %95 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %93, i32* %100, align 4
  br label %101

101:                                              ; preds = %83, %59
  br label %176

102:                                              ; preds = %47
  %103 = load i32, i32* %9, align 4
  %104 = lshr i32 %103, 8
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = lshr i32 %105, 8
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = lshr i32 %107, 8
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %109, %114
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %118 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 %116, %121
  %123 = or i32 %115, %122
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %126 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %124, %129
  %131 = or i32 %123, %130
  %132 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %133 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i32*
  %136 = load i32, i32* %8, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %131, i32* %138, align 4
  br label %176

139:                                              ; preds = %47
  %140 = load i32, i32* %9, align 4
  %141 = lshr i32 %140, 8
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %10, align 4
  %143 = lshr i32 %142, 8
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = lshr i32 %144, 8
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %148 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %146, %151
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %155 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = shl i32 %153, %158
  %160 = or i32 %152, %159
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %163 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %161, %166
  %168 = or i32 %160, %167
  %169 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %170 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to i32*
  %173 = load i32, i32* %8, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %168, i32* %175, align 4
  br label %176

176:                                              ; preds = %47, %139, %102, %101
  br label %177

177:                                              ; preds = %176, %44
  br label %178

178:                                              ; preds = %177, %43
  store i32 0, i32* %7, align 4
  br label %179

179:                                              ; preds = %178, %41, %20
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

declare dso_local i32 @macfb_setpalette(i32, i32, i32, i32, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
