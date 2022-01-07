; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh7760fb.c_wait_for_lps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh7760fb.c_wait_for_lps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh7760fb_par = type { i64 }

@LDPMMR = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh7760fb_par*, i32)* @wait_for_lps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_lps(%struct.sh7760fb_par* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh7760fb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sh7760fb_par* %0, %struct.sh7760fb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 100, i32* %6, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %6, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %13 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LDPMMR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @ioread16(i64 %16)
  %18 = and i32 %17, 3
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %18, %19
  br label %21

21:                                               ; preds = %11, %7
  %22 = phi i1 [ false, %7 ], [ %20, %11 ]
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = call i32 @msleep(i32 1)
  br label %7

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
