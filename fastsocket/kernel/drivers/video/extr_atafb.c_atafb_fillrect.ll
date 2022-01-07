; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_atafb_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_atafb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32 }
%struct.atafb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @atafb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atafb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.atafb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.atafb_par*
  store %struct.atafb_par* %13, %struct.atafb_par** %5, align 8
  %14 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %15 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %20 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %2
  br label %167

24:                                               ; preds = %18
  %25 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %26 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %29 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %33 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %36 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %24
  %46 = load i32, i32* %6, align 4
  br label %52

47:                                               ; preds = %24
  %48 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  br label %52

52:                                               ; preds = %47, %45
  %53 = phi i32 [ %46, %45 ], [ %51, %47 ]
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  br label %67

62:                                               ; preds = %52
  %63 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  br label %67

67:                                               ; preds = %62, %60
  %68 = phi i32 [ %61, %60 ], [ %66, %62 ]
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %71 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %76 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  store i32 %78, i32* %9, align 4
  %79 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %101

84:                                               ; preds = %67
  %85 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %86 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %87 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %90 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %93 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %96 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @atafb_mfb_fillrect(%struct.fb_info* %85, i32 %88, i32 %91, i32 %94, i32 %97, i32 %98, i32 %99)
  br label %166

101:                                              ; preds = %67
  %102 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %103 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %124

107:                                              ; preds = %101
  %108 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %109 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %110 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %113 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %116 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %119 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @atafb_iplan2p2_fillrect(%struct.fb_info* %108, i32 %111, i32 %114, i32 %117, i32 %120, i32 %121, i32 %122)
  br label %165

124:                                              ; preds = %101
  %125 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %126 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 4
  br i1 %129, label %130, label %147

130:                                              ; preds = %124
  %131 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %132 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %133 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %136 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %139 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %142 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @atafb_iplan2p4_fillrect(%struct.fb_info* %131, i32 %134, i32 %137, i32 %140, i32 %143, i32 %144, i32 %145)
  br label %164

147:                                              ; preds = %124
  %148 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %149 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %150 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %153 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %156 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %159 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @atafb_iplan2p8_fillrect(%struct.fb_info* %148, i32 %151, i32 %154, i32 %157, i32 %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %147, %130
  br label %165

165:                                              ; preds = %164, %107
  br label %166

166:                                              ; preds = %165, %84
  br label %167

167:                                              ; preds = %166, %23
  ret void
}

declare dso_local i32 @atafb_mfb_fillrect(%struct.fb_info*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atafb_iplan2p2_fillrect(%struct.fb_info*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atafb_iplan2p4_fillrect(%struct.fb_info*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atafb_iplan2p8_fillrect(%struct.fb_info*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
