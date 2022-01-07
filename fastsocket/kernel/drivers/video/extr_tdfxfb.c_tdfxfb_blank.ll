; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tdfxfb.c_tdfxfb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tdfxfb.c_tdfxfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.tdfx_par* }
%struct.tdfx_par = type { i32 }

@DACMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @tdfxfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdfxfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.tdfx_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.tdfx_par*, %struct.tdfx_par** %9, align 8
  store %struct.tdfx_par* %10, %struct.tdfx_par** %5, align 8
  store i32 1, i32* %6, align 4
  %11 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %12 = load i32, i32* @DACMODE, align 4
  %13 = call i32 @tdfx_inl(%struct.tdfx_par* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = call i32 @BIT(i32 1)
  %15 = call i32 @BIT(i32 3)
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %3, align 4
  switch i32 %20, label %37 [
    i32 129, label %21
    i32 131, label %22
    i32 128, label %23
    i32 132, label %27
    i32 130, label %31
  ]

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %37

22:                                               ; preds = %2
  br label %37

23:                                               ; preds = %2
  %24 = call i32 @BIT(i32 3)
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %37

27:                                               ; preds = %2
  %28 = call i32 @BIT(i32 1)
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %37

31:                                               ; preds = %2
  %32 = call i32 @BIT(i32 1)
  %33 = call i32 @BIT(i32 3)
  %34 = or i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %2, %31, %27, %23, %22, %21
  %38 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %39 = call i32 @banshee_make_room(%struct.tdfx_par* %38, i32 1)
  %40 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %41 = load i32, i32* @DACMODE, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @tdfx_outl(%struct.tdfx_par* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %48 = call i32 @vga_disable_video(%struct.tdfx_par* %47)
  br label %52

49:                                               ; preds = %37
  %50 = load %struct.tdfx_par*, %struct.tdfx_par** %5, align 8
  %51 = call i32 @vga_enable_video(%struct.tdfx_par* %50)
  br label %52

52:                                               ; preds = %49, %46
  ret i32 0
}

declare dso_local i32 @tdfx_inl(%struct.tdfx_par*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @banshee_make_room(%struct.tdfx_par*, i32) #1

declare dso_local i32 @tdfx_outl(%struct.tdfx_par*, i32, i32) #1

declare dso_local i32 @vga_disable_video(%struct.tdfx_par*) #1

declare dso_local i32 @vga_enable_video(%struct.tdfx_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
