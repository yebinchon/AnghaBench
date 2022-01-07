; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@KD_TEXT = common dso_local global i64 0, align 8
@vga_vram_base = common dso_local global i32 0, align 4
@vga_video_type = common dso_local global i32 0, align 4
@VIDEO_TYPE_VGAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @vgacon_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgacon_cursor(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %6 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @KD_TEXT, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %170

11:                                               ; preds = %2
  %12 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %13 = call i32 @vgacon_restore_screen(%struct.vc_data* %12)
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %170 [
    i32 134, label %15
    i32 133, label %37
    i32 135, label %37
  ]

15:                                               ; preds = %11
  %16 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @vga_vram_base, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sdiv i32 %20, 2
  %22 = call i32 @write_vga(i32 14, i32 %21)
  %23 = load i32, i32* @vga_video_type, align 4
  %24 = load i32, i32* @VIDEO_TYPE_VGAC, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vgacon_set_cursor_size(i32 %29, i32 31, i32 30)
  br label %36

31:                                               ; preds = %15
  %32 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vgacon_set_cursor_size(i32 %34, i32 31, i32 31)
  br label %36

36:                                               ; preds = %31, %26
  br label %170

37:                                               ; preds = %11, %11
  %38 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @vga_vram_base, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sdiv i32 %42, 2
  %44 = call i32 @write_vga(i32 14, i32 %43)
  %45 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 15
  switch i32 %48, label %160 [
    i32 128, label %49
    i32 129, label %78
    i32 131, label %100
    i32 132, label %123
    i32 130, label %145
  ]

49:                                               ; preds = %37
  %50 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, 10
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 2, i32 3
  %64 = sub nsw i32 %56, %63
  %65 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %70 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %72, 10
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 2
  %76 = sub nsw i32 %68, %75
  %77 = call i32 @vgacon_set_cursor_size(i32 %52, i32 %64, i32 %76)
  br label %169

78:                                               ; preds = %37
  %79 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %80 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %83 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sdiv i32 %85, 3
  %87 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %88 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %92 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %94, 10
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 1, i32 2
  %98 = sub nsw i32 %90, %97
  %99 = call i32 @vgacon_set_cursor_size(i32 %81, i32 %86, i32 %98)
  br label %169

100:                                              ; preds = %37
  %101 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %102 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %105 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %107, 2
  %109 = sdiv i32 %108, 3
  %110 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %111 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %115 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %117, 10
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 2
  %121 = sub nsw i32 %113, %120
  %122 = call i32 @vgacon_set_cursor_size(i32 %103, i32 %109, i32 %121)
  br label %169

123:                                              ; preds = %37
  %124 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %125 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %128 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sdiv i32 %130, 2
  %132 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %133 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %137 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %139, 10
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 1, i32 2
  %143 = sub nsw i32 %135, %142
  %144 = call i32 @vgacon_set_cursor_size(i32 %126, i32 %131, i32 %143)
  br label %169

145:                                              ; preds = %37
  %146 = load i32, i32* @vga_video_type, align 4
  %147 = load i32, i32* @VIDEO_TYPE_VGAC, align 4
  %148 = icmp sge i32 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %151 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @vgacon_set_cursor_size(i32 %152, i32 31, i32 30)
  br label %159

154:                                              ; preds = %145
  %155 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %156 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @vgacon_set_cursor_size(i32 %157, i32 31, i32 31)
  br label %159

159:                                              ; preds = %154, %149
  br label %169

160:                                              ; preds = %37
  %161 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %162 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %165 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @vgacon_set_cursor_size(i32 %163, i32 1, i32 %167)
  br label %169

169:                                              ; preds = %160, %159, %123, %100, %78, %49
  br label %170

170:                                              ; preds = %10, %11, %169, %36
  ret void
}

declare dso_local i32 @vgacon_restore_screen(%struct.vc_data*) #1

declare dso_local i32 @write_vga(i32, i32) #1

declare dso_local i32 @vgacon_set_cursor_size(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
