; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_invert_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_invert_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@vga_can_do_color = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32*, i32)* @vgacon_invert_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgacon_invert_region(%struct.vc_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @vga_can_do_color, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %38, %3
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @scr_readw(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 35071
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 28672
  %24 = ashr i32 %23, 4
  %25 = or i32 %21, %24
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 1792
  %28 = shl i32 %27, 4
  %29 = or i32 %25, %28
  store i32 %29, i32* %8, align 4
  br label %38

30:                                               ; preds = %14
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 1792
  %33 = icmp eq i32 %32, 256
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 28672, i32 30464
  %36 = load i32, i32* %8, align 4
  %37 = xor i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %30, %19
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %5, align 8
  %42 = ptrtoint i32* %40 to i32
  %43 = call i32 @scr_writew(i32 %39, i32 %42)
  br label %10

44:                                               ; preds = %10
  ret void
}

declare dso_local i32 @scr_readw(i32*) #1

declare dso_local i32 @scr_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
