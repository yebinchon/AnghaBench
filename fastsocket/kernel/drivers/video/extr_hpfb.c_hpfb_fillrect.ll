; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hpfb.c_hpfb_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hpfb.c_hpfb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_fillrect = type { i32, i64, i32, i32, i32, i32 }

@fb_regs = common dso_local global i64 0, align 8
@BUSY = common dso_local global i64 0, align 8
@fb_bitmask = common dso_local global i32 0, align 4
@TC_WEN = common dso_local global i64 0, align 8
@WMRR = common dso_local global i64 0, align 8
@ROP_COPY = common dso_local global i64 0, align 8
@RR_SET = common dso_local global i32 0, align 4
@RR_INVERT = common dso_local global i32 0, align 4
@RR_CLEAR = common dso_local global i32 0, align 4
@RR_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @hpfb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpfb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %6 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %7 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %8, 255
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %18, %2
  %11 = load i64, i64* @fb_regs, align 8
  %12 = load i64, i64* @BUSY, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @in_8(i64 %13)
  %15 = load i32, i32* @fb_bitmask, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %10

19:                                               ; preds = %10
  %20 = load i64, i64* @fb_regs, align 8
  %21 = load i64, i64* @TC_WEN, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* @fb_bitmask, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @out_8(i64 %22, i32 %25)
  %27 = load i64, i64* @fb_regs, align 8
  %28 = load i64, i64* @WMRR, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %31 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ROP_COPY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* @RR_SET, align 4
  br label %39

37:                                               ; preds = %19
  %38 = load i32, i32* @RR_INVERT, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = call i32 @out_8(i64 %29, i32 %40)
  %42 = load i64, i64* @fb_regs, align 8
  %43 = load i64, i64* @TC_WEN, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* @fb_bitmask, align 4
  %46 = load i32, i32* %5, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = call i32 @out_8(i64 %44, i32 %48)
  %50 = load i64, i64* @fb_regs, align 8
  %51 = load i64, i64* @WMRR, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %54 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ROP_COPY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %39
  %59 = load i32, i32* @RR_CLEAR, align 4
  br label %62

60:                                               ; preds = %39
  %61 = load i32, i32* @RR_NOOP, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = call i32 @out_8(i64 %52, i32 %63)
  %65 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %66 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %69 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %72 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %75 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %78 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %81 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @topcat_blit(i32 %67, i32 %70, i32 %73, i32 %76, i32 %79, i32 %82, i32 -1)
  ret void
}

declare dso_local i32 @in_8(i64) #1

declare dso_local i32 @out_8(i64, i32) #1

declare dso_local i32 @topcat_blit(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
