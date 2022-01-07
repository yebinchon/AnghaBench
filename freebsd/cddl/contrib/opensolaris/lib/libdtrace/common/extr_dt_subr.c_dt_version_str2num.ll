; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dt_version_str2num.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dt_version_str2num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DT_VERSION_MAJMAX = common dso_local global i32 0, align 4
@DT_VERSION_MINMAX = common dso_local global i32 0, align 4
@DT_VERSION_MICMAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_version_str2num(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  br label %10

10:                                               ; preds = %44, %2
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %4, align 8
  %13 = load i8, i8* %11, align 1
  store i8 %13, i8* %8, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %10
  %17 = load i8, i8* %8, align 1
  %18 = call i64 @isdigit(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 10
  %26 = load i8, i8* %8, align 1
  %27 = sext i8 %26 to i32
  %28 = add nsw i32 %25, %27
  %29 = sub nsw i32 %28, 48
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %31
  store i32 %29, i32* %32, align 4
  br label %44

33:                                               ; preds = %16
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 46
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = sext i32 %38 to i64
  %41 = icmp uge i64 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %33
  store i32 -1, i32* %3, align 4
  br label %74

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %20
  br label %10

45:                                               ; preds = %10
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DT_VERSION_MAJMAX, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DT_VERSION_MINMAX, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DT_VERSION_MICMAX, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %50, %45
  store i32 -1, i32* %3, align 4
  br label %74

61:                                               ; preds = %55
  %62 = load i32*, i32** %5, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @DT_VERSION_NUMBER(i32 %66, i32 %68, i32 %70)
  %72 = load i32*, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %64, %61
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %60, %42
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @isdigit(i8 signext) #2

declare dso_local i32 @DT_VERSION_NUMBER(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
