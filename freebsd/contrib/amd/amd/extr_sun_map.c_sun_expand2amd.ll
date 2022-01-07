; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_sun_map.c_sun_expand2amd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_sun_map.c_sun_expand2amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUN_ARCH = common dso_local global i32 0, align 4
@AMD_ARCH = common dso_local global i32 0, align 4
@SUN_CPU = common dso_local global i32 0, align 4
@SUN_HOST = common dso_local global i32 0, align 4
@AMD_HOST = common dso_local global i32 0, align 4
@SUN_OSNAME = common dso_local global i32 0, align 4
@AMD_OSNAME = common dso_local global i32 0, align 4
@SUN_OSREL = common dso_local global i32 0, align 4
@AMD_OSVER = common dso_local global i32 0, align 4
@SUN_OSVERS = common dso_local global i32 0, align 4
@SUN_NATISA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @sun_expand2amd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sun_expand2amd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @xstrdup(i8* %7)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %2, align 8
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %78, %1
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %81

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 36
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %78

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @XFREE(i8* %25)
  %27 = load i8*, i8** %5, align 8
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @SUN_ARCH, align 4
  %31 = load i32, i32* @AMD_ARCH, align 4
  %32 = call i8* @sun_strsub(i8* %29, i32 %30, i32 %31)
  store i8* %32, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %78

35:                                               ; preds = %28
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* @SUN_CPU, align 4
  %38 = load i32, i32* @AMD_ARCH, align 4
  %39 = call i8* @sun_strsub(i8* %36, i32 %37, i32 %38)
  store i8* %39, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %78

42:                                               ; preds = %35
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* @SUN_HOST, align 4
  %45 = load i32, i32* @AMD_HOST, align 4
  %46 = call i8* @sun_strsub(i8* %43, i32 %44, i32 %45)
  store i8* %46, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %78

49:                                               ; preds = %42
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* @SUN_OSNAME, align 4
  %52 = load i32, i32* @AMD_OSNAME, align 4
  %53 = call i8* @sun_strsub(i8* %50, i32 %51, i32 %52)
  store i8* %53, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %78

56:                                               ; preds = %49
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* @SUN_OSREL, align 4
  %59 = load i32, i32* @AMD_OSVER, align 4
  %60 = call i8* @sun_strsub(i8* %57, i32 %58, i32 %59)
  store i8* %60, i8** %5, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %78

63:                                               ; preds = %56
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* @SUN_OSVERS, align 4
  %66 = load i32, i32* @AMD_OSVER, align 4
  %67 = call i8* @sun_strsub(i8* %64, i32 %65, i32 %66)
  store i8* %67, i8** %5, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %78

70:                                               ; preds = %63
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* @SUN_NATISA, align 4
  %73 = load i32, i32* @AMD_ARCH, align 4
  %74 = call i8* @sun_strsub(i8* %71, i32 %72, i32 %73)
  store i8* %74, i8** %5, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %78

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %76, %69, %62, %55, %48, %41, %34, %20
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %6, align 8
  br label %10

81:                                               ; preds = %10
  %82 = load i8*, i8** %5, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i8*, i8** %4, align 8
  store i8* %85, i8** %3, align 8
  br label %90

86:                                               ; preds = %81
  %87 = load i8*, i8** %5, align 8
  store i8* %87, i8** %3, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @XFREE(i8* %88)
  br label %90

90:                                               ; preds = %86, %84
  %91 = load i8*, i8** %3, align 8
  ret i8* %91
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @XFREE(i8*) #1

declare dso_local i8* @sun_strsub(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
