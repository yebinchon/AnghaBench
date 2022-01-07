; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_color_white.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_color_white.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i64, i64 }

@KMEMLEAK_BLACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmemleak_object*)* @color_white to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_white(%struct.kmemleak_object* %0) #0 {
  %2 = alloca %struct.kmemleak_object*, align 8
  store %struct.kmemleak_object* %0, %struct.kmemleak_object** %2, align 8
  %3 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %4 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @KMEMLEAK_BLACK, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %10 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %13 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br label %16

16:                                               ; preds = %8, %1
  %17 = phi i1 [ false, %1 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
