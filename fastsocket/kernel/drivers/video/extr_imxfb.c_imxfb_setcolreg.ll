; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imxfb.c_imxfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imxfb.c_imxfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__, %struct.imxfb_info* }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.imxfb_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @imxfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_info*, align 8
  %13 = alloca %struct.imxfb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.fb_info* %5, %struct.fb_info** %12, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 3
  %19 = load %struct.imxfb_info*, %struct.imxfb_info** %18, align 8
  store %struct.imxfb_info* %19, %struct.imxfb_info** %13, align 8
  store i32 1, i32* %15, align 4
  %20 = load %struct.imxfb_info*, %struct.imxfb_info** %13, align 8
  %21 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %6
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 65535, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 65535, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 65535, %29
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %24, %6
  %32 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 19595, %38
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 38470, %40
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 7471, %43
  %45 = add nsw i32 %42, %44
  %46 = ashr i32 %45, 16
  store i32 %46, i32* %10, align 4
  store i32 %46, i32* %9, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %37, %31
  %48 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %92 [
    i32 128, label %52
    i32 129, label %84
    i32 130, label %84
  ]

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 16
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %16, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = call i32 @chan_to_field(i32 %59, i32* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = call i32 @chan_to_field(i32 %64, i32* %67)
  %69 = load i32, i32* %14, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %73 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @chan_to_field(i32 %71, i32* %74)
  %76 = load i32, i32* %14, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32*, i32** %16, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %55, %52
  br label %92

84:                                               ; preds = %47, %47
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %91 = call i32 @imxfb_setpalettereg(i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, %struct.fb_info* %90)
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %47, %84, %83
  %93 = load i32, i32* %15, align 4
  ret i32 %93
}

declare dso_local i32 @chan_to_field(i32, i32*) #1

declare dso_local i32 @imxfb_setpalettereg(i32, i32, i32, i32, i32, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
