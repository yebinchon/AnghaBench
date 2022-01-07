; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_l3.c_sendbytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_l3.c_sendbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_pins = type { i32, i32 (i32)*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_pins*, i32*, i32)* @sendbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendbytes(%struct.l3_pins* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.l3_pins*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.l3_pins* %0, %struct.l3_pins** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %44, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.l3_pins*, %struct.l3_pins** %4, align 8
  %17 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @udelay(i32 %18)
  %20 = load %struct.l3_pins*, %struct.l3_pins** %4, align 8
  %21 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %20, i32 0, i32 1
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = call i32 %22(i32 0)
  %24 = load %struct.l3_pins*, %struct.l3_pins** %4, align 8
  %25 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @udelay(i32 %26)
  br label %28

28:                                               ; preds = %15, %12
  %29 = load %struct.l3_pins*, %struct.l3_pins** %4, align 8
  %30 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %29, i32 0, i32 1
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = call i32 %31(i32 1)
  %33 = load %struct.l3_pins*, %struct.l3_pins** %4, align 8
  %34 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @udelay(i32 %35)
  %37 = load %struct.l3_pins*, %struct.l3_pins** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sendbyte(%struct.l3_pins* %37, i32 %42)
  br label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %8

47:                                               ; preds = %8
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sendbyte(%struct.l3_pins*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
