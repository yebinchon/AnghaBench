; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_WClut.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_WClut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cirrusfb_info = type { i64, i32 }

@VGA_PEL_D = common dso_local global i32 0, align 4
@VGA_PEL_IW = common dso_local global i32 0, align 4
@BT_PICASSO = common dso_local global i64 0, align 8
@BT_PICASSO4 = common dso_local global i64 0, align 8
@BT_ALPINE = common dso_local global i64 0, align 8
@BT_GD5480 = common dso_local global i64 0, align 8
@BT_SD64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cirrusfb_info*, i8, i8, i8, i8)* @WClut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WClut(%struct.cirrusfb_info* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4) #0 {
  %6 = alloca %struct.cirrusfb_info*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.cirrusfb_info* %0, %struct.cirrusfb_info** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i8 %4, i8* %10, align 1
  %12 = load i32, i32* @VGA_PEL_D, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %14 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VGA_PEL_IW, align 4
  %17 = load i8, i8* %7, align 1
  %18 = call i32 @vga_w(i32 %15, i32 %16, i8 zeroext %17)
  %19 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %20 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BT_PICASSO, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %52, label %24

24:                                               ; preds = %5
  %25 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %26 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BT_PICASSO4, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %52, label %30

30:                                               ; preds = %24
  %31 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %32 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BT_ALPINE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %52, label %36

36:                                               ; preds = %30
  %37 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %38 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BT_GD5480, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %44 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BT_SD64, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %50 = call i64 @is_laguna(%struct.cirrusfb_info* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %48, %42, %36, %30, %24, %5
  %53 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %54 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BT_PICASSO, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  %60 = add i32 %59, 4095
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %58, %52
  %62 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %63 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i8, i8* %8, align 1
  %67 = call i32 @vga_w(i32 %64, i32 %65, i8 zeroext %66)
  %68 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %69 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i8, i8* %9, align 1
  %73 = call i32 @vga_w(i32 %70, i32 %71, i8 zeroext %72)
  %74 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %75 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i8, i8* %10, align 1
  %79 = call i32 @vga_w(i32 %76, i32 %77, i8 zeroext %78)
  br label %99

80:                                               ; preds = %48
  %81 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %82 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i8, i8* %10, align 1
  %86 = call i32 @vga_w(i32 %83, i32 %84, i8 zeroext %85)
  %87 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %88 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i8, i8* %9, align 1
  %92 = call i32 @vga_w(i32 %89, i32 %90, i8 zeroext %91)
  %93 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %94 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i8, i8* %8, align 1
  %98 = call i32 @vga_w(i32 %95, i32 %96, i8 zeroext %97)
  br label %99

99:                                               ; preds = %80, %61
  ret void
}

declare dso_local i32 @vga_w(i32, i32, i8 zeroext) #1

declare dso_local i64 @is_laguna(%struct.cirrusfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
