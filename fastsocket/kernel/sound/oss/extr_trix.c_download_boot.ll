; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_trix.c_download_boot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_trix.c_download_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trix_boot_len = common dso_local global i32 0, align 4
@trix_boot = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @download_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @download_boot(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @trix_boot_len, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @trix_boot_len, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %50

9:                                                ; preds = %1
  %10 = call i32 @trix_write(i32 248, i32 0)
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 6
  %13 = call i32 @outb(i32 1, i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 6
  %16 = call i32 @outb(i32 0, i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 6
  %19 = call i32 @outb(i32 1, i32 %18)
  %20 = call i32 @outb(i32 26, i32 912)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %32, %9
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32*, i32** @trix_boot, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @outb(i32 %30, i32 913)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %21

35:                                               ; preds = %21
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %42, %35
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 10016
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = call i32 @outb(i32 0, i32 913)
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %37

45:                                               ; preds = %37
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 6
  %48 = call i32 @outb(i32 0, i32 %47)
  %49 = call i32 @outb(i32 80, i32 912)
  br label %50

50:                                               ; preds = %45, %8
  ret void
}

declare dso_local i32 @trix_write(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
