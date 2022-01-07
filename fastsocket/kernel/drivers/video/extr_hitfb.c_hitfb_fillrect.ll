; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hitfb.c_hitfb_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hitfb.c_hitfb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fb_fillrect = type { i64, i64, i32, i32, i32, i32 }

@ROP_COPY = common dso_local global i64 0, align 8
@HD64461_BBTROPR = common dso_local global i32 0, align 4
@HD64461_BBTMDR = common dso_local global i32 0, align 4
@HD64461_GRSCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @hitfb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hitfb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %5 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %6 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ROP_COPY, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %13 = call i32 @cfb_fillrect(%struct.fb_info* %11, %struct.fb_fillrect* %12)
  br label %73

14:                                               ; preds = %2
  %15 = call i32 (...) @hitfb_accel_wait()
  %16 = load i32, i32* @HD64461_BBTROPR, align 4
  %17 = call i32 @fb_writew(i32 240, i32 %16)
  %18 = load i32, i32* @HD64461_BBTMDR, align 4
  %19 = call i32 @fb_writew(i32 16, i32 %18)
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %51

25:                                               ; preds = %14
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %31 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HD64461_GRSCR, align 4
  %36 = call i32 @fb_writew(i32 %34, i32 %35)
  %37 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %38 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %41 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %44 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %47 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @hitfb_accel_set_dest(i32 1, i32 %39, i32 %42, i32 %45, i32 %48)
  %50 = call i32 @hitfb_accel_start(i32 1)
  br label %72

51:                                               ; preds = %14
  %52 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %53 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @HD64461_GRSCR, align 4
  %57 = call i32 @fb_writew(i32 %55, i32 %56)
  %58 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %59 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %62 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %65 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %68 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @hitfb_accel_set_dest(i32 0, i32 %60, i32 %63, i32 %66, i32 %69)
  %71 = call i32 @hitfb_accel_start(i32 0)
  br label %72

72:                                               ; preds = %51, %25
  br label %73

73:                                               ; preds = %72, %10
  ret void
}

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @hitfb_accel_wait(...) #1

declare dso_local i32 @fb_writew(i32, i32) #1

declare dso_local i32 @hitfb_accel_set_dest(i32, i32, i32, i32, i32) #1

declare dso_local i32 @hitfb_accel_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
