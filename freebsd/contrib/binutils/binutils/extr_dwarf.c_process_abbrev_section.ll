; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_process_abbrev_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_process_abbrev_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@first_abbrev = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @process_abbrev_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @process_abbrev_section(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32*, i32** @first_abbrev, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %78

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %76, %15
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %77

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @read_leb128(i8* %21, i32* %6, i32 0)
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %4, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i8* [ null, %33 ], [ %35, %34 ]
  store i8* %37, i8** %3, align 8
  br label %78

38:                                               ; preds = %20
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @read_leb128(i8* %39, i32* %6, i32 0)
  store i64 %40, i64* %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %4, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  %47 = load i8, i8* %45, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @add_abbrev(i64 %49, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %73, %38
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @read_leb128(i8* %54, i32* %6, i32 0)
  store i64 %55, i64* %9, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i8*, i8** %4, align 8
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %4, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i64 @read_leb128(i8* %60, i32* %6, i32 0)
  store i64 %61, i64* %11, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %4, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @add_abbrev_attr(i64 %69, i64 %70)
  br label %72

72:                                               ; preds = %68, %53
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %53, label %76

76:                                               ; preds = %73
  br label %16

77:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %78

78:                                               ; preds = %77, %36, %14
  %79 = load i8*, i8** %3, align 8
  ret i8* %79
}

declare dso_local i64 @read_leb128(i8*, i32*, i32) #1

declare dso_local i32 @add_abbrev(i64, i64, i32) #1

declare dso_local i32 @add_abbrev_attr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
