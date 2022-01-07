; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_crypto_pages_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_crypto_pages_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_crypto_engine = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_crypto_engine*, i32)* @dst_crypto_pages_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_crypto_pages_alloc(%struct.dst_crypto_engine* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dst_crypto_engine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dst_crypto_engine* %0, %struct.dst_crypto_engine** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32* @kmalloc(i32 %10, i32 %11)
  %13 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %14 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %16 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %74

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %46, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @alloc_page(i32 %28)
  %30 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %31 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  %36 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %37 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %27
  br label %53

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %23

49:                                               ; preds = %23
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %52 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %3, align 4
  br label %74

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %58, %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %6, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %60 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__free_page(i32 %65)
  br label %54

67:                                               ; preds = %54
  %68 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %69 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @kfree(i32* %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %67, %49, %19
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
