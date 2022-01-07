; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-driver.c_store_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-driver.c_store_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007_buffer = type { i64, i32, i32* }

@GO7007_BUF_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.go7007_buffer*, i32)* @store_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_byte(%struct.go7007_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.go7007_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.go7007_buffer* %0, %struct.go7007_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.go7007_buffer*, %struct.go7007_buffer** %3, align 8
  %8 = icmp ne %struct.go7007_buffer* %7, null
  br i1 %8, label %9, label %48

9:                                                ; preds = %2
  %10 = load %struct.go7007_buffer*, %struct.go7007_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GO7007_BUF_SIZE, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %9
  %16 = load %struct.go7007_buffer*, %struct.go7007_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = lshr i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.go7007_buffer*, %struct.go7007_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PAGE_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.go7007_buffer*, %struct.go7007_buffer** %3, align 8
  %29 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @page_address(i32 %34)
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %27, i32* %39, align 4
  %40 = load %struct.go7007_buffer*, %struct.go7007_buffer** %3, align 8
  %41 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.go7007_buffer*, %struct.go7007_buffer** %3, align 8
  %45 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %15, %9, %2
  ret void
}

declare dso_local i64 @page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
