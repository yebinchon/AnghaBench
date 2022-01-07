; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypto_engine_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypto_engine_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_crypto_engine = type { i32, i32*, i32*, i32, i64 }
%struct.pohmelfs_sb = type { i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pohmelfs_crypto_engine_init(%struct.pohmelfs_crypto_engine* %0, %struct.pohmelfs_sb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pohmelfs_crypto_engine*, align 8
  %5 = alloca %struct.pohmelfs_sb*, align 8
  %6 = alloca i32, align 4
  store %struct.pohmelfs_crypto_engine* %0, %struct.pohmelfs_crypto_engine** %4, align 8
  store %struct.pohmelfs_sb* %1, %struct.pohmelfs_sb** %5, align 8
  %7 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %8 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %11 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %13 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @kmalloc(i32 %14, i32 %15)
  %17 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %18 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %20 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %83

26:                                               ; preds = %2
  %27 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %28 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %33 = call i32* @pohmelfs_init_hash(%struct.pohmelfs_sb* %32)
  %34 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %35 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %37 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @IS_ERR(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %43 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @PTR_ERR(i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %47 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  br label %78

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %51 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %56 = call i32* @pohmelfs_init_cipher(%struct.pohmelfs_sb* %55)
  %57 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %58 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %60 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @IS_ERR(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %54
  %65 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %66 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @PTR_ERR(i32* %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %70 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  br label %73

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %49
  store i32 0, i32* %3, align 4
  br label %85

73:                                               ; preds = %64
  %74 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %75 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @crypto_free_hash(i32* %76)
  br label %78

78:                                               ; preds = %73, %41
  %79 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %80 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @kfree(i32 %81)
  br label %83

83:                                               ; preds = %78, %23
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %72
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32* @pohmelfs_init_hash(%struct.pohmelfs_sb*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @pohmelfs_init_cipher(%struct.pohmelfs_sb*) #1

declare dso_local i32 @crypto_free_hash(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
