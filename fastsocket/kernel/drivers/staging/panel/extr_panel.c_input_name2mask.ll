; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_input_name2mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_input_name2mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_name2mask.sigtab = internal global [10 x i8] c"EeSsPpAaBb", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*, i8*, i8*)* @input_name2mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_name2mask(i8* %0, i64* %1, i64* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  br label %20

20:                                               ; preds = %104, %5
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %107

24:                                               ; preds = %20
  store i32 0, i32* %16, align 4
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* %16, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 10
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* @input_name2mask.sigtab, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %34, %37
  br label %39

39:                                               ; preds = %29, %25
  %40 = phi i1 [ false, %25 ], [ %38, %29 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %16, align 4
  br label %25

45:                                               ; preds = %39
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 %47, 10
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %134

50:                                               ; preds = %45
  %51 = load i32, i32* %16, align 4
  %52 = and i32 %51, 1
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %16, align 4
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = shl i32 1, %55
  %57 = load i8, i8* %12, align 1
  %58 = sext i8 %57 to i32
  %59 = or i32 %58, %56
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %12, align 1
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @isdigit(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %50
  %68 = load i8*, i8** %7, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %70, 48
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = shl i32 1, %72
  %74 = load i8, i8* %13, align 1
  %75 = sext i8 %74 to i32
  %76 = or i32 %75, %73
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %13, align 1
  br label %86

78:                                               ; preds = %50
  %79 = load i8*, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 45
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 8, i32* %17, align 4
  br label %85

84:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %134

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85, %67
  %87 = load i32, i32* %17, align 4
  %88 = mul nsw i32 %87, 5
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = zext i32 %91 to i64
  %93 = shl i64 1, %92
  %94 = load i64, i64* %14, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %14, align 8
  %96 = load i32, i32* %19, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %18, align 4
  %100 = zext i32 %99 to i64
  %101 = shl i64 1, %100
  %102 = load i64, i64* %15, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %15, align 8
  br label %104

104:                                              ; preds = %98, %86
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  br label %20

107:                                              ; preds = %20
  %108 = load i64, i64* %14, align 8
  %109 = load i64*, i64** %8, align 8
  store i64 %108, i64* %109, align 8
  %110 = load i64, i64* %15, align 8
  %111 = load i64*, i64** %9, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %107
  %115 = load i8, i8* %12, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8*, i8** %10, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = or i32 %119, %116
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %117, align 1
  br label %122

122:                                              ; preds = %114, %107
  %123 = load i8*, i8** %11, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i8, i8* %13, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8*, i8** %11, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = or i32 %130, %127
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %128, align 1
  br label %133

133:                                              ; preds = %125, %122
  store i32 1, i32* %6, align 4
  br label %134

134:                                              ; preds = %133, %84, %49
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
