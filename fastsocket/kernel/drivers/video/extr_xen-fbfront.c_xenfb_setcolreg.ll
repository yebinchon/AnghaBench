; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_xen-fbfront.c_xenfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_xen-fbfront.c_xenfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_12__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @xenfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
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
  %16 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ugt i32 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %104

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %23, %28
  %30 = add i32 %29, 32767
  %31 = load i32, i32* %9, align 4
  %32 = sub i32 %30, %31
  %33 = lshr i32 %32, 16
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %34, %39
  %41 = add i32 %40, 32767
  %42 = load i32, i32* %10, align 4
  %43 = sub i32 %41, %42
  %44 = lshr i32 %43, 16
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %45, %50
  %52 = add i32 %51, 32767
  %53 = load i32, i32* %11, align 4
  %54 = sub i32 %52, %53
  %55 = lshr i32 %54, 16
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %56, %61
  %63 = add i32 %62, 32767
  %64 = load i32, i32* %12, align 4
  %65 = sub i32 %63, %64
  %66 = lshr i32 %65, 16
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %67, %72
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %74, %79
  %81 = or i32 %73, %80
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %82, %87
  %89 = or i32 %81, %88
  store i32 %89, i32* %14, align 4
  %90 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %103 [
    i32 16, label %94
    i32 24, label %94
    i32 32, label %94
  ]

94:                                               ; preds = %22, %22, %22
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %95, i32* %102, align 4
  br label %103

103:                                              ; preds = %22, %94
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %103, %21
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
