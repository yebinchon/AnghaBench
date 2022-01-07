; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbmem.c_fb_pan_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbmem.c_fb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.fb_fix_screeninfo }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* }
%struct.fb_fix_screeninfo = type { i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32 }

@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fb_pan_display(%struct.fb_info* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca %struct.fb_fix_screeninfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 2
  store %struct.fb_fix_screeninfo* %10, %struct.fb_fix_screeninfo** %6, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %2
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %19
  %27 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %28 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %36 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31, %26
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %44

43:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %40
  br label %63

45:                                               ; preds = %19
  %46 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %47 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %55 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = srem i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50, %45
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %59, %50
  br label %63

63:                                               ; preds = %62, %44
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %71 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %79 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = srem i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74, %69
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %74, %64
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %121, label %89

89:                                               ; preds = %86
  %90 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)** %93, align 8
  %95 = icmp ne i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* %94, null
  br i1 %95, label %96, label %121

96:                                               ; preds = %89
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sub i32 %103, %104
  %106 = icmp ugt i32 %99, %105
  br i1 %106, label %121, label %107

107:                                              ; preds = %96
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %116 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %114, %118
  %120 = icmp sgt i32 %110, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %107, %96, %89, %86
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %171

124:                                              ; preds = %107
  %125 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %126 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)** %128, align 8
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %131 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %132 = call i32 %129(%struct.fb_var_screeninfo* %130, %struct.fb_info* %131)
  store i32 %132, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %124
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %171

136:                                              ; preds = %124
  %137 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %138 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %141 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 4
  store i32 %139, i32* %142, align 8
  %143 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %144 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %147 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 5
  store i32 %145, i32* %148, align 4
  %149 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %150 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %136
  %156 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %157 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %158 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %156
  store i32 %161, i32* %159, align 8
  br label %170

162:                                              ; preds = %136
  %163 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %164 = xor i32 %163, -1
  %165 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %166 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, %164
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %162, %155
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %134, %121
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
