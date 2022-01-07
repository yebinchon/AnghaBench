; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_screen_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_screen_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i32, i64 }

@fg_console = common dso_local global i64 0, align 8
@softback_lines = common dso_local global i32 0, align 4
@softback_curr = common dso_local global i32 0, align 4
@softback_end = common dso_local global i64 0, align 8
@softback_buf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.vc_data*, i32)* @fbcon_screen_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fbcon_screen_pos(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @fg_console, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @softback_lines, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %3, align 8
  br label %65

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %25, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @softback_lines, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load i32, i32* @softback_lines, align 4
  %41 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %40, %43
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %39, %45
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %3, align 8
  br label %65

48:                                               ; preds = %24
  %49 = load i32, i32* @softback_curr, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @softback_end, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load i64, i64* @softback_buf, align 8
  %58 = load i64, i64* @softback_end, align 8
  %59 = sub i64 %57, %58
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %56, %48
  %63 = load i64, i64* %6, align 8
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %3, align 8
  br label %65

65:                                               ; preds = %62, %33, %16
  %66 = load i32*, i32** %3, align 8
  ret i32* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
