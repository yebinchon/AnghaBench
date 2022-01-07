; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_compr_rubin.c_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_compr_rubin.c_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rubin_state = type { i32, i32, i32, i32 }

@UPPER_BIT_RUBIN = common dso_local global i32 0, align 4
@LOWER_BITS_RUBIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rubin_state*, i64, i64, i32)* @encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode(%struct.rubin_state* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rubin_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.rubin_state* %0, %struct.rubin_state** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  br label %13

13:                                               ; preds = %51, %4
  %14 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %15 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @UPPER_BIT_RUBIN, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %13
  %20 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %21 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %24 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = load i32, i32* @UPPER_BIT_RUBIN, align 4
  %28 = icmp sle i32 %26, %27
  br label %29

29:                                               ; preds = %19, %13
  %30 = phi i1 [ true, %13 ], [ %28, %19 ]
  br i1 %30, label %31, label %65

31:                                               ; preds = %29
  %32 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %33 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %37 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %36, i32 0, i32 2
  %38 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %39 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @UPPER_BIT_RUBIN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = call i32 @pushbit(i32* %37, i32 %45, i32 0)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %31
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %119

51:                                               ; preds = %31
  %52 = load i32, i32* @LOWER_BITS_RUBIN, align 4
  %53 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %54 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %58 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %62 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %13

65:                                               ; preds = %29
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %68 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %66, %70
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add nsw i64 %72, %73
  %75 = sdiv i64 %71, %74
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp sle i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  store i64 1, i64* %10, align 8
  br label %79

79:                                               ; preds = %78, %65
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %82 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp sge i64 %80, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %88 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %10, align 8
  br label %92

92:                                               ; preds = %86, %79
  %93 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %94 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %10, align 8
  %98 = sub nsw i64 %96, %97
  store i64 %98, i64* %11, align 8
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  %102 = load i64, i64* %10, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %105 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %118

106:                                              ; preds = %92
  %107 = load i64, i64* %11, align 8
  %108 = trunc i64 %107 to i32
  %109 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %110 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.rubin_state*, %struct.rubin_state** %6, align 8
  %113 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 4
  br label %118

118:                                              ; preds = %106, %101
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %49
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @pushbit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
