; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb_iplan2p2.c_atafb_iplan2p2_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb_iplan2p2.c_atafb_iplan2p2_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }

@BPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atafb_iplan2p2_fillrect(%struct.fb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32], align 16
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, -16
  %33 = load i32, i32* @BPL, align 4
  %34 = sdiv i32 8, %33
  %35 = sdiv i32 %32, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %30, %36
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %15, align 8
  %39 = load i32, i32* %12, align 4
  %40 = and i32 %39, 15
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %7
  %43 = load i32*, i32** %15, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32* %44, i32** %19, align 8
  %45 = load i32, i32* %10, align 4
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %47 = call i32 @expand8_col2mask(i32 %45, i32* %46)
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %17, align 4
  br label %49

49:                                               ; preds = %60, %42
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32*, i32** %19, align 8
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %55 = call i32 @fill8_col(i32* %53, i32* %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %19, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %19, align 8
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %17, align 4
  br label %49

63:                                               ; preds = %49
  %64 = load i32, i32* @BPL, align 4
  %65 = sdiv i32 %64, 2
  %66 = load i32*, i32** %15, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %15, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sub nsw i32 %69, 8
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %63, %7
  %72 = load i32, i32* %10, align 4
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %74 = call i32 @expand16_col2mask(i32 %72, i32* %73)
  %75 = load i32, i32* %14, align 4
  %76 = ashr i32 %75, 4
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %115

79:                                               ; preds = %71
  %80 = load i32*, i32** %15, align 8
  store i32* %80, i32** %20, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @BPL, align 4
  %84 = mul nsw i32 %82, %83
  %85 = mul nsw i32 %84, 2
  %86 = sub nsw i32 %81, %85
  store i32 %86, i32* %21, align 4
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %17, align 4
  br label %88

88:                                               ; preds = %102, %79
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %88
  %92 = load i32*, i32** %20, align 8
  %93 = load i32, i32* %16, align 4
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %95 = call i32* @fill16_col(i32* %92, i32 %93, i32* %94)
  store i32* %95, i32** %20, align 8
  %96 = load i32*, i32** %20, align 8
  %97 = ptrtoint i32* %96 to i64
  %98 = load i32, i32* %21, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = inttoptr i64 %100 to i32*
  store i32* %101, i32** %20, align 8
  br label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %17, align 4
  br label %88

105:                                              ; preds = %88
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* @BPL, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sdiv i32 %108, 2
  %110 = load i32*, i32** %15, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %15, align 8
  %113 = load i32, i32* %14, align 4
  %114 = and i32 %113, 15
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %105, %71
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %115
  %119 = load i32*, i32** %15, align 8
  store i32* %119, i32** %22, align 8
  %120 = load i32, i32* %10, align 4
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %122 = call i32 @expand8_col2mask(i32 %120, i32* %121)
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %17, align 4
  br label %124

124:                                              ; preds = %135, %118
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load i32*, i32** %22, align 8
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %130 = call i32 @fill8_col(i32* %128, i32* %129)
  %131 = load i32, i32* %9, align 4
  %132 = load i32*, i32** %22, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %22, align 8
  br label %135

135:                                              ; preds = %127
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %17, align 4
  br label %124

138:                                              ; preds = %124
  br label %139

139:                                              ; preds = %138, %115
  ret void
}

declare dso_local i32 @expand8_col2mask(i32, i32*) #1

declare dso_local i32 @fill8_col(i32*, i32*) #1

declare dso_local i32 @expand16_col2mask(i32, i32*) #1

declare dso_local i32* @fill16_col(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
