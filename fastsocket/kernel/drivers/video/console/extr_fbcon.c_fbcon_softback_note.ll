; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_softback_note.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_softback_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i32, i64 }

@fg_console = common dso_local global i64 0, align 8
@softback_in = common dso_local global i64 0, align 8
@softback_end = common dso_local global i64 0, align 8
@softback_buf = common dso_local global i64 0, align 8
@softback_top = common dso_local global i64 0, align 8
@softback_curr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32)* @fbcon_softback_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_softback_note(%struct.vc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @fg_console, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %72

14:                                               ; preds = %3
  %15 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %18, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %17, %23
  %25 = inttoptr i64 %24 to i16*
  store i16* %25, i16** %7, align 8
  br label %26

26:                                               ; preds = %69, %14
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %26
  %30 = load i64, i64* @softback_in, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load i16*, i16** %7, align 8
  %33 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @scr_memcpyw(i32* %31, i16* %32, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  %39 = load i16*, i16** %7, align 8
  %40 = call i16* @advance_row(i16* %39, i32 1)
  store i16* %40, i16** %7, align 8
  %41 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @softback_in, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* @softback_in, align 8
  %47 = load i64, i64* @softback_in, align 8
  %48 = load i64, i64* @softback_end, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %29
  %51 = load i64, i64* @softback_buf, align 8
  store i64 %51, i64* @softback_in, align 8
  br label %52

52:                                               ; preds = %50, %29
  %53 = load i64, i64* @softback_in, align 8
  %54 = load i64, i64* @softback_top, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @softback_top, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* @softback_top, align 8
  %63 = load i64, i64* @softback_top, align 8
  %64 = load i64, i64* @softback_end, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i64, i64* @softback_buf, align 8
  store i64 %67, i64* @softback_top, align 8
  br label %68

68:                                               ; preds = %66, %56
  br label %69

69:                                               ; preds = %68, %52
  br label %26

70:                                               ; preds = %26
  %71 = load i64, i64* @softback_in, align 8
  store i64 %71, i64* @softback_curr, align 8
  br label %72

72:                                               ; preds = %70, %13
  ret void
}

declare dso_local i32 @scr_memcpyw(i32*, i16*, i32) #1

declare dso_local i16* @advance_row(i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
