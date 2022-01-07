; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vt8623fb.c_vt8623fb_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vt8623fb.c_vt8623fb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.vt8623fb_info* }
%struct.vt8623fb_info = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@VGA_SAVE_MODE = common dso_local global i32 0, align 4
@VGA_SAVE_FONTS = common dso_local global i32 0, align 4
@VGA_SAVE_CMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @vt8623fb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8623fb_open(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vt8623fb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %7, align 8
  store %struct.vt8623fb_info* %8, %struct.vt8623fb_info** %5, align 8
  %9 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %10 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %13 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %18 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %17, i32 0, i32 2
  %19 = call i32 @memset(%struct.TYPE_3__* %18, i32 0, i32 4)
  %20 = load i32, i32* @VGA_SAVE_MODE, align 4
  %21 = load i32, i32* @VGA_SAVE_FONTS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @VGA_SAVE_CMAP, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %26 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %29 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 162, i32* %30, align 4
  %31 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %32 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 80, i32* %33, align 4
  %34 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %35 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %34, i32 0, i32 2
  %36 = call i32 @save_vga(%struct.TYPE_3__* %35)
  br label %37

37:                                               ; preds = %16, %2
  %38 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %39 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %43 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @save_vga(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
