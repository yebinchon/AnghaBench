; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_decode_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_decode_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.par_info = type { i32, i32 }
%struct.cfb_info = type { i32, i32* }
%struct.fb_var_screeninfo = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EXT_DCLK_DIV_VFSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.par_info*, %struct.cfb_info*, %struct.fb_var_screeninfo*)* @cyber2000fb_decode_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyber2000fb_decode_clock(%struct.par_info* %0, %struct.cfb_info* %1, %struct.fb_var_screeninfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.par_info*, align 8
  %6 = alloca %struct.cfb_info*, align 8
  %7 = alloca %struct.fb_var_screeninfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.par_info* %0, %struct.par_info** %5, align 8
  store %struct.cfb_info* %1, %struct.cfb_info** %6, align 8
  store %struct.fb_var_screeninfo* %2, %struct.fb_var_screeninfo** %7, align 8
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %25 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %48, %3
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.cfb_info*, %struct.cfb_info** %6, align 8
  %33 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %31, %38
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp sgt i32 8696, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load i32, i32* %16, align 4
  %44 = icmp sgt i32 %43, 3846
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %8, align 4
  br label %51

47:                                               ; preds = %42, %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %27

51:                                               ; preds = %45, %27
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %137

57:                                               ; preds = %51
  store i32 2147483647, i32* %14, align 4
  store i32 32, i32* %13, align 4
  store i32 255, i32* %12, align 4
  store i32 32, i32* %11, align 4
  br label %58

58:                                               ; preds = %105, %57
  %59 = load i32, i32* %11, align 4
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %108

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %11, align 4
  %64 = mul nsw i32 %62, %63
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sdiv i32 %66, 2
  %68 = add nsw i32 %65, %67
  %69 = load i32, i32* %8, align 4
  %70 = sdiv i32 %68, %69
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp sgt i32 %71, 256
  br i1 %72, label %76, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %18, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %61
  br label %105

77:                                               ; preds = %73
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %18, align 4
  %80 = sdiv i32 %79, 2
  %81 = add nsw i32 %78, %80
  %82 = load i32, i32* %18, align 4
  %83 = sdiv i32 %81, %82
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %19, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* %20, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load i32, i32* %20, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %20, align 4
  br label %92

92:                                               ; preds = %89, %77
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* %20, align 4
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %18, align 4
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %20, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %108

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %76
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %58

108:                                              ; preds = %103, %58
  %109 = load i32, i32* %13, align 4
  %110 = sub nsw i32 %109, 1
  %111 = load %struct.par_info*, %struct.par_info** %5, align 8
  %112 = getelementptr inbounds %struct.par_info, %struct.par_info* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %10, align 4
  %114 = shl i32 %113, 6
  %115 = load i32, i32* %12, align 4
  %116 = sub nsw i32 %115, 1
  %117 = or i32 %114, %116
  %118 = load %struct.par_info*, %struct.par_info** %5, align 8
  %119 = getelementptr inbounds %struct.par_info, %struct.par_info* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %12, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %13, align 4
  %124 = sdiv i32 %122, %123
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 40690
  br i1 %126, label %127, label %136

127:                                              ; preds = %108
  %128 = load i32, i32* %15, align 4
  %129 = icmp slt i32 %128, 5556
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i32, i32* @EXT_DCLK_DIV_VFSEL, align 4
  %132 = load %struct.par_info*, %struct.par_info** %5, align 8
  %133 = getelementptr inbounds %struct.par_info, %struct.par_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %130, %127, %108
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %54
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
