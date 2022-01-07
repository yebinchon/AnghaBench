; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_map_cat_rng_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_map_cat_rng_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipso_v4_doi = type { i64 }

@CIPSO_V4_MAX_REM_CATS = common dso_local global i32 0, align 4
@CIPSO_V4_MAP_PASS = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cipso_v4_doi*, i8*, i32)* @cipso_v4_map_cat_rng_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipso_v4_map_cat_rng_valid(%struct.cipso_v4_doi* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cipso_v4_doi*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cipso_v4_doi* %0, %struct.cipso_v4_doi** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @CIPSO_V4_MAX_REM_CATS, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %10, align 4
  %14 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %5, align 8
  %15 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CIPSO_V4_MAP_PASS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %3
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %62

26:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %58, %26
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = call i32 @get_unaligned_be16(i8* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = call i32 @get_unaligned_be16(i8* %46)
  store i32 %47, i32* %9, align 4
  br label %49

48:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %62

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 4
  store i32 %60, i32* %11, align 4
  br label %27

61:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %53, %23
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @get_unaligned_be16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
