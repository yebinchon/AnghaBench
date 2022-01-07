; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_common.c_relocate_Jazz16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_common.c_relocate_Jazz16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_info = type { i32 }

@jazz16_base = common dso_local global i32 0, align 4
@jazz16_bits = common dso_local global i8 0, align 1
@jazz16_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.address_info*)* @relocate_Jazz16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @relocate_Jazz16(i32* %0, %struct.address_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.address_info*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.address_info* %1, %struct.address_info** %4, align 8
  store i8 0, i8* %5, align 1
  %7 = load i32, i32* @jazz16_base, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* @jazz16_base, align 4
  %11 = load %struct.address_info*, %struct.address_info** %4, align 8
  %12 = getelementptr inbounds %struct.address_info, %struct.address_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %40

16:                                               ; preds = %9, %2
  %17 = load %struct.address_info*, %struct.address_info** %4, align 8
  %18 = getelementptr inbounds %struct.address_info, %struct.address_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %23 [
    i32 544, label %20
    i32 576, label %21
    i32 608, label %22
  ]

20:                                               ; preds = %16
  store i8 1, i8* %5, align 1
  br label %24

21:                                               ; preds = %16
  store i8 2, i8* %5, align 1
  br label %24

22:                                               ; preds = %16
  store i8 3, i8* %5, align 1
  br label %24

23:                                               ; preds = %16
  br label %40

24:                                               ; preds = %22, %21, %20
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 5
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* @jazz16_bits, align 1
  store i8 %28, i8* %5, align 1
  %29 = load %struct.address_info*, %struct.address_info** %4, align 8
  %30 = getelementptr inbounds %struct.address_info, %struct.address_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* @jazz16_base, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_lock_irqsave(i32* @jazz16_lock, i64 %32)
  %34 = call i32 @outb(i8 zeroext -81, i32 513)
  %35 = call i32 @outb(i8 zeroext 80, i32 513)
  %36 = load i8, i8* %5, align 1
  %37 = call i32 @outb(i8 zeroext %36, i32 513)
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @jazz16_lock, i64 %38)
  br label %40

40:                                               ; preds = %24, %23, %15
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
