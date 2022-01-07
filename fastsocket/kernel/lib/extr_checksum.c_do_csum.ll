; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_checksum.c_do_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_checksum.c_do_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @do_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_csum(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %133

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 1, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %4, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %20, %13
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %107

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = and i64 2, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i8*, i8** %3, align 8
  %44 = bitcast i8* %43 to i16*
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i64
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sub nsw i32 %51, 2
  store i32 %52, i32* %4, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** %3, align 8
  br label %55

55:                                               ; preds = %42, %37
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 1
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %55
  store i64 0, i64* %8, align 8
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i8*, i8** %3, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  store i64 %65, i64* %9, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %6, align 4
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  store i8* %69, i8** %3, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp ugt i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %8, align 8
  br label %81

81:                                               ; preds = %61
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %61, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = and i64 %88, 65535
  %90 = load i64, i64* %7, align 8
  %91 = lshr i64 %90, 16
  %92 = add i64 %89, %91
  store i64 %92, i64* %7, align 8
  br label %93

93:                                               ; preds = %84, %55
  %94 = load i32, i32* %4, align 4
  %95 = and i32 %94, 2
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i8*, i8** %3, align 8
  %99 = bitcast i8* %98 to i16*
  %100 = load i16, i16* %99, align 2
  %101 = zext i16 %100 to i64
  %102 = load i64, i64* %7, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %7, align 8
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  store i8* %105, i8** %3, align 8
  br label %106

106:                                              ; preds = %97, %93
  br label %107

107:                                              ; preds = %106, %32
  %108 = load i32, i32* %4, align 4
  %109 = and i32 %108, 1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i8*, i8** %3, align 8
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl i32 %114, 8
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %7, align 8
  br label %119

119:                                              ; preds = %111, %107
  %120 = load i64, i64* %7, align 8
  %121 = call i64 @from32to16(i64 %120)
  store i64 %121, i64* %7, align 8
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load i64, i64* %7, align 8
  %126 = lshr i64 %125, 8
  %127 = and i64 %126, 255
  %128 = load i64, i64* %7, align 8
  %129 = and i64 %128, 255
  %130 = shl i64 %129, 8
  %131 = or i64 %127, %130
  store i64 %131, i64* %7, align 8
  br label %132

132:                                              ; preds = %124, %119
  br label %133

133:                                              ; preds = %132, %12
  %134 = load i64, i64* %7, align 8
  %135 = trunc i64 %134 to i32
  ret i32 %135
}

declare dso_local i64 @from32to16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
