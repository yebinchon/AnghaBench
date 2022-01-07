; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_atoh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_atoh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @atoh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atoh(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %8

8:                                                ; preds = %67, %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %72

11:                                               ; preds = %8
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sub i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %7, align 1
  %18 = load i8, i8* %7, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sge i32 %19, 48
  br i1 %20, label %21, label %33

21:                                               ; preds = %11
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sle i32 %23, 57
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = sub nsw i32 %28, 48
  %30 = mul i32 %26, %29
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %67

33:                                               ; preds = %21, %11
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sge i32 %35, 65
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp sle i32 %39, 70
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i8, i8* %7, align 1
  %44 = zext i8 %43 to i32
  %45 = sub nsw i32 %44, 55
  %46 = mul i32 %42, %45
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %66

49:                                               ; preds = %37, %33
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp sge i32 %51, 97
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i8, i8* %7, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp sle i32 %55, 102
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 %60, 87
  %62 = mul i32 %58, %61
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %57, %53, %49
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66, %25
  %68 = load i32, i32* %6, align 4
  %69 = mul i32 %68, 16
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %4, align 4
  %71 = add i32 %70, -1
  store i32 %71, i32* %4, align 4
  br label %8

72:                                               ; preds = %8
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
