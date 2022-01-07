; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_main.c_i810fb_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_main.c_i810fb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.i810fb_par* }
%struct.i810fb_par = type { i64, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@VGA_SAVE_CMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @i810fb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810fb_open(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i810fb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.i810fb_par*, %struct.i810fb_par** %7, align 8
  store %struct.i810fb_par* %8, %struct.i810fb_par** %5, align 8
  %9 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %10 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %13 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %18 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %17, i32 0, i32 2
  %19 = call i32 @memset(%struct.TYPE_3__* %18, i32 0, i32 4)
  %20 = load i32, i32* @VGA_SAVE_CMAP, align 4
  %21 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %22 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %25 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %28 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %31 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %30, i32 0, i32 2
  %32 = call i32 @save_vga(%struct.TYPE_3__* %31)
  %33 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %34 = call i32 @i810_save_vga_state(%struct.i810fb_par* %33)
  br label %35

35:                                               ; preds = %16, %2
  %36 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %37 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %41 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @save_vga(%struct.TYPE_3__*) #1

declare dso_local i32 @i810_save_vga_state(%struct.i810fb_par*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
