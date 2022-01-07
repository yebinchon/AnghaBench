; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-driver.c_write_bitmap_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-driver.c_write_bitmap_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.go7007*)* @write_bitmap_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_bitmap_word(%struct.go7007* %0) #0 {
  %2 = alloca %struct.go7007*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %2, align 8
  %7 = load %struct.go7007*, %struct.go7007** %2, align 8
  %8 = getelementptr inbounds %struct.go7007, %struct.go7007* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = ashr i32 %9, 4
  %11 = add nsw i32 %10, 7
  %12 = ashr i32 %11, 3
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %65, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %16, label %68

16:                                               ; preds = %13
  %17 = load %struct.go7007*, %struct.go7007** %2, align 8
  %18 = getelementptr inbounds %struct.go7007, %struct.go7007* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = shl i32 %20, 3
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %21, %22
  %24 = load %struct.go7007*, %struct.go7007** %2, align 8
  %25 = getelementptr inbounds %struct.go7007, %struct.go7007* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 4
  %28 = sdiv i32 %23, %27
  store i32 %28, i32* %4, align 4
  %29 = load %struct.go7007*, %struct.go7007** %2, align 8
  %30 = getelementptr inbounds %struct.go7007, %struct.go7007* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = shl i32 %32, 3
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %33, %34
  %36 = load %struct.go7007*, %struct.go7007** %2, align 8
  %37 = getelementptr inbounds %struct.go7007, %struct.go7007* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %38, 4
  %40 = srem i32 %35, %39
  store i32 %40, i32* %3, align 4
  %41 = load %struct.go7007*, %struct.go7007** %2, align 8
  %42 = getelementptr inbounds %struct.go7007, %struct.go7007* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 1
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 7
  %47 = shl i32 %44, %46
  %48 = load %struct.go7007*, %struct.go7007** %2, align 8
  %49 = getelementptr inbounds %struct.go7007, %struct.go7007* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %4, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %3, align 4
  %55 = ashr i32 %54, 3
  %56 = add nsw i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %50, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %47
  store i32 %60, i32* %58, align 4
  %61 = load %struct.go7007*, %struct.go7007** %2, align 8
  %62 = getelementptr inbounds %struct.go7007, %struct.go7007* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %16
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %13

68:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
