; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.sa1100fb_info = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @sa1100fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_info*, align 8
  %13 = alloca %struct.sa1100fb_info*, align 8
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
  %18 = bitcast %struct.fb_info* %17 to %struct.sa1100fb_info*
  store %struct.sa1100fb_info* %18, %struct.sa1100fb_info** %13, align 8
  store i32 1, i32* %15, align 4
  %19 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %13, align 8
  %20 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %6
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 65535, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 65535, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 65535, %28
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %23, %6
  %31 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %13, align 8
  %32 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
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

47:                                               ; preds = %37, %30
  %48 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %13, align 8
  %49 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %97 [
    i32 128, label %53
    i32 129, label %89
    i32 130, label %89
  ]

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 16
  br i1 %55, label %56, label %88

56:                                               ; preds = %53
  %57 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %13, align 8
  %58 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %16, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %13, align 8
  %63 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = call i32 @chan_to_field(i32 %61, i32* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %13, align 8
  %69 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = call i32 @chan_to_field(i32 %67, i32* %71)
  %73 = load i32, i32* %14, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %13, align 8
  %77 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = call i32 @chan_to_field(i32 %75, i32* %79)
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32*, i32** %16, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %56, %53
  br label %97

89:                                               ; preds = %47, %47
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %96 = call i32 @sa1100fb_setpalettereg(i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, %struct.fb_info* %95)
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %47, %89, %88
  %98 = load i32, i32* %15, align 4
  ret i32 %98
}

declare dso_local i32 @chan_to_field(i32, i32*) #1

declare dso_local i32 @sa1100fb_setpalettereg(i32, i32, i32, i32, i32, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
