; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.h___data2host2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.h___data2host2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.pevent*, i16)* @__data2host2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @__data2host2(%struct.pevent* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.pevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.pevent* %0, %struct.pevent** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load %struct.pevent*, %struct.pevent** %4, align 8
  %8 = getelementptr inbounds %struct.pevent, %struct.pevent* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.pevent*, %struct.pevent** %4, align 8
  %11 = getelementptr inbounds %struct.pevent, %struct.pevent* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i16, i16* %5, align 2
  store i16 %15, i16* %3, align 2
  br label %28

16:                                               ; preds = %2
  %17 = load i16, i16* %5, align 2
  %18 = zext i16 %17 to i64
  %19 = and i64 %18, 255
  %20 = shl i64 %19, 8
  %21 = load i16, i16* %5, align 2
  %22 = zext i16 %21 to i64
  %23 = and i64 %22, 65280
  %24 = lshr i64 %23, 8
  %25 = or i64 %20, %24
  %26 = trunc i64 %25 to i16
  store i16 %26, i16* %6, align 2
  %27 = load i16, i16* %6, align 2
  store i16 %27, i16* %3, align 2
  br label %28

28:                                               ; preds = %16, %14
  %29 = load i16, i16* %3, align 2
  ret i16 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
