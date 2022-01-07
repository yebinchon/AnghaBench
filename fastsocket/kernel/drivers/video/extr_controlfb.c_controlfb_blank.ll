; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_controlfb.c_controlfb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_controlfb.c_controlfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_info_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @controlfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @controlfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_info_control*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = bitcast %struct.fb_info* %7 to %struct.fb_info_control*
  store %struct.fb_info_control* %8, %struct.fb_info_control** %5, align 8
  %9 = load %struct.fb_info_control*, %struct.fb_info_control** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @CNTRL_REG(%struct.fb_info_control* %9, i32 %10)
  %12 = call i32 @ld_le32(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %29 [
    i32 128, label %17
    i32 131, label %20
    i32 129, label %23
    i32 130, label %26
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -4
  store i32 %19, i32* %6, align 4
  br label %30

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, -49
  store i32 %22, i32* %6, align 4
  br label %30

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, -52
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %15, %23
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, 1024
  store i32 %28, i32* %6, align 4
  br label %30

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29, %26, %20, %17
  br label %36

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, -1025
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, 51
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %31, %30
  %37 = load %struct.fb_info_control*, %struct.fb_info_control** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @CNTRL_REG(%struct.fb_info_control* %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @out_le32(i32 %39, i32 %40)
  ret i32 0
}

declare dso_local i32 @ld_le32(i32) #1

declare dso_local i32 @CNTRL_REG(%struct.fb_info_control*, i32) #1

declare dso_local i32 @out_le32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
