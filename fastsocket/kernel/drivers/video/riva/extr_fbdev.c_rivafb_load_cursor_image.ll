; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_fbdev.c_rivafb_load_cursor_image.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_fbdev.c_rivafb_load_cursor_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riva_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@MAX_CURS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.riva_par*, i32*, i32, i32, i32, i32)* @rivafb_load_cursor_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rivafb_load_cursor_image(%struct.riva_par* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.riva_par*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.riva_par* %0, %struct.riva_par** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %19 = load i32*, i32** %8, align 8
  store i32* %19, i32** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 1
  %26 = and i32 %25, -2
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %88, %6
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %91

31:                                               ; preds = %27
  %32 = load i32*, i32** %18, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %18, align 8
  %34 = load i32, i32* %32, align 4
  store i32 %34, i32* %16, align 4
  %35 = call i32 @reverse_order(i32* %16)
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %78, %31
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sdiv i32 %38, 2
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %36
  store i32 0, i32* %17, align 4
  %42 = load i32, i32* %16, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %16, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %57, 16
  br label %62

59:                                               ; preds = %49
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 %60, 16
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i32 [ %58, %56 ], [ %61, %59 ]
  %64 = load i32, i32* %17, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %16, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load %struct.riva_par*, %struct.riva_par** %7, align 8
  %70 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = call i32 @writel(i32 %68, i32* %76)
  br label %78

78:                                               ; preds = %62
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %36

81:                                               ; preds = %36
  %82 = load i32, i32* @MAX_CURS, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sdiv i32 %84, 2
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %27

91:                                               ; preds = %27
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @reverse_order(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
