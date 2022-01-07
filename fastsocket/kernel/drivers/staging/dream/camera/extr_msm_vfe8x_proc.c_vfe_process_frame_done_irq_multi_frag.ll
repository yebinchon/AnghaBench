; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_frame_done_irq_multi_frag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_frame_done_irq_multi_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.vfe_output_path_combo = type { i64, i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32*, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@ctrl = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_output_path_combo*)* @vfe_process_frame_done_irq_multi_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_process_frame_done_irq_multi_frag(%struct.vfe_output_path_combo* %0) #0 {
  %2 = alloca %struct.vfe_output_path_combo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.vfe_output_path_combo* %0, %struct.vfe_output_path_combo** %2, align 8
  %10 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %11 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %89, label %14

14:                                               ; preds = %1
  %15 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %16 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %19 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = mul i64 %17, %20
  store i64 %21, i64* %5, align 8
  %22 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %23 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  %29 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %30 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  %36 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %37 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %8, align 8
  %39 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %40 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %6, align 8
  %45 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %46 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %7, align 8
  store i64 0, i64* %9, align 8
  br label %51

51:                                               ; preds = %63, %14
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %54 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %8, align 8
  %60 = load i32, i32* %58, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  br label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %9, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %9, align 8
  br label %51

66:                                               ; preds = %51
  store i64 0, i64* %9, align 8
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %70 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %8, align 8
  %76 = load i32, i32* %74, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  br label %79

79:                                               ; preds = %73
  %80 = load i64, i64* %9, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %9, align 8
  br label %67

82:                                               ; preds = %67
  %83 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %84 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @vfe_send_output_msg(i32 %85, i32 %86, i32 %87)
  br label %112

89:                                               ; preds = %1
  %90 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %91 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %89
  %101 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %102 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %100
  br label %112

112:                                              ; preds = %111, %82
  %113 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %114 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = xor i64 %115, 1
  %117 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %118 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %112
  %124 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %125 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %123, %112
  ret void
}

declare dso_local i32 @vfe_send_output_msg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
