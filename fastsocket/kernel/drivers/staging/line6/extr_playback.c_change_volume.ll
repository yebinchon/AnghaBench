; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_playback.c_change_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_playback.c_change_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, i32*, i32)* @change_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_volume(%struct.urb* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 256
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %127

23:                                               ; preds = %17, %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %62

26:                                               ; preds = %23
  %27 = load %struct.urb*, %struct.urb** %4, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i16*
  store i16* %30, i16** %8, align 8
  %31 = load i16*, i16** %8, align 8
  %32 = load %struct.urb*, %struct.urb** %4, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = udiv i64 %35, 2
  %37 = getelementptr inbounds i16, i16* %31, i64 %36
  store i16* %37, i16** %9, align 8
  br label %38

38:                                               ; preds = %58, %26
  %39 = load i16*, i16** %8, align 8
  %40 = load i16*, i16** %9, align 8
  %41 = icmp ult i16* %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i16*, i16** %8, align 8
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %45, %51
  %53 = ashr i32 %52, 8
  %54 = trunc i32 %53 to i16
  %55 = load i16*, i16** %8, align 8
  store i16 %54, i16* %55, align 2
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %42
  %59 = load i16*, i16** %8, align 8
  %60 = getelementptr inbounds i16, i16* %59, i32 1
  store i16* %60, i16** %8, align 8
  br label %38

61:                                               ; preds = %38
  br label %127

62:                                               ; preds = %23
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 6
  br i1 %64, label %65, label %126

65:                                               ; preds = %62
  %66 = load %struct.urb*, %struct.urb** %4, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load %struct.urb*, %struct.urb** %4, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  store i8* %75, i8** %11, align 8
  br label %76

76:                                               ; preds = %122, %65
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = icmp ult i8* %77, %78
  br i1 %79, label %80, label %125

80:                                               ; preds = %76
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl i32 %88, 8
  %90 = add nsw i32 %84, %89
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = shl i32 %94, 16
  %96 = add nsw i32 %90, %95
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %97, %103
  %105 = ashr i32 %104, 8
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  store i8 %107, i8* %109, align 1
  %110 = load i32, i32* %12, align 4
  %111 = ashr i32 %110, 8
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  store i8 %112, i8* %114, align 1
  %115 = load i32, i32* %12, align 4
  %116 = ashr i32 %115, 16
  %117 = trunc i32 %116 to i8
  %118 = load i8*, i8** %10, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  store i8 %117, i8* %119, align 1
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %80
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 3
  store i8* %124, i8** %10, align 8
  br label %76

125:                                              ; preds = %76
  br label %126

126:                                              ; preds = %125, %62
  br label %127

127:                                              ; preds = %22, %126, %61
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
