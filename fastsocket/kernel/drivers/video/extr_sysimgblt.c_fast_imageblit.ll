; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sysimgblt.c_fast_imageblit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sysimgblt.c_fast_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_image = type { i32, i8*, i32 }
%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@cfb_tab8_be = common dso_local global i32* null, align 8
@cfb_tab8_le = common dso_local global i32* null, align 8
@cfb_tab16_be = common dso_local global i32* null, align 8
@cfb_tab16_le = common dso_local global i32* null, align 8
@cfb_tab32 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_image*, %struct.fb_info*, i8*, i32, i32)* @fast_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_imageblit(%struct.fb_image* %0, %struct.fb_info* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fb_image*, align 8
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.fb_image* %0, %struct.fb_image** %6, align 8
  store %struct.fb_info* %1, %struct.fb_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = sdiv i32 32, %33
  store i32 %34, i32* %14, align 4
  %35 = load %struct.fb_image*, %struct.fb_image** %6, align 8
  %36 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 7
  %39 = sdiv i32 %38, 8
  store i32 %39, i32* %15, align 4
  %40 = load %struct.fb_image*, %struct.fb_image** %6, align 8
  %41 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %20, align 8
  store i32* null, i32** %23, align 8
  %43 = load i32, i32* %13, align 4
  switch i32 %43, label %65 [
    i32 8, label %44
    i32 16, label %54
    i32 32, label %64
  ]

44:                                               ; preds = %5
  %45 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %46 = call i32 @fb_be_math(%struct.fb_info* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32*, i32** @cfb_tab8_be, align 8
  br label %52

50:                                               ; preds = %44
  %51 = load i32*, i32** @cfb_tab8_le, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32* [ %49, %48 ], [ %51, %50 ]
  store i32* %53, i32** %23, align 8
  br label %67

54:                                               ; preds = %5
  %55 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %56 = call i32 @fb_be_math(%struct.fb_info* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32*, i32** @cfb_tab16_be, align 8
  br label %62

60:                                               ; preds = %54
  %61 = load i32*, i32** @cfb_tab16_le, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32* [ %59, %58 ], [ %61, %60 ]
  store i32* %63, i32** %23, align 8
  br label %67

64:                                               ; preds = %5
  br label %65

65:                                               ; preds = %5, %64
  %66 = load i32*, i32** @cfb_tab32, align 8
  store i32* %66, i32** %23, align 8
  br label %67

67:                                               ; preds = %65, %62, %52
  %68 = load i32, i32* %14, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %24, align 4
  br label %70

70:                                               ; preds = %74, %67
  %71 = load i32, i32* %24, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %24, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %11, align 4
  %77 = shl i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = shl i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %11, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %12, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %12, align 4
  br label %70

87:                                               ; preds = %70
  %88 = load i32, i32* %14, align 4
  %89 = shl i32 1, %88
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = xor i32 %91, %92
  store i32 %93, i32* %18, align 4
  %94 = load %struct.fb_image*, %struct.fb_image** %6, align 8
  %95 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sdiv i32 %96, %97
  store i32 %98, i32* %26, align 4
  %99 = load %struct.fb_image*, %struct.fb_image** %6, align 8
  %100 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %24, align 4
  br label %102

102:                                              ; preds = %143, %87
  %103 = load i32, i32* %24, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %24, align 4
  %105 = icmp ne i32 %103, 0
  br i1 %105, label %106, label %155

106:                                              ; preds = %102
  %107 = load i8*, i8** %8, align 8
  %108 = bitcast i8* %107 to i32*
  store i32* %108, i32** %22, align 8
  store i32 8, i32* %19, align 4
  %109 = load i8*, i8** %20, align 8
  store i8* %109, i8** %21, align 8
  %110 = load i32, i32* %26, align 4
  store i32 %110, i32* %25, align 4
  br label %111

111:                                              ; preds = %142, %106
  %112 = load i32, i32* %25, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %25, align 4
  %114 = icmp ne i32 %112, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %111
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %19, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %19, align 4
  %119 = load i32*, i32** %23, align 8
  %120 = load i8*, i8** %21, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = load i32, i32* %19, align 4
  %124 = ashr i32 %122, %123
  %125 = load i32, i32* %16, align 4
  %126 = and i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %119, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %18, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* %12, align 4
  %134 = xor i32 %132, %133
  %135 = load i32*, i32** %22, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %22, align 8
  store i32 %134, i32* %135, align 4
  %137 = load i32, i32* %19, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %115
  store i32 8, i32* %19, align 4
  %140 = load i8*, i8** %21, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %21, align 8
  br label %142

142:                                              ; preds = %139, %115
  br label %111

143:                                              ; preds = %111
  %144 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %145 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i8*, i8** %8, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr i8, i8* %148, i64 %149
  store i8* %150, i8** %8, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load i8*, i8** %20, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %20, align 8
  br label %102

155:                                              ; preds = %102
  ret void
}

declare dso_local i32 @fb_be_math(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
