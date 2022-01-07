; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_accel.c_savagefb_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_accel.c_savagefb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_2__, %struct.savagefb_par* }
%struct.TYPE_2__ = type { i64 }
%struct.savagefb_par = type { i32 (%struct.savagefb_par*, i32)*, i64 }
%struct.fb_fillrect = type { i32, i64, i32, i32, i32, i32 }

@FB_VISUAL_PSEUDOCOLOR = common dso_local global i64 0, align 8
@BCI_CMD_RECT = common dso_local global i32 0, align 4
@BCI_CMD_RECT_XP = common dso_local global i32 0, align 4
@BCI_CMD_RECT_YP = common dso_local global i32 0, align 4
@BCI_CMD_DEST_GBD = common dso_local global i32 0, align 4
@BCI_CMD_SRC_SOLID = common dso_local global i32 0, align 4
@BCI_CMD_SEND_COLOR = common dso_local global i32 0, align 4
@savagefb_rop = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @savagefb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.savagefb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 2
  %10 = load %struct.savagefb_par*, %struct.savagefb_par** %9, align 8
  store %struct.savagefb_par* %10, %struct.savagefb_par** %5, align 8
  %11 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %12 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %17 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  br label %90

21:                                               ; preds = %15
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FB_VISUAL_PSEUDOCOLOR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %30 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  br label %43

32:                                               ; preds = %21
  %33 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %38 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %32, %28
  %44 = load i32, i32* @BCI_CMD_RECT, align 4
  %45 = load i32, i32* @BCI_CMD_RECT_XP, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @BCI_CMD_RECT_YP, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @BCI_CMD_DEST_GBD, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @BCI_CMD_SRC_SOLID, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @BCI_CMD_SEND_COLOR, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %6, align 4
  %55 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %56 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32*, i32** @savagefb_rop, align 8
  %59 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %60 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BCI_CMD_SET_ROP(i32 %57, i32 %63)
  %65 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %66 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %65, i32 0, i32 0
  %67 = load i32 (%struct.savagefb_par*, i32)*, i32 (%struct.savagefb_par*, i32)** %66, align 8
  %68 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %69 = call i32 %67(%struct.savagefb_par* %68, i32 4)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @BCI_SEND(i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @BCI_SEND(i32 %72)
  %74 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %75 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %78 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @BCI_X_Y(i32 %76, i32 %79)
  %81 = call i32 @BCI_SEND(i32 %80)
  %82 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %83 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %86 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @BCI_W_H(i32 %84, i32 %87)
  %89 = call i32 @BCI_SEND(i32 %88)
  br label %90

90:                                               ; preds = %43, %20
  ret void
}

declare dso_local i32 @BCI_CMD_SET_ROP(i32, i32) #1

declare dso_local i32 @BCI_SEND(i32) #1

declare dso_local i32 @BCI_X_Y(i32, i32) #1

declare dso_local i32 @BCI_W_H(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
