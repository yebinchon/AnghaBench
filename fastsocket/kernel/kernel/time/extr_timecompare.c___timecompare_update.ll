; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timecompare.c___timecompare_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timecompare.c___timecompare_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timecompare = type { i32, i32, i32 }

@TIMECOMPARE_SKEW_RESOLUTION = common dso_local global i32 0, align 4
@TIMECOMPARE_NEW_SKEW_PER_16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__timecompare_update(%struct.timecompare* %0, i32 %1) #0 {
  %3 = alloca %struct.timecompare*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.timecompare* %0, %struct.timecompare** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.timecompare*, %struct.timecompare** %3, align 8
  %12 = call i32 @timecompare_offset(%struct.timecompare* %11, i32* %5, i32* %6)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %82

15:                                               ; preds = %2
  %16 = load %struct.timecompare*, %struct.timecompare** %3, align 8
  %17 = getelementptr inbounds %struct.timecompare, %struct.timecompare* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.timecompare*, %struct.timecompare** %3, align 8
  %23 = getelementptr inbounds %struct.timecompare, %struct.timecompare* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.timecompare*, %struct.timecompare** %3, align 8
  %26 = getelementptr inbounds %struct.timecompare, %struct.timecompare* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.timecompare*, %struct.timecompare** %3, align 8
  %28 = getelementptr inbounds %struct.timecompare, %struct.timecompare* %27, i32 0, i32 2
  store i32 0, i32* %28, align 4
  br label %82

29:                                               ; preds = %15
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.timecompare*, %struct.timecompare** %3, align 8
  %32 = getelementptr inbounds %struct.timecompare, %struct.timecompare* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 10000
  br i1 %36, label %37, label %81

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.timecompare*, %struct.timecompare** %3, align 8
  %40 = getelementptr inbounds %struct.timecompare, %struct.timecompare* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @TIMECOMPARE_SKEW_RESOLUTION, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %53, %37
  %48 = load i32, i32* %10, align 4
  %49 = icmp sge i32 %48, undef
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = call i8* @div_s64(i32 %54, i32 2)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = ashr i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %47

59:                                               ; preds = %47
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i8* @div_s64(i32 %60, i32 %61)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %9, align 4
  %64 = load %struct.timecompare*, %struct.timecompare** %3, align 8
  %65 = getelementptr inbounds %struct.timecompare, %struct.timecompare* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 4, %66
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 12, %68
  %70 = add nsw i32 %67, %69
  %71 = call i8* @div_s64(i32 %70, i32 16)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.timecompare*, %struct.timecompare** %3, align 8
  %74 = getelementptr inbounds %struct.timecompare, %struct.timecompare* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.timecompare*, %struct.timecompare** %3, align 8
  %77 = getelementptr inbounds %struct.timecompare, %struct.timecompare* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.timecompare*, %struct.timecompare** %3, align 8
  %80 = getelementptr inbounds %struct.timecompare, %struct.timecompare* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %59, %29
  br label %82

82:                                               ; preds = %14, %81, %20
  ret void
}

declare dso_local i32 @timecompare_offset(%struct.timecompare*, i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @div_s64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
