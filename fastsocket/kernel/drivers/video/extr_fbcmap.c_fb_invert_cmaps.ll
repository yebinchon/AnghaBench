; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbcmap.c_fb_invert_cmaps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbcmap.c_fb_invert_cmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@red2 = common dso_local global i32* null, align 8
@green2 = common dso_local global i32* null, align 8
@blue2 = common dso_local global i32* null, align 8
@red4 = common dso_local global i32* null, align 8
@green4 = common dso_local global i32* null, align 8
@blue4 = common dso_local global i32* null, align 8
@red8 = common dso_local global i32* null, align 8
@green8 = common dso_local global i32* null, align 8
@blue8 = common dso_local global i32* null, align 8
@red16 = common dso_local global i32* null, align 8
@green16 = common dso_local global i32* null, align 8
@blue16 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fb_invert_cmaps() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %32, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i32*, i32** @red2, align 8
  %5 = call i64 @ARRAY_SIZE(i32* %4)
  %6 = icmp ult i64 %3, %5
  br i1 %6, label %7, label %35

7:                                                ; preds = %2
  %8 = load i32*, i32** @red2, align 8
  %9 = load i64, i64* %1, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, -1
  %13 = load i32*, i32** @red2, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 %12, i32* %15, align 4
  %16 = load i32*, i32** @green2, align 8
  %17 = load i64, i64* %1, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, -1
  %21 = load i32*, i32** @green2, align 8
  %22 = load i64, i64* %1, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %20, i32* %23, align 4
  %24 = load i32*, i32** @blue2, align 8
  %25 = load i64, i64* %1, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, -1
  %29 = load i32*, i32** @blue2, align 8
  %30 = load i64, i64* %1, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %7
  %33 = load i64, i64* %1, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %1, align 8
  br label %2

35:                                               ; preds = %2
  store i64 0, i64* %1, align 8
  br label %36

36:                                               ; preds = %66, %35
  %37 = load i64, i64* %1, align 8
  %38 = load i32*, i32** @red4, align 8
  %39 = call i64 @ARRAY_SIZE(i32* %38)
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = load i32*, i32** @red4, align 8
  %43 = load i64, i64* %1, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = load i32*, i32** @red4, align 8
  %48 = load i64, i64* %1, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %46, i32* %49, align 4
  %50 = load i32*, i32** @green4, align 8
  %51 = load i64, i64* %1, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, -1
  %55 = load i32*, i32** @green4, align 8
  %56 = load i64, i64* %1, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i32*, i32** @blue4, align 8
  %59 = load i64, i64* %1, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %61, -1
  %63 = load i32*, i32** @blue4, align 8
  %64 = load i64, i64* %1, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %41
  %67 = load i64, i64* %1, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %1, align 8
  br label %36

69:                                               ; preds = %36
  store i64 0, i64* %1, align 8
  br label %70

70:                                               ; preds = %100, %69
  %71 = load i64, i64* %1, align 8
  %72 = load i32*, i32** @red8, align 8
  %73 = call i64 @ARRAY_SIZE(i32* %72)
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %75, label %103

75:                                               ; preds = %70
  %76 = load i32*, i32** @red8, align 8
  %77 = load i64, i64* %1, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, -1
  %81 = load i32*, i32** @red8, align 8
  %82 = load i64, i64* %1, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %80, i32* %83, align 4
  %84 = load i32*, i32** @green8, align 8
  %85 = load i64, i64* %1, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %87, -1
  %89 = load i32*, i32** @green8, align 8
  %90 = load i64, i64* %1, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %88, i32* %91, align 4
  %92 = load i32*, i32** @blue8, align 8
  %93 = load i64, i64* %1, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %95, -1
  %97 = load i32*, i32** @blue8, align 8
  %98 = load i64, i64* %1, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %96, i32* %99, align 4
  br label %100

100:                                              ; preds = %75
  %101 = load i64, i64* %1, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %1, align 8
  br label %70

103:                                              ; preds = %70
  store i64 0, i64* %1, align 8
  br label %104

104:                                              ; preds = %134, %103
  %105 = load i64, i64* %1, align 8
  %106 = load i32*, i32** @red16, align 8
  %107 = call i64 @ARRAY_SIZE(i32* %106)
  %108 = icmp ult i64 %105, %107
  br i1 %108, label %109, label %137

109:                                              ; preds = %104
  %110 = load i32*, i32** @red16, align 8
  %111 = load i64, i64* %1, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = xor i32 %113, -1
  %115 = load i32*, i32** @red16, align 8
  %116 = load i64, i64* %1, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %114, i32* %117, align 4
  %118 = load i32*, i32** @green16, align 8
  %119 = load i64, i64* %1, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %121, -1
  %123 = load i32*, i32** @green16, align 8
  %124 = load i64, i64* %1, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 %122, i32* %125, align 4
  %126 = load i32*, i32** @blue16, align 8
  %127 = load i64, i64* %1, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = xor i32 %129, -1
  %131 = load i32*, i32** @blue16, align 8
  %132 = load i64, i64* %1, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32 %130, i32* %133, align 4
  br label %134

134:                                              ; preds = %109
  %135 = load i64, i64* %1, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %1, align 8
  br label %104

137:                                              ; preds = %104
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
