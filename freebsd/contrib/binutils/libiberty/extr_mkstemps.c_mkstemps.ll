; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_mkstemps.c_mkstemps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_mkstemps.c_mkstemps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mkstemps.letters = internal constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 16
@mkstemps.value = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"XXXXXX\00", align 1
@TMP_MAX = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mkstemps(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 6, %15
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %20, 6
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 %21, %23
  %25 = getelementptr inbounds i8, i8* %19, i64 %24
  %26 = call i64 @strncmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18, %2
  store i32 -1, i32* %3, align 4
  br label %120

29:                                               ; preds = %18
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 %31, 6
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %32, %34
  %36 = getelementptr inbounds i8, i8* %30, i64 %35
  store i8* %36, i8** %6, align 8
  %37 = call i32 (...) @getpid()
  %38 = load i32, i32* @mkstemps.value, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* @mkstemps.value, align 4
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %114, %29
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @TMP_MAX, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %117

44:                                               ; preds = %40
  %45 = load i32, i32* @mkstemps.value, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = srem i32 %46, 62
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %50, i8* %52, align 1
  %53 = load i32, i32* %9, align 4
  %54 = sdiv i32 %53, 62
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = srem i32 %55, 62
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8 %59, i8* %61, align 1
  %62 = load i32, i32* %9, align 4
  %63 = sdiv i32 %62, 62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = srem i32 %64, 62
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  store i8 %68, i8* %70, align 1
  %71 = load i32, i32* %9, align 4
  %72 = sdiv i32 %71, 62
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = srem i32 %73, 62
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  store i8 %77, i8* %79, align 1
  %80 = load i32, i32* %9, align 4
  %81 = sdiv i32 %80, 62
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = srem i32 %82, 62
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  store i8 %86, i8* %88, align 1
  %89 = load i32, i32* %9, align 4
  %90 = sdiv i32 %89, 62
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = srem i32 %91, 62
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 5
  store i8 %95, i8* %97, align 1
  %98 = load i8*, i8** %4, align 8
  %99 = load i32, i32* @O_BINARY, align 4
  %100 = load i32, i32* @O_RDWR, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @O_CREAT, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @O_EXCL, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @open(i8* %98, i32 %105, i32 384)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %44
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %3, align 4
  br label %120

111:                                              ; preds = %44
  %112 = load i32, i32* @mkstemps.value, align 4
  %113 = add nsw i32 %112, 7777
  store i32 %113, i32* @mkstemps.value, align 4
  br label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %40

117:                                              ; preds = %40
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  store i8 0, i8* %119, align 1
  store i32 -1, i32* %3, align 4
  br label %120

120:                                              ; preds = %117, %109, %28
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
