; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_bitmap_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_bitmap_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i64)* @cipso_v4_bitmap_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipso_v4_bitmap_walk(i8* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sdiv i32 %14, 8
  store i32 %15, i32* %11, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %13, align 1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = srem i32 %22, 8
  %24 = ashr i32 128, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %12, align 1
  br label %26

26:                                               ; preds = %71, %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i8, i8* %13, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %12, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = load i8, i8* %12, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %33, %30
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i8, i8* %13, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %12, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45, %33
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %73

54:                                               ; preds = %45, %42
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = load i8, i8* %12, align 1
  %58 = zext i8 %57 to i32
  %59 = ashr i32 %58, 1
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %12, align 1
  %61 = load i8, i8* %12, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %54
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %13, align 1
  store i8 -128, i8* %12, align 1
  br label %71

71:                                               ; preds = %64, %54
  br label %26

72:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %52
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
