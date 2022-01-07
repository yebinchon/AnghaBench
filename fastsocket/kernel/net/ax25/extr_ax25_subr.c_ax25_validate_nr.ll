; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_subr.c_ax25_validate_nr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_subr.c_ax25_validate_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, i16, i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ax25_validate_nr(%struct.TYPE_3__* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %6, align 2
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i16, i16* %6, align 2
  %12 = zext i16 %11 to i32
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp ne i32 %12, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %10
  %19 = load i16, i16* %5, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* %6, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %45

25:                                               ; preds = %18
  %26 = load i16, i16* %6, align 2
  %27 = zext i16 %26 to i32
  %28 = add nsw i32 %27, 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = srem i32 %28, %32
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %6, align 2
  br label %10

35:                                               ; preds = %10
  %36 = load i16, i16* %5, align 2
  %37 = zext i16 %36 to i32
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %24
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
