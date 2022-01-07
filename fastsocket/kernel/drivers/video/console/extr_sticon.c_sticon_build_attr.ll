; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_sticon.c_sticon_build_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_sticon.c_sticon_build_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32, i32, i32, i32, i32)* @sticon_build_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sticon_build_attr(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.vc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, 112
  %18 = ashr i32 %17, 1
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, 7
  %21 = or i32 %18, %20
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %7
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 3
  %27 = and i32 %26, 7
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 7
  %30 = shl i32 %29, 3
  %31 = or i32 %27, %30
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %24, %7
  %33 = load i32, i32* %15, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
