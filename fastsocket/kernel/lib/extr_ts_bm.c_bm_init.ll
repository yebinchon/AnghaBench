; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ts_bm.c_bm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ts_bm.c_bm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts_config = type { i32 }
%struct.ts_bm = type { i32, i32*, i64 }

@TS_IGNORECASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ts_config* (i8*, i32, i32, i32)* @bm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ts_config* @bm_init(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ts_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ts_config*, align 8
  %11 = alloca %struct.ts_bm*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = add i64 24, %20
  %22 = load i32, i32* %13, align 4
  %23 = zext i32 %22 to i64
  %24 = add i64 %21, %23
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.ts_config* @alloc_ts_config(i64 %25, i32 %26)
  store %struct.ts_config* %27, %struct.ts_config** %10, align 8
  %28 = load %struct.ts_config*, %struct.ts_config** %10, align 8
  %29 = call i64 @IS_ERR(%struct.ts_config* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load %struct.ts_config*, %struct.ts_config** %10, align 8
  store %struct.ts_config* %32, %struct.ts_config** %5, align 8
  br label %90

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.ts_config*, %struct.ts_config** %10, align 8
  %36 = getelementptr inbounds %struct.ts_config, %struct.ts_config* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ts_config*, %struct.ts_config** %10, align 8
  %38 = call %struct.ts_bm* @ts_config_priv(%struct.ts_config* %37)
  store %struct.ts_bm* %38, %struct.ts_bm** %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.ts_bm*, %struct.ts_bm** %11, align 8
  %41 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ts_bm*, %struct.ts_bm** %11, align 8
  %43 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32, i32* %13, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load %struct.ts_bm*, %struct.ts_bm** %11, align 8
  %50 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @TS_IGNORECASE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %74, %55
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load i8*, i8** %6, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @toupper(i32 %66) #3
  %68 = load %struct.ts_bm*, %struct.ts_bm** %11, align 8
  %69 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  br label %74

74:                                               ; preds = %60
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %56

77:                                               ; preds = %56
  br label %85

78:                                               ; preds = %33
  %79 = load %struct.ts_bm*, %struct.ts_bm** %11, align 8
  %80 = getelementptr inbounds %struct.ts_bm, %struct.ts_bm* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @memcpy(i32* %81, i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %77
  %86 = load %struct.ts_bm*, %struct.ts_bm** %11, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @compute_prefix_tbl(%struct.ts_bm* %86, i32 %87)
  %89 = load %struct.ts_config*, %struct.ts_config** %10, align 8
  store %struct.ts_config* %89, %struct.ts_config** %5, align 8
  br label %90

90:                                               ; preds = %85, %31
  %91 = load %struct.ts_config*, %struct.ts_config** %5, align 8
  ret %struct.ts_config* %91
}

declare dso_local %struct.ts_config* @alloc_ts_config(i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.ts_config*) #1

declare dso_local %struct.ts_bm* @ts_config_priv(%struct.ts_config*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @compute_prefix_tbl(%struct.ts_bm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
