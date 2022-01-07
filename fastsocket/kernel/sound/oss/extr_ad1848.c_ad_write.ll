; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @ad_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_write(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 900000, i32* %7, align 4
  br label %10

10:                                               ; preds = %21, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @inb(i32 %16)
  %18 = icmp eq i32 %17, 128
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i1 [ false, %10 ], [ %18, %13 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %7, align 4
  br label %10

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 32
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = zext i8 %30 to i32
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 4
  %35 = zext i8 %34 to i32
  %36 = or i32 %31, %35
  %37 = trunc i32 %36 to i8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = call i32 @io_Index_Addr(%struct.TYPE_5__* %38)
  %40 = call i32 @outb(i8 zeroext %37, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = call i32 @io_Indexed_Data(%struct.TYPE_5__* %44)
  %46 = call i32 @outb(i8 zeroext %43, i32 %45)
  br label %81

47:                                               ; preds = %24
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 255
  %50 = sub nsw i32 %49, 32
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 15
  %53 = shl i32 %52, 4
  %54 = and i32 %53, 240
  %55 = or i32 %54, 8
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 16
  %58 = ashr i32 %57, 2
  %59 = or i32 %55, %58
  store i32 %59, i32* %9, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i8, i8* %61, align 4
  %63 = zext i8 %62 to i32
  %64 = or i32 23, %63
  %65 = trunc i32 %64 to i8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = call i32 @io_Index_Addr(%struct.TYPE_5__* %66)
  %68 = call i32 @outb(i8 zeroext %65, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 255
  %71 = trunc i32 %70 to i8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = call i32 @io_Indexed_Data(%struct.TYPE_5__* %72)
  %74 = call i32 @outb(i8 zeroext %71, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 255
  %77 = trunc i32 %76 to i8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = call i32 @io_Indexed_Data(%struct.TYPE_5__* %78)
  %80 = call i32 @outb(i8 zeroext %77, i32 %79)
  br label %81

81:                                               ; preds = %47, %27
  ret void
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
