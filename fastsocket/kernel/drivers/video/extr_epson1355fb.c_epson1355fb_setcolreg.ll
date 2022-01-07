; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_epson1355fb.c_epson1355fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_epson1355fb.c_epson1355fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, %struct.epson1355_par* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.epson1355_par = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @epson1355fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epson1355fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.epson1355_par*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 3
  %17 = load %struct.epson1355_par*, %struct.epson1355_par** %16, align 8
  store %struct.epson1355_par* %17, %struct.epson1355_par** %14, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %6
  %24 = load i32, i32* %9, align 4
  %25 = mul i32 19595, %24
  %26 = load i32, i32* %10, align 4
  %27 = mul i32 38470, %26
  %28 = add i32 %25, %27
  %29 = load i32, i32* %11, align 4
  %30 = mul i32 7471, %29
  %31 = add i32 %28, %30
  %32 = lshr i32 %31, 16
  store i32 %32, i32* %11, align 4
  store i32 %32, i32* %10, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %23, %6
  %34 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %78 [
    i32 128, label %38
    i32 129, label %62
  ]

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = icmp uge i32 %39, 16
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %82

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 63488
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, 64512
  %49 = lshr i32 %48, 5
  %50 = or i32 %46, %49
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 63488
  %53 = lshr i32 %52, 11
  %54 = or i32 %50, %53
  %55 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %54, i32* %61, align 4
  br label %81

62:                                               ; preds = %33
  %63 = load i32, i32* %8, align 4
  %64 = icmp uge i32 %63, 256
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %82

68:                                               ; preds = %62
  %69 = load %struct.epson1355_par*, %struct.epson1355_par** %14, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = lshr i32 %71, 8
  %73 = load i32, i32* %10, align 4
  %74 = lshr i32 %73, 8
  %75 = load i32, i32* %11, align 4
  %76 = lshr i32 %75, 8
  %77 = call i32 @set_lut(%struct.epson1355_par* %69, i32 %70, i32 %72, i32 %74, i32 %76)
  br label %81

78:                                               ; preds = %33
  %79 = load i32, i32* @ENOSYS, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %82

81:                                               ; preds = %68, %44
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %78, %65, %41
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @set_lut(%struct.epson1355_par*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
