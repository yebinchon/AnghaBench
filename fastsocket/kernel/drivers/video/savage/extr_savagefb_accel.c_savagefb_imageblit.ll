; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_accel.c_savagefb_imageblit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_accel.c_savagefb_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_2__, %struct.savagefb_par* }
%struct.TYPE_2__ = type { i64 }
%struct.savagefb_par = type { i32 (%struct.savagefb_par*, i32)*, i64 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@FB_VISUAL_PSEUDOCOLOR = common dso_local global i64 0, align 8
@BCI_CMD_RECT = common dso_local global i32 0, align 4
@BCI_CMD_RECT_XP = common dso_local global i32 0, align 4
@BCI_CMD_RECT_YP = common dso_local global i32 0, align 4
@BCI_CMD_CLIP_LR = common dso_local global i32 0, align 4
@BCI_CMD_DEST_GBD = common dso_local global i32 0, align 4
@BCI_CMD_SRC_MONO = common dso_local global i32 0, align 4
@BCI_CMD_SEND_COLOR = common dso_local global i32 0, align 4
@savagefb_rop = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @savagefb_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  %5 = alloca %struct.savagefb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 2
  %15 = load %struct.savagefb_par*, %struct.savagefb_par** %14, align 8
  store %struct.savagefb_par* %15, %struct.savagefb_par** %5, align 8
  %16 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %17 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %12, align 8
  %20 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %21 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %26 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %2
  br label %163

30:                                               ; preds = %24
  %31 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %32 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %38 = call i32 @cfb_imageblit(%struct.fb_info* %36, %struct.fb_image* %37)
  br label %163

39:                                               ; preds = %30
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FB_VISUAL_PSEUDOCOLOR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %48 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  %50 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %51 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %7, align 4
  br label %74

53:                                               ; preds = %39
  %54 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %59 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  %64 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %69 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %53, %46
  %75 = load i32, i32* @BCI_CMD_RECT, align 4
  %76 = load i32, i32* @BCI_CMD_RECT_XP, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @BCI_CMD_RECT_YP, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @BCI_CMD_CLIP_LR, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @BCI_CMD_DEST_GBD, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @BCI_CMD_SRC_MONO, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @BCI_CMD_SEND_COLOR, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %11, align 4
  %88 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %89 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32*, i32** @savagefb_rop, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @BCI_CMD_SET_ROP(i32 %90, i32 %93)
  %95 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %96 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 31
  %99 = and i32 %98, -32
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %102 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %100, %103
  %105 = sdiv i32 %104, 8
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = ashr i32 %106, 2
  store i32 %107, i32* %8, align 4
  %108 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %109 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %108, i32 0, i32 0
  %110 = load i32 (%struct.savagefb_par*, i32)*, i32 (%struct.savagefb_par*, i32)** %109, align 8
  %111 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 5
  %114 = call i32 %110(%struct.savagefb_par* %111, i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @BCI_SEND(i32 %115)
  %117 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %118 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %121 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %124 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %122, %126
  %128 = sub nsw i64 %127, 1
  %129 = call i32 @BCI_CLIP_LR(i64 %119, i64 %128)
  %130 = call i32 @BCI_SEND(i32 %129)
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @BCI_SEND(i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @BCI_SEND(i32 %133)
  %135 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %136 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %139 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @BCI_X_Y(i64 %137, i32 %140)
  %142 = call i32 @BCI_SEND(i32 %141)
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %145 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @BCI_W_H(i32 %143, i32 %146)
  %148 = call i32 @BCI_SEND(i32 %147)
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %160, %74
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %149
  %154 = load i32*, i32** %12, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @BCI_SEND(i32 %158)
  br label %160

160:                                              ; preds = %153
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %149

163:                                              ; preds = %29, %35, %149
  ret void
}

declare dso_local i32 @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @BCI_CMD_SET_ROP(i32, i32) #1

declare dso_local i32 @BCI_SEND(i32) #1

declare dso_local i32 @BCI_CLIP_LR(i64, i64) #1

declare dso_local i32 @BCI_X_Y(i64, i32) #1

declare dso_local i32 @BCI_W_H(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
