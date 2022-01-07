; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_mdacon.c_mdacon_bmove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_mdacon.c_mdacon_bmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@mda_num_columns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32, i32, i32, i32, i32)* @mdacon_bmove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdacon_bmove(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.vc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %7
  %20 = load i32, i32* %13, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %7
  br label %120

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @mda_num_columns, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = call i32* @MDA_ADDR(i32 0, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = call i32* @MDA_ADDR(i32 0, i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = mul nsw i32 %38, %39
  %41 = mul nsw i32 %40, 2
  %42 = call i32 @scr_memmovew(i32* %35, i32* %37, i32 %41)
  br label %120

43:                                               ; preds = %29, %26, %23
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %51, %43
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32* @MDA_ADDR(i32 %56, i32 %57)
  store i32* %58, i32** %15, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32* @MDA_ADDR(i32 %59, i32 %60)
  store i32* %61, i32** %16, align 8
  br label %62

62:                                               ; preds = %79, %55
  %63 = load i32, i32* %13, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load i32*, i32** %16, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* %14, align 4
  %69 = mul nsw i32 %68, 2
  %70 = call i32 @scr_memmovew(i32* %66, i32* %67, i32 %69)
  %71 = load i32, i32* @mda_num_columns, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %15, align 8
  %75 = load i32, i32* @mda_num_columns, align 4
  %76 = load i32*, i32** %16, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %16, align 8
  br label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %13, align 4
  br label %62

82:                                               ; preds = %62
  br label %119

83:                                               ; preds = %51, %47
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %85, %86
  %88 = sub nsw i32 %87, 1
  %89 = call i32* @MDA_ADDR(i32 %84, i32 %88)
  store i32* %89, i32** %15, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %91, %92
  %94 = sub nsw i32 %93, 1
  %95 = call i32* @MDA_ADDR(i32 %90, i32 %94)
  store i32* %95, i32** %16, align 8
  br label %96

96:                                               ; preds = %115, %83
  %97 = load i32, i32* %13, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %96
  %100 = load i32*, i32** %16, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %14, align 4
  %103 = mul nsw i32 %102, 2
  %104 = call i32 @scr_memmovew(i32* %100, i32* %101, i32 %103)
  %105 = load i32, i32* @mda_num_columns, align 4
  %106 = load i32*, i32** %15, align 8
  %107 = sext i32 %105 to i64
  %108 = sub i64 0, %107
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32* %109, i32** %15, align 8
  %110 = load i32, i32* @mda_num_columns, align 4
  %111 = load i32*, i32** %16, align 8
  %112 = sext i32 %110 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32* %114, i32** %16, align 8
  br label %115

115:                                              ; preds = %99
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %13, align 4
  br label %96

118:                                              ; preds = %96
  br label %119

119:                                              ; preds = %118, %82
  br label %120

120:                                              ; preds = %22, %119, %33
  ret void
}

declare dso_local i32 @scr_memmovew(i32*, i32*, i32) #1

declare dso_local i32* @MDA_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
