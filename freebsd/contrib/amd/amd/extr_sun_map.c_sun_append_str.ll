; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_sun_map.c_sun_append_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_sun_map.c_sun_append_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUN_KEY_SUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"${key}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i8*)* @sun_append_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun_append_str(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %12 = load i8*, i8** %8, align 8
  store i8* %12, i8** %11, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* @SUN_KEY_SUB, align 4
  %15 = call i8* @sun_strsub(i8* %13, i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i8* @sun_expand2amd(i8* %19)
  store i8* %20, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i8*, i8** %10, align 8
  store i8* %23, i8** %11, align 8
  br label %24

24:                                               ; preds = %22, %17
  br label %35

25:                                               ; preds = %4
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i8*, i8** %11, align 8
  %30 = call i8* @sun_expand2amd(i8* %29)
  store i8* %30, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8
  store i8* %33, i8** %11, align 8
  br label %34

34:                                               ; preds = %32, %28, %25
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @xstrlcat(i8* %39, i8* %40, i64 %41)
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @XFREE(i8* %44)
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @XFREE(i8* %46)
  ret void
}

declare dso_local i8* @sun_strsub(i8*, i32, i8*) #1

declare dso_local i8* @sun_expand2amd(i8*) #1

declare dso_local i32 @xstrlcat(i8*, i8*, i64) #1

declare dso_local i32 @XFREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
