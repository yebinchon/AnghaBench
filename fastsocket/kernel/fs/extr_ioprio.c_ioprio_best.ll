; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_ioprio.c_ioprio_best.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_ioprio.c_ioprio_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOPRIO_CLASS_NONE = common dso_local global i16 0, align 2
@IOPRIO_CLASS_BE = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioprio_best(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i16 %0, i16* %4, align 2
  store i16 %1, i16* %5, align 2
  %8 = load i16, i16* %4, align 2
  %9 = call zeroext i16 @IOPRIO_PRIO_CLASS(i16 zeroext %8)
  store i16 %9, i16* %6, align 2
  %10 = load i16, i16* %5, align 2
  %11 = call zeroext i16 @IOPRIO_PRIO_CLASS(i16 zeroext %10)
  store i16 %11, i16* %7, align 2
  %12 = load i16, i16* %6, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* @IOPRIO_CLASS_NONE, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i16, i16* @IOPRIO_CLASS_BE, align 2
  store i16 %18, i16* %6, align 2
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i16, i16* %7, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @IOPRIO_CLASS_NONE, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i16, i16* @IOPRIO_CLASS_BE, align 2
  store i16 %26, i16* %7, align 2
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i16, i16* %6, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* %7, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i16, i16* %4, align 2
  %35 = load i16, i16* %5, align 2
  %36 = call i32 @min(i16 zeroext %34, i16 zeroext %35)
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %27
  %38 = load i16, i16* %6, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* %7, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i16, i16* %5, align 2
  %45 = zext i16 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %37
  %47 = load i16, i16* %4, align 2
  %48 = zext i16 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %43, %33
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local zeroext i16 @IOPRIO_PRIO_CLASS(i16 zeroext) #1

declare dso_local i32 @min(i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
