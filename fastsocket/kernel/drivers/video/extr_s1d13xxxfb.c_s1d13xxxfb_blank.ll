; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s1d13xxxfb.c_s1d13xxxfb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s1d13xxxfb.c_s1d13xxxfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.s1d13xxxfb_par* }
%struct.s1d13xxxfb_par = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"s1d13xxxfb_blank: blank=%d, info=%p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @s1d13xxxfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s1d13xxxfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.s1d13xxxfb_par*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %8, align 8
  store %struct.s1d13xxxfb_par* %9, %struct.s1d13xxxfb_par** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %12 = call i32 @dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %10, %struct.fb_info* %11)
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %39 [
    i32 129, label %14
    i32 131, label %14
    i32 128, label %33
    i32 132, label %33
    i32 130, label %34
  ]

14:                                               ; preds = %2, %2
  %15 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %6, align 8
  %16 = getelementptr inbounds %struct.s1d13xxxfb_par, %struct.s1d13xxxfb_par* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %6, align 8
  %22 = call i32 @lcd_enable(%struct.s1d13xxxfb_par* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %6, align 8
  %25 = getelementptr inbounds %struct.s1d13xxxfb_par, %struct.s1d13xxxfb_par* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %6, align 8
  %31 = call i32 @crt_enable(%struct.s1d13xxxfb_par* %30, i32 1)
  br label %32

32:                                               ; preds = %29, %23
  br label %42

33:                                               ; preds = %2, %2
  br label %42

34:                                               ; preds = %2
  %35 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %6, align 8
  %36 = call i32 @lcd_enable(%struct.s1d13xxxfb_par* %35, i32 0)
  %37 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %6, align 8
  %38 = call i32 @crt_enable(%struct.s1d13xxxfb_par* %37, i32 0)
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %34, %33, %32
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 131
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @dbg(i8*, i32, %struct.fb_info*) #1

declare dso_local i32 @lcd_enable(%struct.s1d13xxxfb_par*, i32) #1

declare dso_local i32 @crt_enable(%struct.s1d13xxxfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
