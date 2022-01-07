; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s3fb.c_s3fb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s3fb.c_s3fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"fb%d: unblank\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"fb%d: blank\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"fb%d: hsync\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"fb%d: vsync\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"fb%d: sync down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @s3fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %41 [
    i32 129, label %6
    i32 131, label %13
    i32 132, label %20
    i32 128, label %27
    i32 130, label %34
  ]

6:                                                ; preds = %2
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 @svga_wcrt_mask(i32 86, i32 0, i32 6)
  %12 = call i32 @svga_wseq_mask(i32 1, i32 0, i32 32)
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = call i32 @svga_wcrt_mask(i32 86, i32 0, i32 6)
  %19 = call i32 @svga_wseq_mask(i32 1, i32 32, i32 32)
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = call i32 @svga_wcrt_mask(i32 86, i32 2, i32 6)
  %26 = call i32 @svga_wseq_mask(i32 1, i32 32, i32 32)
  br label %41

27:                                               ; preds = %2
  %28 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = call i32 @svga_wcrt_mask(i32 86, i32 4, i32 6)
  %33 = call i32 @svga_wseq_mask(i32 1, i32 32, i32 32)
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = call i32 @svga_wcrt_mask(i32 86, i32 6, i32 6)
  %40 = call i32 @svga_wseq_mask(i32 1, i32 32, i32 32)
  br label %41

41:                                               ; preds = %2, %34, %27, %20, %13, %6
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @svga_wcrt_mask(i32, i32, i32) #1

declare dso_local i32 @svga_wseq_mask(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
