; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_mixer.c_mix_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_mixer.c_mix_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pas_model = common dso_local global i32 0, align 4
@pas_translate_code = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mix_write(i8 zeroext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @pas_model, align 4
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 %11, 8
  %13 = or i32 %9, %12
  %14 = trunc i32 %13 to i8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @pas_translate_code, align 8
  %18 = add nsw i64 %16, %17
  %19 = sub nsw i64 %18, 1
  %20 = call i32 @outw(i8 zeroext %14, i64 %19)
  %21 = call i32 @outb(i32 128, i32 0)
  br label %26

22:                                               ; preds = %2
  %23 = load i8, i8* %3, align 1
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @pas_write(i8 zeroext %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @outw(i8 zeroext, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @pas_write(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
