; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_accel.c_mono_src_copy_imm_blit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_accel.c_mono_src_copy_imm_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.i810fb_par* }
%struct.i810fb_par = type { i32 }

@IRING_PAD = common dso_local global i64 0, align 8
@BLIT = common dso_local global i32 0, align 4
@MONO_SOURCE_COPY_IMMEDIATE = common dso_local global i32 0, align 4
@DYN_COLOR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.fb_info*)* @mono_src_copy_imm_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mono_src_copy_imm_blit(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8, i32 %9, %struct.fb_info* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.fb_info*, align 8
  %23 = alloca %struct.i810fb_par*, align 8
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store %struct.fb_info* %10, %struct.fb_info** %22, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %22, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = load %struct.i810fb_par*, %struct.i810fb_par** %25, align 8
  store %struct.i810fb_par* %26, %struct.i810fb_par** %23, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %22, align 8
  %28 = load i32, i32* %15, align 4
  %29 = shl i32 %28, 2
  %30 = add nsw i32 24, %29
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @IRING_PAD, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i64 @begin_iring(%struct.fb_info* %27, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %11
  br label %77

37:                                               ; preds = %11
  %38 = load i32, i32* @BLIT, align 4
  %39 = load i32, i32* @MONO_SOURCE_COPY_IMMEDIATE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 4, %41
  %43 = or i32 %40, %42
  %44 = call i32 @PUT_RING(i32 %43)
  %45 = load i32, i32* @DYN_COLOR_EN, align 4
  %46 = load i32, i32* %16, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %17, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %47, %49
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @PUT_RING(i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = shl i32 %54, 16
  %56 = load i32, i32* %12, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @PUT_RING(i32 %57)
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @PUT_RING(i32 %59)
  %61 = load i32, i32* %20, align 4
  %62 = call i32 @PUT_RING(i32 %61)
  %63 = load i32, i32* %21, align 4
  %64 = call i32 @PUT_RING(i32 %63)
  br label %65

65:                                               ; preds = %69, %37
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %15, align 4
  %68 = icmp ne i32 %66, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32*, i32** %19, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %19, align 8
  %72 = load i32, i32* %70, align 4
  %73 = call i32 @PUT_RING(i32 %72)
  br label %65

74:                                               ; preds = %65
  %75 = load %struct.i810fb_par*, %struct.i810fb_par** %23, align 8
  %76 = call i32 @end_iring(%struct.i810fb_par* %75)
  br label %77

77:                                               ; preds = %74, %36
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
