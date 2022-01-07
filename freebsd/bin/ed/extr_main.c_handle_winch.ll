; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_handle_winch.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_handle_winch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@sigflags = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@rows = common dso_local global i32 0, align 4
@cols = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_winch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.winsize, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @errno, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sub nsw i32 %6, 1
  %8 = shl i32 1, %7
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @sigflags, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* @sigflags, align 4
  %12 = load i32, i32* @TIOCGWINSZ, align 4
  %13 = bitcast %struct.winsize* %4 to i8*
  %14 = call i64 @ioctl(i32 0, i32 %12, i8* %13)
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.winsize, %struct.winsize* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.winsize, %struct.winsize* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 2
  store i32 %23, i32* @rows, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.winsize, %struct.winsize* %4, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 8
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.winsize, %struct.winsize* %4, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 8
  store i32 %31, i32* @cols, align 4
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* @errno, align 4
  ret void
}

declare dso_local i64 @ioctl(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
