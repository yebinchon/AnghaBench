; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_modedb.c_fb_mode_is_equal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_modedb.c_fb_mode_is_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fb_mode_is_equal(%struct.fb_videomode* %0, %struct.fb_videomode* %1) #0 {
  %3 = alloca %struct.fb_videomode*, align 8
  %4 = alloca %struct.fb_videomode*, align 8
  store %struct.fb_videomode* %0, %struct.fb_videomode** %3, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %4, align 8
  %5 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %6 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %9 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %92

12:                                               ; preds = %2
  %13 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %14 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %17 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %92

20:                                               ; preds = %12
  %21 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %22 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %25 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %92

28:                                               ; preds = %20
  %29 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %30 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %33 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %92

36:                                               ; preds = %28
  %37 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %38 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %41 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %92

44:                                               ; preds = %36
  %45 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %46 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %49 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %92

52:                                               ; preds = %44
  %53 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %54 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %57 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %52
  %61 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %62 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %65 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %60
  %69 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %70 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %73 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %68
  %77 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %78 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %77, i32 0, i32 9
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %81 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %80, i32 0, i32 9
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %86 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %85, i32 0, i32 10
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %89 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %88, i32 0, i32 10
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br label %92

92:                                               ; preds = %84, %76, %68, %60, %52, %44, %36, %28, %20, %12, %2
  %93 = phi i1 [ false, %76 ], [ false, %68 ], [ false, %60 ], [ false, %52 ], [ false, %44 ], [ false, %36 ], [ false, %28 ], [ false, %20 ], [ false, %12 ], [ false, %2 ], [ %91, %84 ]
  %94 = zext i1 %93 to i32
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
