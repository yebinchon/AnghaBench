; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_adjust_height.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_adjust_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.vc_data* }
%struct.vc_data = type { i32, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.vc_data*, i32)* }

@vga_lock = common dso_local global i32 0, align 4
@vga_video_port_reg = common dso_local global i32 0, align 4
@vga_video_port_val = common dso_local global i32 0, align 4
@vga_video_font_height = common dso_local global i32 0, align 4
@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@vc_cons = common dso_local global %struct.TYPE_6__* null, align 8
@vga_con = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cursor_size_lastfrom = common dso_local global i64 0, align 8
@cursor_size_lastto = common dso_local global i64 0, align 8
@CM_DRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32)* @vgacon_adjust_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgacon_adjust_height(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = udiv i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = mul i32 %17, %18
  %20 = sub i32 %19, 1
  store i32 %20, i32* %9, align 4
  %21 = call i32 @spin_lock_irq(i32* @vga_lock)
  %22 = load i32, i32* @vga_video_port_reg, align 4
  %23 = call i32 @outb_p(i8 zeroext 7, i32 %22)
  %24 = load i32, i32* @vga_video_port_val, align 4
  %25 = call zeroext i8 @inb_p(i32 %24)
  store i8 %25, i8* %5, align 1
  %26 = load i32, i32* @vga_video_port_reg, align 4
  %27 = call i32 @outb_p(i8 zeroext 9, i32 %26)
  %28 = load i32, i32* @vga_video_port_val, align 4
  %29 = call zeroext i8 @inb_p(i32 %28)
  store i8 %29, i8* %7, align 1
  %30 = call i32 @spin_unlock_irq(i32* @vga_lock)
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %6, align 1
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 189
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 256
  %39 = ashr i32 %38, 7
  %40 = add nsw i32 %36, %39
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 512
  %43 = ashr i32 %42, 3
  %44 = add nsw i32 %40, %43
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %5, align 1
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 224
  %49 = load i32, i32* %4, align 4
  %50 = sub i32 %49, 1
  %51 = add i32 %48, %50
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %7, align 1
  %53 = call i32 @spin_lock_irq(i32* @vga_lock)
  %54 = load i32, i32* @vga_video_port_reg, align 4
  %55 = call i32 @outb_p(i8 zeroext 7, i32 %54)
  %56 = load i8, i8* %5, align 1
  %57 = load i32, i32* @vga_video_port_val, align 4
  %58 = call i32 @outb_p(i8 zeroext %56, i32 %57)
  %59 = load i32, i32* @vga_video_port_reg, align 4
  %60 = call i32 @outb_p(i8 zeroext 9, i32 %59)
  %61 = load i8, i8* %7, align 1
  %62 = load i32, i32* @vga_video_port_val, align 4
  %63 = call i32 @outb_p(i8 zeroext %61, i32 %62)
  %64 = load i32, i32* @vga_video_port_reg, align 4
  %65 = call i32 @outb_p(i8 zeroext 18, i32 %64)
  %66 = load i8, i8* %6, align 1
  %67 = load i32, i32* @vga_video_port_val, align 4
  %68 = call i32 @outb_p(i8 zeroext %66, i32 %67)
  %69 = call i32 @spin_unlock_irq(i32* @vga_lock)
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* @vga_video_font_height, align 4
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %111, %2
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %114

75:                                               ; preds = %71
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vc_cons, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.vc_data*, %struct.vc_data** %80, align 8
  store %struct.vc_data* %81, %struct.vc_data** %11, align 8
  %82 = load %struct.vc_data*, %struct.vc_data** %11, align 8
  %83 = icmp ne %struct.vc_data* %82, null
  br i1 %83, label %84, label %110

84:                                               ; preds = %75
  %85 = load %struct.vc_data*, %struct.vc_data** %11, align 8
  %86 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = icmp eq %struct.TYPE_5__* %87, @vga_con
  br i1 %88, label %89, label %110

89:                                               ; preds = %84
  %90 = load %struct.vc_data*, %struct.vc_data** %11, align 8
  %91 = call i64 @CON_IS_VISIBLE(%struct.vc_data* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  store i64 0, i64* @cursor_size_lastfrom, align 8
  store i64 0, i64* @cursor_size_lastto, align 8
  %94 = load %struct.vc_data*, %struct.vc_data** %11, align 8
  %95 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32 (%struct.vc_data*, i32)*, i32 (%struct.vc_data*, i32)** %97, align 8
  %99 = load %struct.vc_data*, %struct.vc_data** %11, align 8
  %100 = load i32, i32* @CM_DRAW, align 4
  %101 = call i32 %98(%struct.vc_data* %99, i32 %100)
  br label %102

102:                                              ; preds = %93, %89
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.vc_data*, %struct.vc_data** %11, align 8
  %105 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  %107 = load %struct.vc_data*, %struct.vc_data** %11, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @vc_resize(%struct.vc_data* %107, i32 0, i32 %108)
  br label %110

110:                                              ; preds = %102, %84, %75
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %71

114:                                              ; preds = %71
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outb_p(i8 zeroext, i32) #1

declare dso_local zeroext i8 @inb_p(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @CON_IS_VISIBLE(%struct.vc_data*) #1

declare dso_local i32 @vc_resize(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
