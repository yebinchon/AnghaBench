; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_neofb.c_neofb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_neofb.c_neofb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @neofb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neofb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %14, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 255
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %92

26:                                               ; preds = %20
  %27 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %30, 8
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @outb(i32 %33, i32 968)
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %35, 10
  %37 = call i32 @outb(i32 %36, i32 969)
  %38 = load i32, i32* %10, align 4
  %39 = ashr i32 %38, 10
  %40 = call i32 @outb(i32 %39, i32 969)
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %41, 10
  %43 = call i32 @outb(i32 %42, i32 969)
  br label %91

44:                                               ; preds = %26
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 16
  br i1 %46, label %47, label %90

47:                                               ; preds = %44
  %48 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %88 [
    i32 16, label %52
    i32 24, label %70
  ]

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 63488
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, 64512
  %57 = ashr i32 %56, 5
  %58 = or i32 %54, %57
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, 63488
  %61 = ashr i32 %60, 11
  %62 = or i32 %58, %61
  %63 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %62, i32* %69, align 4
  br label %89

70:                                               ; preds = %47
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 65280
  %73 = shl i32 %72, 8
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 65280
  %76 = or i32 %73, %75
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %77, 65280
  %79 = ashr i32 %78, 8
  %80 = or i32 %76, %79
  %81 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i32*
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %80, i32* %87, align 4
  br label %89

88:                                               ; preds = %47
  store i32 1, i32* %7, align 4
  br label %92

89:                                               ; preds = %70, %52
  br label %90

90:                                               ; preds = %89, %44
  br label %91

91:                                               ; preds = %90, %32
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %91, %88, %23
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
