; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmag-aa-fb.c_aafbcon_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmag-aa-fb.c_aafbcon_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.aafb_info = type { %struct.aafb_cursor }
%struct.aafb_cursor = type { i32, i32, i32, i32, i64 }

@CURSOR_DRAW_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*, i32, i32, i32)* @aafbcon_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aafbcon_cursor(%struct.display* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.display*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aafb_info*, align 8
  %10 = alloca %struct.aafb_cursor*, align 8
  store %struct.display* %0, %struct.display** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.display*, %struct.display** %5, align 8
  %12 = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.aafb_info*
  store %struct.aafb_info* %14, %struct.aafb_info** %9, align 8
  %15 = load %struct.aafb_info*, %struct.aafb_info** %9, align 8
  %16 = getelementptr inbounds %struct.aafb_info, %struct.aafb_info* %15, i32 0, i32 0
  store %struct.aafb_cursor* %16, %struct.aafb_cursor** %10, align 8
  %17 = load %struct.display*, %struct.display** %5, align 8
  %18 = call i32 @fontwidth(%struct.display* %17)
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.display*, %struct.display** %5, align 8
  %22 = call i32 @fontheight(%struct.display* %21)
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load %struct.aafb_cursor*, %struct.aafb_cursor** %10, align 8
  %26 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %4
  %31 = load %struct.aafb_cursor*, %struct.aafb_cursor** %10, align 8
  %32 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 129
  %39 = zext i1 %38 to i32
  %40 = load %struct.aafb_cursor*, %struct.aafb_cursor** %10, align 8
  %41 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = icmp eq i32 %39, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %97

48:                                               ; preds = %36, %30, %4
  %49 = load %struct.aafb_cursor*, %struct.aafb_cursor** %10, align 8
  %50 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %49, i32 0, i32 2
  store i32 0, i32* %50, align 8
  %51 = load %struct.aafb_cursor*, %struct.aafb_cursor** %10, align 8
  %52 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.aafb_info*, %struct.aafb_info** %9, align 8
  %57 = call i32 @aafb_set_cursor(%struct.aafb_info* %56, i64 0)
  br label %58

58:                                               ; preds = %55, %48
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.display*, %struct.display** %5, align 8
  %61 = getelementptr inbounds %struct.display, %struct.display* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %59, %63
  %65 = load %struct.aafb_cursor*, %struct.aafb_cursor** %10, align 8
  %66 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.display*, %struct.display** %5, align 8
  %69 = getelementptr inbounds %struct.display, %struct.display* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %67, %71
  %73 = load %struct.aafb_cursor*, %struct.aafb_cursor** %10, align 8
  %74 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  switch i32 %75, label %97 [
    i32 129, label %76
    i32 130, label %79
    i32 128, label %79
  ]

76:                                               ; preds = %58
  %77 = load %struct.aafb_cursor*, %struct.aafb_cursor** %10, align 8
  %78 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  br label %97

79:                                               ; preds = %58, %58
  %80 = load %struct.aafb_cursor*, %struct.aafb_cursor** %10, align 8
  %81 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.aafb_info*, %struct.aafb_info** %9, align 8
  %86 = load %struct.aafb_cursor*, %struct.aafb_cursor** %10, align 8
  %87 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @aafb_set_cursor(%struct.aafb_info* %85, i64 %88)
  br label %94

90:                                               ; preds = %79
  %91 = load i32, i32* @CURSOR_DRAW_DELAY, align 4
  %92 = load %struct.aafb_cursor*, %struct.aafb_cursor** %10, align 8
  %93 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %84
  %95 = load %struct.aafb_cursor*, %struct.aafb_cursor** %10, align 8
  %96 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  br label %97

97:                                               ; preds = %47, %58, %94, %76
  ret void
}

declare dso_local i32 @fontwidth(%struct.display*) #1

declare dso_local i32 @fontheight(%struct.display*) #1

declare dso_local i32 @aafb_set_cursor(%struct.aafb_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
