; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_display_power_gnu_attribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_display_power_gnu_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Tag_GNU_Power_ABI_FP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"  Tag_GNU_Power_ABI_FP: \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Hard or soft float\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Hard float\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Soft float\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"??? (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"  Tag_unknown_%d: \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%d (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @display_power_gnu_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @display_power_gnu_attribute(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @Tag_GNU_Power_ABI_FP, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @read_uleb128(i8* %13, i32* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %4, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %27 [
    i32 0, label %21
    i32 1, label %23
    i32 2, label %25
  ]

21:                                               ; preds = %12
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %30

23:                                               ; preds = %12
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %30

25:                                               ; preds = %12
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %30

27:                                               ; preds = %12
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %25, %23, %21
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %3, align 8
  br label %63

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %38

37:                                               ; preds = %32
  store i32 2, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = add nsw i64 %47, 1
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8* %50, i8** %4, align 8
  br label %61

51:                                               ; preds = %38
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @read_uleb128(i8* %52, i32* %7)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %51, %43
  %62 = load i8*, i8** %4, align 8
  store i8* %62, i8** %3, align 8
  br label %63

63:                                               ; preds = %61, %30
  %64 = load i8*, i8** %3, align 8
  ret i8* %64
}

declare dso_local i32 @read_uleb128(i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
