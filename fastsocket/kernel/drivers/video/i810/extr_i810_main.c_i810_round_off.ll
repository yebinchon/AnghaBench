; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_main.c_i810_round_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_main.c_i810_round_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*)* @i810_round_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810_round_off(%struct.fb_var_screeninfo* %0) #0 {
  %2 = alloca %struct.fb_var_screeninfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %2, align 8
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 7
  store i32 %22, i32* %20, align 8
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, -8
  store i32 %26, i32* %24, align 8
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 4
  store i32 8, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 32
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 4
  store i32 32, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %34
  %43 = call i32 @round_off_xres(i32* %3)
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 40
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 40, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i32, i32* %3, align 4
  %49 = icmp sgt i32 %48, 2048
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 2048, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 7
  %54 = and i32 %53, -8
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %3, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %51
  %61 = call i32 @round_off_yres(i32* %3, i32* %4)
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i32, i32* %4, align 4
  %67 = icmp sge i32 %66, 2048
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 2048, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %73, %69
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 12
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 4
  %88 = and i32 %87, -8
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 4
  %95 = and i32 %94, -8
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 8
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 4
  %102 = and i32 %101, -8
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %83
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %112, %115
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %116, %119
  %121 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %122 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %121, i32 0, i32 11
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %120, %123
  %125 = and i32 %124, 1
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %111
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %127, %111
  br label %133

133:                                              ; preds = %132, %83
  %134 = load i32, i32* %3, align 4
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %4, align 4
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %139 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  ret void
}

declare dso_local i32 @round_off_xres(i32*) #1

declare dso_local i32 @round_off_yres(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
