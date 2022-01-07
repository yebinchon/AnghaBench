; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mbx/extr_mbxfb.c_mbxfb_get_pixclock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mbx/extr_mbxfb.c_mbxfb_get_pixclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pixclock_div = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pixclock_div*)* @mbxfb_get_pixclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbxfb_get_pixclock(i32 %0, %struct.pixclock_div* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pixclock_div*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pixclock_div* %1, %struct.pixclock_div** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 13000, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @PICOS2KHZ(i32 %14)
  store i32 %15, i32* %13, align 4
  store i32 1, i32* %5, align 4
  br label %16

16:                                               ; preds = %73, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 64
  br i1 %18, label %19, label %76

19:                                               ; preds = %16
  store i32 2, i32* %6, align 4
  br label %20

20:                                               ; preds = %69, %19
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %72

23:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %65, %23
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %68

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 1, %32
  %34 = mul nsw i32 %31, %33
  %35 = udiv i32 %30, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %13, align 4
  %42 = sub i32 %40, %41
  br label %47

43:                                               ; preds = %27
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub i32 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i32 [ %42, %39 ], [ %46, %43 ]
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.pixclock_div*, %struct.pixclock_div** %4, align 8
  %57 = getelementptr inbounds %struct.pixclock_div, %struct.pixclock_div* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.pixclock_div*, %struct.pixclock_div** %4, align 8
  %60 = getelementptr inbounds %struct.pixclock_div, %struct.pixclock_div* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.pixclock_div*, %struct.pixclock_div** %4, align 8
  %63 = getelementptr inbounds %struct.pixclock_div, %struct.pixclock_div* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %52, %47
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %24

68:                                               ; preds = %24
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %20

72:                                               ; preds = %20
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %16

76:                                               ; preds = %16
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @KHZ2PICOS(i32 %77)
  ret i32 %78
}

declare dso_local i32 @PICOS2KHZ(i32) #1

declare dso_local i32 @KHZ2PICOS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
