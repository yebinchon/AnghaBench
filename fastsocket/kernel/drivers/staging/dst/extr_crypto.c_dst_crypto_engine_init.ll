; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_crypto_engine_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_crypto_engine_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_crypto_engine = type { i32, i32*, i32*, i32 }
%struct.dst_node = type { i32, i32, i32, %struct.dst_crypto_ctl }
%struct.dst_crypto_ctl = type { i64*, i64* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_crypto_engine*, %struct.dst_node*)* @dst_crypto_engine_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_crypto_engine_init(%struct.dst_crypto_engine* %0, %struct.dst_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dst_crypto_engine*, align 8
  %5 = alloca %struct.dst_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dst_crypto_ctl*, align 8
  store %struct.dst_crypto_engine* %0, %struct.dst_crypto_engine** %4, align 8
  store %struct.dst_node* %1, %struct.dst_node** %5, align 8
  %8 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %9 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %8, i32 0, i32 3
  store %struct.dst_crypto_ctl* %9, %struct.dst_crypto_ctl** %7, align 8
  %10 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %11 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %12 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dst_crypto_pages_alloc(%struct.dst_crypto_engine* %10, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %106

18:                                               ; preds = %2
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %21 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %23 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @kmalloc(i32 %24, i32 %25)
  %27 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %28 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %30 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %103

36:                                               ; preds = %18
  %37 = load %struct.dst_crypto_ctl*, %struct.dst_crypto_ctl** %7, align 8
  %38 = getelementptr inbounds %struct.dst_crypto_ctl, %struct.dst_crypto_ctl* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %36
  %44 = load %struct.dst_crypto_ctl*, %struct.dst_crypto_ctl** %7, align 8
  %45 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %46 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @dst_init_hash(%struct.dst_crypto_ctl* %44, i32 %47)
  %49 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %50 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %52 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @IS_ERR(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %43
  %57 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %58 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @PTR_ERR(i32* %59)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %62 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  br label %98

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63, %36
  %65 = load %struct.dst_crypto_ctl*, %struct.dst_crypto_ctl** %7, align 8
  %66 = getelementptr inbounds %struct.dst_crypto_ctl, %struct.dst_crypto_ctl* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %64
  %72 = load %struct.dst_crypto_ctl*, %struct.dst_crypto_ctl** %7, align 8
  %73 = load %struct.dst_node*, %struct.dst_node** %5, align 8
  %74 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32* @dst_init_cipher(%struct.dst_crypto_ctl* %72, i32 %75)
  %77 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %78 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %77, i32 0, i32 2
  store i32* %76, i32** %78, align 8
  %79 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %80 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @IS_ERR(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %71
  %85 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %86 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @PTR_ERR(i32* %87)
  store i32 %88, i32* %6, align 4
  %89 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %90 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %89, i32 0, i32 2
  store i32* null, i32** %90, align 8
  br label %93

91:                                               ; preds = %71
  br label %92

92:                                               ; preds = %91, %64
  store i32 0, i32* %3, align 4
  br label %108

93:                                               ; preds = %84
  %94 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %95 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @crypto_free_hash(i32* %96)
  br label %98

98:                                               ; preds = %93, %56
  %99 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %100 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @kfree(i32 %101)
  br label %103

103:                                              ; preds = %98, %33
  %104 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %4, align 8
  %105 = call i32 @dst_crypto_pages_free(%struct.dst_crypto_engine* %104)
  br label %106

106:                                              ; preds = %103, %17
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %92
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @dst_crypto_pages_alloc(%struct.dst_crypto_engine*, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32* @dst_init_hash(%struct.dst_crypto_ctl*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @dst_init_cipher(%struct.dst_crypto_ctl*, i32) #1

declare dso_local i32 @crypto_free_hash(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dst_crypto_pages_free(%struct.dst_crypto_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
