; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_copyarea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_copyarea = type { i32, i32, i64, i64, i64, i64 }
%struct.cfb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }

@CO_CMD_L_PATTERN_FGCOL = common dso_local global i32 0, align 4
@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@CO_REG_CONTROL = common dso_local global i32 0, align 4
@CO_REG_PIXWIDTH = common dso_local global i32 0, align 4
@CO_REG_PIXHEIGHT = common dso_local global i32 0, align 4
@CO_CMD_L_INC_LEFT = common dso_local global i32 0, align 4
@CO_CMD_L_INC_UP = common dso_local global i32 0, align 4
@CO_REG_X_PHASE = common dso_local global i32 0, align 4
@CO_REG_SRC1_PTR = common dso_local global i32 0, align 4
@CO_REG_DEST_PTR = common dso_local global i32 0, align 4
@CO_FG_MIX_SRC = common dso_local global i32 0, align 4
@CO_REG_FGMIX = common dso_local global i32 0, align 4
@CO_REG_CMD_L = common dso_local global i32 0, align 4
@CO_CMD_H_FGSRCMAP = common dso_local global i32 0, align 4
@CO_CMD_H_BLITTER = common dso_local global i32 0, align 4
@CO_REG_CMD_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @cyber2000fb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyber2000fb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.cfb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = bitcast %struct.fb_info* %9 to %struct.cfb_info*
  store %struct.cfb_info* %10, %struct.cfb_info** %5, align 8
  %11 = load i32, i32* @CO_CMD_L_PATTERN_FGCOL, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %13 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %22 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %23 = call i32 @cfb_copyarea(%struct.fb_info* %21, %struct.fb_copyarea* %22)
  br label %170

24:                                               ; preds = %2
  %25 = load i32, i32* @CO_REG_CONTROL, align 4
  %26 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %27 = call i32 @cyber2000fb_writeb(i64 0, i32 %25, %struct.cfb_info* %26)
  %28 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %29 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @CO_REG_PIXWIDTH, align 4
  %33 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %34 = call i32 @cyber2000fb_writew(i32 %31, i32 %32, %struct.cfb_info* %33)
  %35 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %36 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* @CO_REG_PIXHEIGHT, align 4
  %40 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %41 = call i32 @cyber2000fb_writew(i32 %38, i32 %39, %struct.cfb_info* %40)
  %42 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %43 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %46 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %49 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = mul i64 %47, %52
  %54 = add i64 %44, %53
  store i64 %54, i64* %7, align 8
  %55 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %56 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %59 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %62 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = mul i64 %60, %65
  %67 = add i64 %57, %66
  store i64 %67, i64* %8, align 8
  %68 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %69 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %72 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %24
  %76 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %77 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %7, align 8
  %83 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %84 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %8, align 8
  %90 = load i32, i32* @CO_CMD_L_INC_LEFT, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %75, %24
  %94 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %95 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %98 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %96, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %93
  %102 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %103 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %108 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = mul i64 %106, %111
  %113 = load i64, i64* %7, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %7, align 8
  %115 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %116 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %121 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = mul i64 %119, %124
  %126 = load i64, i64* %8, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %8, align 8
  %128 = load i32, i32* @CO_CMD_L_INC_UP, align 4
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %101, %93
  %132 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %133 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 24
  br i1 %137, label %138, label %147

138:                                              ; preds = %131
  %139 = load i64, i64* %8, align 8
  %140 = load i32, i32* @CO_REG_X_PHASE, align 4
  %141 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %142 = call i32 @cyber2000fb_writeb(i64 %139, i32 %140, %struct.cfb_info* %141)
  %143 = load i64, i64* %7, align 8
  %144 = mul i64 %143, 3
  store i64 %144, i64* %7, align 8
  %145 = load i64, i64* %8, align 8
  %146 = mul i64 %145, 3
  store i64 %146, i64* %8, align 8
  br label %147

147:                                              ; preds = %138, %131
  %148 = load i64, i64* %7, align 8
  %149 = load i32, i32* @CO_REG_SRC1_PTR, align 4
  %150 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %151 = call i32 @cyber2000fb_writel(i64 %148, i32 %149, %struct.cfb_info* %150)
  %152 = load i64, i64* %8, align 8
  %153 = load i32, i32* @CO_REG_DEST_PTR, align 4
  %154 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %155 = call i32 @cyber2000fb_writel(i64 %152, i32 %153, %struct.cfb_info* %154)
  %156 = load i32, i32* @CO_FG_MIX_SRC, align 4
  %157 = load i32, i32* @CO_REG_FGMIX, align 4
  %158 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %159 = call i32 @cyber2000fb_writew(i32 %156, i32 %157, %struct.cfb_info* %158)
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @CO_REG_CMD_L, align 4
  %162 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %163 = call i32 @cyber2000fb_writew(i32 %160, i32 %161, %struct.cfb_info* %162)
  %164 = load i32, i32* @CO_CMD_H_FGSRCMAP, align 4
  %165 = load i32, i32* @CO_CMD_H_BLITTER, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @CO_REG_CMD_H, align 4
  %168 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %169 = call i32 @cyber2000fb_writew(i32 %166, i32 %167, %struct.cfb_info* %168)
  br label %170

170:                                              ; preds = %147, %20
  ret void
}

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @cyber2000fb_writeb(i64, i32, %struct.cfb_info*) #1

declare dso_local i32 @cyber2000fb_writew(i32, i32, %struct.cfb_info*) #1

declare dso_local i32 @cyber2000fb_writel(i64, i32, %struct.cfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
