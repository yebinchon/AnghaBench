; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_tridentfb_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_tridentfb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i64, %struct.TYPE_2__, %struct.tridentfb_par* }
%struct.TYPE_2__ = type { i32 }
%struct.tridentfb_par = type { i32 (%struct.tridentfb_par*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.tridentfb_par*)* }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }

@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @tridentfb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tridentfb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.tridentfb_par*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 3
  %9 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  store %struct.tridentfb_par* %9, %struct.tridentfb_par** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %19 = call i32 @cfb_fillrect(%struct.fb_info* %17, %struct.fb_fillrect* %18)
  br label %76

20:                                               ; preds = %2
  %21 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %28 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 8
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %49

38:                                               ; preds = %20
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %44 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %38, %26
  %50 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %51 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %50, i32 0, i32 1
  %52 = load i32 (%struct.tridentfb_par*)*, i32 (%struct.tridentfb_par*)** %51, align 8
  %53 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %54 = call i32 %52(%struct.tridentfb_par* %53)
  %55 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %56 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %55, i32 0, i32 0
  %57 = load i32 (%struct.tridentfb_par*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.tridentfb_par*, i32, i32, i32, i32, i32, i32)** %56, align 8
  %58 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %59 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %60 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %63 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %66 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %69 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %73 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 %57(%struct.tridentfb_par* %58, i32 %61, i32 %64, i32 %67, i32 %70, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %49, %16
  ret void
}

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
