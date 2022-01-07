; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ts_kmp.c_kmp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ts_kmp.c_kmp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts_config = type { i32 }
%struct.ts_kmp = type { i32, i32*, i64 }

@TS_IGNORECASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ts_config* (i8*, i32, i32, i32)* @kmp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ts_config* @kmp_init(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ts_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ts_config*, align 8
  %11 = alloca %struct.ts_kmp*, align 8
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
  br label %94

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.ts_config*, %struct.ts_config** %10, align 8
  %36 = getelementptr inbounds %struct.ts_config, %struct.ts_config* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ts_config*, %struct.ts_config** %10, align 8
  %38 = call %struct.ts_kmp* @ts_config_priv(%struct.ts_config* %37)
  store %struct.ts_kmp* %38, %struct.ts_kmp** %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.ts_kmp*, %struct.ts_kmp** %11, align 8
  %41 = getelementptr inbounds %struct.ts_kmp, %struct.ts_kmp* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.ts_kmp*, %struct.ts_kmp** %11, align 8
  %45 = getelementptr inbounds %struct.ts_kmp, %struct.ts_kmp* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @compute_prefix_tbl(i8* %42, i32 %43, i64 %46, i32 %47)
  %49 = load %struct.ts_kmp*, %struct.ts_kmp** %11, align 8
  %50 = getelementptr inbounds %struct.ts_kmp, %struct.ts_kmp* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load %struct.ts_kmp*, %struct.ts_kmp** %11, align 8
  %57 = getelementptr inbounds %struct.ts_kmp, %struct.ts_kmp* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @TS_IGNORECASE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %81, %62
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load i8*, i8** %6, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @toupper(i32 %73) #3
  %75 = load %struct.ts_kmp*, %struct.ts_kmp** %11, align 8
  %76 = getelementptr inbounds %struct.ts_kmp, %struct.ts_kmp* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %67
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %63

84:                                               ; preds = %63
  br label %92

85:                                               ; preds = %33
  %86 = load %struct.ts_kmp*, %struct.ts_kmp** %11, align 8
  %87 = getelementptr inbounds %struct.ts_kmp, %struct.ts_kmp* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @memcpy(i32* %88, i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %84
  %93 = load %struct.ts_config*, %struct.ts_config** %10, align 8
  store %struct.ts_config* %93, %struct.ts_config** %5, align 8
  br label %94

94:                                               ; preds = %92, %31
  %95 = load %struct.ts_config*, %struct.ts_config** %5, align 8
  ret %struct.ts_config* %95
}

declare dso_local %struct.ts_config* @alloc_ts_config(i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.ts_config*) #1

declare dso_local %struct.ts_kmp* @ts_config_priv(%struct.ts_config*) #1

declare dso_local i32 @compute_prefix_tbl(i8*, i32, i64, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
