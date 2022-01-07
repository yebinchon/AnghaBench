; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hitfb.c_hitfb_accel_bitblt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hitfb.c_hitfb_accel_bitblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HD64461_BBTROPR = common dso_local global i32 0, align 4
@WIDTH = common dso_local global i64 0, align 8
@HD64461_BBTMDR = common dso_local global i32 0, align 4
@HD64461_BBTDWR = common dso_local global i32 0, align 4
@HD64461_BBTDHR = common dso_local global i32 0, align 4
@HD64461_BBTSSARL = common dso_local global i32 0, align 4
@HD64461_BBTSSARH = common dso_local global i32 0, align 4
@HD64461_BBTDSARL = common dso_local global i32 0, align 4
@HD64461_BBTDSARH = common dso_local global i32 0, align 4
@HD64461_BBTMARL = common dso_local global i32 0, align 4
@HD64461_BBTMARH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64, i64, i64, i64, i32)* @hitfb_accel_bitblt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hitfb_accel_bitblt(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %21, align 4
  %22 = load i64, i64* %16, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %16, align 8
  %24 = load i64, i64* %15, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %17, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @HD64461_BBTROPR, align 4
  %29 = call i32 @fb_writew(i32 %27, i32 %28)
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %9
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %33
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %13, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %93

41:                                               ; preds = %37, %9
  %42 = load i64, i64* @WIDTH, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %16, align 8
  %45 = add nsw i64 %43, %44
  %46 = mul nsw i64 %42, %45
  %47 = load i64, i64* %11, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* %15, align 8
  %50 = add nsw i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %19, align 4
  %52 = load i64, i64* @WIDTH, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %16, align 8
  %55 = add nsw i64 %53, %54
  %56 = mul nsw i64 %52, %55
  %57 = load i64, i64* %13, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* %15, align 8
  %60 = add nsw i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %41
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load i64, i64* %15, align 8
  %69 = ashr i64 %68, 3
  %70 = add nsw i64 %69, 1
  %71 = load i64, i64* %16, align 8
  %72 = add nsw i64 %71, 1
  %73 = mul nsw i64 %70, %72
  %74 = sub nsw i64 %73, 1
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %21, align 4
  br label %86

76:                                               ; preds = %64
  %77 = load i64, i64* %15, align 8
  %78 = ashr i64 %77, 4
  %79 = add nsw i64 %78, 1
  %80 = load i64, i64* %16, align 8
  %81 = add nsw i64 %80, 1
  %82 = mul nsw i64 %79, %81
  %83 = sub nsw i64 %82, 1
  %84 = mul nsw i64 %83, 2
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %21, align 4
  br label %86

86:                                               ; preds = %76, %67
  %87 = load i32, i32* @HD64461_BBTMDR, align 4
  %88 = call i32 @fb_writew(i32 33, i32 %87)
  br label %92

89:                                               ; preds = %41
  %90 = load i32, i32* @HD64461_BBTMDR, align 4
  %91 = call i32 @fb_writew(i32 1, i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  br label %115

93:                                               ; preds = %37, %33
  %94 = load i64, i64* @WIDTH, align 8
  %95 = load i64, i64* %12, align 8
  %96 = mul nsw i64 %94, %95
  %97 = load i64, i64* %11, align 8
  %98 = add nsw i64 %96, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %19, align 4
  %100 = load i64, i64* @WIDTH, align 8
  %101 = load i64, i64* %14, align 8
  %102 = mul nsw i64 %100, %101
  %103 = load i64, i64* %13, align 8
  %104 = add nsw i64 %102, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* %18, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = load i32, i32* @HD64461_BBTMDR, align 4
  %110 = call i32 @fb_writew(i32 32, i32 %109)
  br label %114

111:                                              ; preds = %93
  %112 = load i32, i32* @HD64461_BBTMDR, align 4
  %113 = call i32 @fb_writew(i32 0, i32 %112)
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %92
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* %19, align 4
  %120 = shl i32 %119, 1
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %20, align 4
  %122 = shl i32 %121, 1
  store i32 %122, i32* %20, align 4
  br label %123

123:                                              ; preds = %118, %115
  %124 = load i64, i64* %15, align 8
  %125 = trunc i64 %124 to i32
  %126 = load i32, i32* @HD64461_BBTDWR, align 4
  %127 = call i32 @fb_writew(i32 %125, i32 %126)
  %128 = load i64, i64* %16, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* @HD64461_BBTDHR, align 4
  %131 = call i32 @fb_writew(i32 %129, i32 %130)
  %132 = load i32, i32* %19, align 4
  %133 = and i32 %132, 65535
  %134 = load i32, i32* @HD64461_BBTSSARL, align 4
  %135 = call i32 @fb_writew(i32 %133, i32 %134)
  %136 = load i32, i32* %19, align 4
  %137 = ashr i32 %136, 16
  %138 = load i32, i32* @HD64461_BBTSSARH, align 4
  %139 = call i32 @fb_writew(i32 %137, i32 %138)
  %140 = load i32, i32* %20, align 4
  %141 = and i32 %140, 65535
  %142 = load i32, i32* @HD64461_BBTDSARL, align 4
  %143 = call i32 @fb_writew(i32 %141, i32 %142)
  %144 = load i32, i32* %20, align 4
  %145 = ashr i32 %144, 16
  %146 = load i32, i32* @HD64461_BBTDSARH, align 4
  %147 = call i32 @fb_writew(i32 %145, i32 %146)
  %148 = load i32, i32* %18, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %123
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %21, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %21, align 4
  %154 = load i32, i32* %21, align 4
  %155 = and i32 %154, 65535
  %156 = load i32, i32* @HD64461_BBTMARL, align 4
  %157 = call i32 @fb_writew(i32 %155, i32 %156)
  %158 = load i32, i32* %21, align 4
  %159 = ashr i32 %158, 16
  %160 = load i32, i32* @HD64461_BBTMARH, align 4
  %161 = call i32 @fb_writew(i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %150, %123
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @hitfb_accel_start(i32 %163)
  ret void
}

declare dso_local i32 @fb_writew(i32, i32) #1

declare dso_local i32 @hitfb_accel_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
