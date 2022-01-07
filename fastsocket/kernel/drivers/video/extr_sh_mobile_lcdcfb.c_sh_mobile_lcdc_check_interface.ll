; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_check_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_check_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_chan = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_lcdc_chan*)* @sh_mobile_lcdc_check_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_check_interface(%struct.sh_mobile_lcdc_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sh_mobile_lcdc_chan* %0, %struct.sh_mobile_lcdc_chan** %3, align 8
  %6 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %7 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %28 [
    i32 140, label %10
    i32 139, label %11
    i32 145, label %12
    i32 144, label %13
    i32 143, label %14
    i32 142, label %15
    i32 141, label %16
    i32 132, label %17
    i32 131, label %18
    i32 130, label %19
    i32 129, label %20
    i32 128, label %21
    i32 138, label %22
    i32 137, label %23
    i32 136, label %24
    i32 135, label %25
    i32 134, label %26
    i32 133, label %27
  ]

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %29

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 4, i32* %5, align 4
  br label %29

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 5, i32* %5, align 4
  br label %29

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 6, i32* %5, align 4
  br label %29

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 7, i32* %5, align 4
  br label %29

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 10, i32* %5, align 4
  br label %29

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 11, i32* %5, align 4
  br label %29

17:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %29

18:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %29

19:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 2, i32* %5, align 4
  br label %29

20:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 3, i32* %5, align 4
  br label %29

21:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 4, i32* %5, align 4
  br label %29

22:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 5, i32* %5, align 4
  br label %29

23:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 7, i32* %5, align 4
  br label %29

24:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 8, i32* %5, align 4
  br label %29

25:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 9, i32* %5, align 4
  br label %29

26:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 10, i32* %5, align 4
  br label %29

27:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 11, i32* %5, align 4
  br label %29

28:                                               ; preds = %1
  br label %46

29:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  %30 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %31 = call i64 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %46

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 %40, 12
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %45 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %49

46:                                               ; preds = %36, %28
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
