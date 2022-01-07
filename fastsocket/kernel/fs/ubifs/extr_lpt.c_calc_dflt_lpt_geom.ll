; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_calc_dflt_lpt_geom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_calc_dflt_lpt_geom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i64, i64, i64 }

@UBIFS_MIN_LPT_LEBS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"LPT ltab too big\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32*, i32*)* @calc_dflt_lpt_geom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_dflt_lpt_geom(%struct.ubifs_info* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @UBIFS_MIN_LPT_LEBS, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %15, %18
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %119

29:                                               ; preds = %3
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %33 = call i32 @do_calc_lpt_geom(%struct.ubifs_info* %32)
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %38 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %45 = call i32 @do_calc_lpt_geom(%struct.ubifs_info* %44)
  br label %46

46:                                               ; preds = %41, %29
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %113, %46
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 64
  br i1 %49, label %50, label %116

50:                                               ; preds = %47
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %52 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = mul nsw i64 %53, 4
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = sub nsw i64 %59, 1
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %62 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @div_u64(i64 %60, i64 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %67 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %50
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %77 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %75, %78
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %81 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %119

89:                                               ; preds = %70
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %91 = call i32 @do_calc_lpt_geom(%struct.ubifs_info* %90)
  br label %113

92:                                               ; preds = %50
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %94 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = call i32 @ubifs_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %119

104:                                              ; preds = %92
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %106 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %6, align 8
  store i32 %107, i32* %108, align 4
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %110 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  store i32 0, i32* %4, align 4
  br label %119

113:                                              ; preds = %89
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %47

116:                                              ; preds = %47
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %116, %104, %100, %86, %26
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @do_calc_lpt_geom(%struct.ubifs_info*) #1

declare dso_local i32 @div_u64(i64, i64) #1

declare dso_local i32 @ubifs_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
