; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s1d13xxxfb.c_s1d13xxxfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s1d13xxxfb.c_s1d13xxxfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_10__, %struct.TYPE_6__, %struct.s1d13xxxfb_par* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.s1d13xxxfb_par = type { i32 }

@S1D_PALETTE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"s1d13xxxfb_setcolreg: %d: rgb=%d,%d,%d, tr=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"s1d13xxxfb_setcolreg: pseudo %d, val %08x\0A\00", align 1
@S1DREG_LKUP_ADDR = common dso_local global i32 0, align 4
@S1DREG_LKUP_DATA = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"s1d13xxxfb_setcolreg: done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i64, %struct.fb_info*)* @s1d13xxxfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s1d13xxxfb_setcolreg(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.s1d13xxxfb_par*, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 3
  %18 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %17, align 8
  store %struct.s1d13xxxfb_par* %18, %struct.s1d13xxxfb_par** %14, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @S1D_PALETTE_SIZE, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %124

25:                                               ; preds = %6
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27, i64 %28, i64 %29, i64 %30)
  %32 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %25
  %38 = load i64, i64* %9, align 8
  %39 = mul nsw i64 19595, %38
  %40 = load i64, i64* %10, align 8
  %41 = mul nsw i64 38470, %40
  %42 = add nsw i64 %39, %41
  %43 = load i64, i64* %11, align 8
  %44 = mul nsw i64 7471, %43
  %45 = add nsw i64 %42, %44
  %46 = ashr i64 %45, 16
  store i64 %46, i64* %11, align 8
  store i64 %46, i64* %10, align 8
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %37, %25
  %48 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %119 [
    i32 128, label %52
    i32 129, label %102
  ]

52:                                               ; preds = %47
  %53 = load i64, i64* %8, align 8
  %54 = icmp sge i64 %53, 16
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %124

58:                                               ; preds = %52
  %59 = load i64, i64* %9, align 8
  %60 = ashr i64 %59, 11
  %61 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = shl i64 %60, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %15, align 4
  %68 = load i64, i64* %10, align 8
  %69 = ashr i64 %68, 10
  %70 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = shl i64 %69, %74
  %76 = load i32, i32* %15, align 4
  %77 = zext i32 %76 to i64
  %78 = or i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %15, align 4
  %80 = load i64, i64* %11, align 8
  %81 = ashr i64 %80, 11
  %82 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = shl i64 %81, %86
  %88 = load i32, i32* %15, align 4
  %89 = zext i32 %88 to i64
  %90 = or i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %15, align 4
  %92 = load i64, i64* %8, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %92, i32 %93)
  %95 = load i32, i32* %15, align 4
  %96 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32 %95, i32* %101, align 4
  br label %122

102:                                              ; preds = %47
  %103 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %14, align 8
  %104 = load i32, i32* @S1DREG_LKUP_ADDR, align 4
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par* %103, i32 %104, i64 %105)
  %107 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %14, align 8
  %108 = load i32, i32* @S1DREG_LKUP_DATA, align 4
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par* %107, i32 %108, i64 %109)
  %111 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %14, align 8
  %112 = load i32, i32* @S1DREG_LKUP_DATA, align 4
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par* %111, i32 %112, i64 %113)
  %115 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %14, align 8
  %116 = load i32, i32* @S1DREG_LKUP_DATA, align 4
  %117 = load i64, i64* %11, align 8
  %118 = call i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par* %115, i32 %116, i64 %117)
  br label %122

119:                                              ; preds = %47
  %120 = load i32, i32* @ENOSYS, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %7, align 4
  br label %124

122:                                              ; preds = %102, %58
  %123 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %122, %119, %55, %22
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
