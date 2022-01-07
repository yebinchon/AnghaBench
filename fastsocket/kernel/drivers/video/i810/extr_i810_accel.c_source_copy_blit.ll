; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_accel.c_source_copy_blit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_accel.c_source_copy_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.i810fb_par* }
%struct.i810fb_par = type { i32 }

@IRING_PAD = common dso_local global i64 0, align 8
@BLIT = common dso_local global i32 0, align 4
@SOURCE_COPY_BLIT = common dso_local global i32 0, align 4
@DYN_COLOR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_info*)* @source_copy_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @source_copy_blit(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.fb_info* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fb_info*, align 8
  %19 = alloca %struct.i810fb_par*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.fb_info* %8, %struct.fb_info** %18, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %18, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = load %struct.i810fb_par*, %struct.i810fb_par** %21, align 8
  store %struct.i810fb_par* %22, %struct.i810fb_par** %19, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %18, align 8
  %24 = load i64, i64* @IRING_PAD, align 8
  %25 = add nsw i64 24, %24
  %26 = call i64 @begin_iring(%struct.fb_info* %23, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %9
  br label %59

29:                                               ; preds = %9
  %30 = load i32, i32* @BLIT, align 4
  %31 = load i32, i32* @SOURCE_COPY_BLIT, align 4
  %32 = or i32 %30, %31
  %33 = or i32 %32, 4
  %34 = call i32 @PUT_RING(i32 %33)
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %16, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %35, %37
  %39 = load i32, i32* %12, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @DYN_COLOR_EN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %17, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @PUT_RING(i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %46, 16
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @PUT_RING(i32 %49)
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @PUT_RING(i32 %51)
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @PUT_RING(i32 %53)
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @PUT_RING(i32 %55)
  %57 = load %struct.i810fb_par*, %struct.i810fb_par** %19, align 8
  %58 = call i32 @end_iring(%struct.i810fb_par* %57)
  br label %59

59:                                               ; preds = %29, %28
  ret void
}

declare dso_local i64 @begin_iring(%struct.fb_info*, i64) #1

declare dso_local i32 @PUT_RING(i32) #1

declare dso_local i32 @end_iring(%struct.i810fb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
