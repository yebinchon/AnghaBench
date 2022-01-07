; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_create_preheaders.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_create_preheaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32, i32, i32* }

@LOOPS_HAVE_PREHEADERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_preheaders(%struct.loops* %0, i32 %1) #0 {
  %3 = alloca %struct.loops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.loops*, %struct.loops** %3, align 8
  %9 = getelementptr inbounds %struct.loops, %struct.loops* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = load %struct.loops*, %struct.loops** %3, align 8
  %14 = getelementptr inbounds %struct.loops, %struct.loops* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @create_preheader(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load i32, i32* @LOOPS_HAVE_PREHEADERS, align 4
  %27 = load %struct.loops*, %struct.loops** %3, align 8
  %28 = getelementptr inbounds %struct.loops, %struct.loops* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  ret void
}

declare dso_local i32 @create_preheader(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
