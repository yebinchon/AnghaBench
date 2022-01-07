; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_time.c_localtime_3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_time.c_localtime_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xtm = type { i32, i32, i32 }

@DSE_FIRST = common dso_local global i32 0, align 4
@days_since_epoch = common dso_local global i32* null, align 8
@days_since_leapyear = common dso_local global i32* null, align 8
@days_since_year = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xtm*, i32)* @localtime_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @localtime_3(%struct.xtm* %0, i32 %1) #0 {
  %3 = alloca %struct.xtm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xtm* %0, %struct.xtm** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.xtm*, %struct.xtm** %3, align 8
  %9 = getelementptr inbounds %struct.xtm, %struct.xtm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @DSE_FIRST, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %21, %2
  %13 = load i32*, i32** @days_since_epoch, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, -1
  store i32 %25, i32* %5, align 4
  br label %12

26:                                               ; preds = %12
  %27 = load i32*, i32** @days_since_epoch, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @is_leap(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %26
  %38 = load i32*, i32** @days_since_leapyear, align 8
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %55, %37
  %42 = load i32, i32* %6, align 4
  %43 = icmp ugt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32*, i32** @days_since_leapyear, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ugt i32 %49, %50
  br label %52

52:                                               ; preds = %44, %41
  %53 = phi i1 [ false, %41 ], [ %51, %44 ]
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, -1
  store i32 %57, i32* %6, align 4
  br label %41

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** @days_since_leapyear, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sub i32 %59, %64
  %66 = add i32 %65, 1
  %67 = load %struct.xtm*, %struct.xtm** %3, align 8
  %68 = getelementptr inbounds %struct.xtm, %struct.xtm* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %101

69:                                               ; preds = %26
  %70 = load i32*, i32** @days_since_year, align 8
  %71 = call i32 @ARRAY_SIZE(i32* %70)
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %87, %69
  %74 = load i32, i32* %6, align 4
  %75 = icmp ugt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32*, i32** @days_since_year, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ugt i32 %81, %82
  br label %84

84:                                               ; preds = %76, %73
  %85 = phi i1 [ false, %73 ], [ %83, %76 ]
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %88, -1
  store i32 %89, i32* %6, align 4
  br label %73

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  %92 = load i32*, i32** @days_since_year, align 8
  %93 = load i32, i32* %6, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sub i32 %91, %96
  %98 = add i32 %97, 1
  %99 = load %struct.xtm*, %struct.xtm** %3, align 8
  %100 = getelementptr inbounds %struct.xtm, %struct.xtm* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %90, %58
  %102 = load i32, i32* %6, align 4
  %103 = add i32 %102, 1
  %104 = load %struct.xtm*, %struct.xtm** %3, align 8
  %105 = getelementptr inbounds %struct.xtm, %struct.xtm* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  ret void
}

declare dso_local i64 @is_leap(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
