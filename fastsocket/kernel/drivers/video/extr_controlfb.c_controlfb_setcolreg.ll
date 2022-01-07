; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_controlfb.c_controlfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_controlfb.c_controlfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_info_control = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @controlfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @controlfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.fb_info_control*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %20 = bitcast %struct.fb_info* %19 to %struct.fb_info_control*
  store %struct.fb_info_control* %20, %struct.fb_info_control** %14, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 255
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %93

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 8
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %10, align 4
  %28 = ashr i32 %27, 8
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %11, align 4
  %30 = ashr i32 %29, 8
  store i32 %30, i32* %17, align 4
  %31 = load %struct.fb_info_control*, %struct.fb_info_control** %14, align 8
  %32 = getelementptr inbounds %struct.fb_info_control, %struct.fb_info_control* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @out_8(i32* %34, i32 %35)
  %37 = load %struct.fb_info_control*, %struct.fb_info_control** %14, align 8
  %38 = getelementptr inbounds %struct.fb_info_control, %struct.fb_info_control* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @out_8(i32* %40, i32 %41)
  %43 = load %struct.fb_info_control*, %struct.fb_info_control** %14, align 8
  %44 = getelementptr inbounds %struct.fb_info_control, %struct.fb_info_control* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @out_8(i32* %46, i32 %47)
  %49 = load %struct.fb_info_control*, %struct.fb_info_control** %14, align 8
  %50 = getelementptr inbounds %struct.fb_info_control, %struct.fb_info_control* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @out_8(i32* %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 16
  br i1 %56, label %57, label %92

57:                                               ; preds = %24
  %58 = load %struct.fb_info_control*, %struct.fb_info_control** %14, align 8
  %59 = getelementptr inbounds %struct.fb_info_control, %struct.fb_info_control* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %91 [
    i32 129, label %62
    i32 128, label %76
  ]

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = shl i32 %63, 10
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %65, 5
  %67 = or i32 %64, %66
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.fb_info_control*, %struct.fb_info_control** %14, align 8
  %71 = getelementptr inbounds %struct.fb_info_control, %struct.fb_info_control* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  br label %91

76:                                               ; preds = %57
  %77 = load i32, i32* %8, align 4
  %78 = shl i32 %77, 8
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %18, align 4
  %82 = shl i32 %81, 16
  %83 = load i32, i32* %18, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.fb_info_control*, %struct.fb_info_control** %14, align 8
  %86 = getelementptr inbounds %struct.fb_info_control, %struct.fb_info_control* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %57, %76, %62
  br label %92

92:                                               ; preds = %91, %24
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %23
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @out_8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
