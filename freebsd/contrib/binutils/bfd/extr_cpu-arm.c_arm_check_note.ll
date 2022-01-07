; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-arm.c_arm_check_note.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-arm.c_arm_check_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arm_Note = common dso_local global i32 0, align 4
@name = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i8*, i8**)* @arm_check_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_check_note(i32* %0, i32* %1, i64 %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* @arm_Note, align 4
  %18 = load i64, i64* @name, align 8
  %19 = call i64 @offsetof(i32 %17, i64 %18)
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %6, align 4
  br label %99

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @bfd_get_32(i32* %24, i32* %25)
  store i64 %26, i64* %12, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* @arm_Note, align 4
  %30 = load i64, i64* %13, align 8
  %31 = call i64 @offsetof(i32 %29, i64 %30)
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = call i64 @bfd_get_32(i32* %27, i32* %32)
  store i64 %33, i64* %13, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @arm_Note, align 4
  %37 = load i64, i64* %14, align 8
  %38 = call i64 @offsetof(i32 %36, i64 %37)
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = call i64 @bfd_get_32(i32* %34, i32* %39)
  store i64 %40, i64* %14, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load i32, i32* @arm_Note, align 4
  %44 = load i64, i64* @name, align 8
  %45 = call i64 @offsetof(i32 %43, i64 %44)
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8* %46, i8** %15, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %47, %48
  %50 = load i32, i32* @arm_Note, align 4
  %51 = load i64, i64* @name, align 8
  %52 = call i64 @offsetof(i32 %50, i64 %51)
  %53 = add i64 %49, %52
  %54 = load i64, i64* %9, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %23
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %6, align 4
  br label %99

58:                                               ; preds = %23
  %59 = load i8*, i8** %10, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i64, i64* %12, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %6, align 4
  br label %99

66:                                               ; preds = %61
  br label %91

67:                                               ; preds = %58
  %68 = load i64, i64* %12, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = add nsw i32 %70, 1
  %72 = add nsw i32 %71, 3
  %73 = and i32 %72, -4
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %68, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %6, align 4
  br label %99

78:                                               ; preds = %67
  %79 = load i8*, i8** %15, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i64 @strcmp(i8* %79, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %6, align 4
  br label %99

85:                                               ; preds = %78
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %86, 3
  %88 = and i64 %87, -4
  %89 = load i8*, i8** %15, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 %88
  store i8* %90, i8** %15, align 8
  br label %91

91:                                               ; preds = %85, %66
  %92 = load i8**, i8*** %11, align 8
  %93 = icmp ne i8** %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8*, i8** %15, align 8
  %96 = load i8**, i8*** %11, align 8
  store i8* %95, i8** %96, align 8
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %97, %83, %76, %64, %56, %21
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i64 @offsetof(i32, i64) #1

declare dso_local i64 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
