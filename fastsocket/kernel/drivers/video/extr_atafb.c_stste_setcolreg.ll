; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_stste_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_stste_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.fb_info = type { i32 }

@EXTD_SHIFTER = common dso_local global i32 0, align 4
@shifter_tt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @stste_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stste_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ugt i32 %14, 15
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %74

17:                                               ; preds = %6
  %18 = load i32, i32* %9, align 4
  %19 = lshr i32 %18, 12
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %11, align 4
  %21 = lshr i32 %20, 12
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = lshr i32 %22, 12
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @EXTD_SHIFTER, align 4
  %25 = call i64 @ATARIHW_PRESENT(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %17
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 14
  %30 = lshr i32 %29, 1
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 1
  %33 = shl i32 %32, 3
  %34 = shl i32 %33, 8
  %35 = or i32 %30, %34
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 14
  %38 = lshr i32 %37, 1
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 1
  %41 = shl i32 %40, 3
  %42 = shl i32 %41, 4
  %43 = or i32 %38, %42
  %44 = or i32 %35, %43
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 14
  %47 = lshr i32 %46, 1
  %48 = or i32 %44, %47
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, 1
  %51 = shl i32 %50, 3
  %52 = or i32 %48, %51
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shifter_tt, i32 0, i32 0), align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %73

57:                                               ; preds = %17
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 14
  %60 = shl i32 %59, 7
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 14
  %63 = shl i32 %62, 3
  %64 = or i32 %60, %63
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 14
  %67 = lshr i32 %66, 1
  %68 = or i32 %64, %67
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shifter_tt, i32 0, i32 0), align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %57, %27
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %16
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i64 @ATARIHW_PRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
