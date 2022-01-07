; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @ad_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_read(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 900000, i32* %6, align 4
  br label %9

9:                                                ; preds = %20, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @inb(i32 %15)
  %17 = icmp eq i32 %16, 128
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i1 [ false, %9 ], [ %17, %12 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %6, align 4
  br label %9

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 32
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  %30 = zext i8 %29 to i32
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 4
  %34 = zext i8 %33 to i32
  %35 = or i32 %30, %34
  %36 = trunc i32 %35 to i8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = call i32 @io_Index_Addr(%struct.TYPE_5__* %37)
  %39 = call i32 @outb(i8 zeroext %36, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = call i32 @io_Indexed_Data(%struct.TYPE_5__* %40)
  %42 = call i32 @inb(i32 %41)
  store i32 %42, i32* %5, align 4
  br label %74

43:                                               ; preds = %23
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 255
  %46 = sub nsw i32 %45, 32
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 15
  %49 = shl i32 %48, 4
  %50 = and i32 %49, 240
  %51 = or i32 %50, 8
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 16
  %54 = ashr i32 %53, 2
  %55 = or i32 %51, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i8, i8* %57, align 4
  %59 = zext i8 %58 to i32
  %60 = or i32 23, %59
  %61 = trunc i32 %60 to i8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = call i32 @io_Index_Addr(%struct.TYPE_5__* %62)
  %64 = call i32 @outb(i8 zeroext %61, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 255
  %67 = trunc i32 %66 to i8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = call i32 @io_Indexed_Data(%struct.TYPE_5__* %68)
  %70 = call i32 @outb(i8 zeroext %67, i32 %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = call i32 @io_Indexed_Data(%struct.TYPE_5__* %71)
  %73 = call i32 @inb(i32 %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %43, %26
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @io_Index_Addr(%struct.TYPE_5__*) #1

declare dso_local i32 @io_Indexed_Data(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
