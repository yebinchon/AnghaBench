; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb_mfb.c_atafb_mfb_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb_mfb.c_atafb_mfb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atafb_mfb_fillrect(%struct.fb_info* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %12, align 4
  %27 = ashr i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32* %29, i32** %15, align 8
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %7
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32*, i32** %15, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = ashr i32 %42, 3
  %44 = mul nsw i32 %41, %43
  %45 = call i32 @fb_memset255(i32* %40, i32 %44)
  br label %53

46:                                               ; preds = %36
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = ashr i32 %49, 3
  %51 = mul nsw i32 %48, %50
  %52 = call i32 @fb_memclear(i32* %47, i32 %51)
  br label %53

53:                                               ; preds = %46, %39
  br label %80

54:                                               ; preds = %32, %7
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %74, %54
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %16, align 4
  %59 = icmp ne i32 %57, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %14, align 4
  %66 = ashr i32 %65, 3
  %67 = call i32 @fb_memset255(i32* %64, i32 %66)
  br label %73

68:                                               ; preds = %60
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %14, align 4
  %71 = ashr i32 %70, 3
  %72 = call i32 @fb_memclear_small(i32* %69, i32 %71)
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %15, align 8
  br label %56

79:                                               ; preds = %56
  br label %80

80:                                               ; preds = %79, %53
  ret void
}

declare dso_local i32 @fb_memset255(i32*, i32) #1

declare dso_local i32 @fb_memclear(i32*, i32) #1

declare dso_local i32 @fb_memclear_small(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
