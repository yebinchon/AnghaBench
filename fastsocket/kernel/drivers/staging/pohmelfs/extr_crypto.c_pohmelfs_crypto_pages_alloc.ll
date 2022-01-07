; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypto_pages_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypto_pages_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_crypto_engine = type { i32, i32* }
%struct.pohmelfs_sb = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pohmelfs_crypto_engine*, %struct.pohmelfs_sb*)* @pohmelfs_crypto_pages_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_crypto_pages_alloc(%struct.pohmelfs_crypto_engine* %0, %struct.pohmelfs_sb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pohmelfs_crypto_engine*, align 8
  %5 = alloca %struct.pohmelfs_sb*, align 8
  %6 = alloca i32, align 4
  store %struct.pohmelfs_crypto_engine* %0, %struct.pohmelfs_crypto_engine** %4, align 8
  store %struct.pohmelfs_sb* %1, %struct.pohmelfs_sb** %5, align 8
  %7 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %8 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kmalloc(i32 %12, i32 %13)
  %15 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %16 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %18 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %70

24:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %28 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @alloc_page(i32 %32)
  %34 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %35 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %41 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %31
  br label %53

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %25

53:                                               ; preds = %48, %25
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %56 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %58 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %63

62:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %70

63:                                               ; preds = %61
  %64 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %65 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @kfree(i32* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %63, %62, %21
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
