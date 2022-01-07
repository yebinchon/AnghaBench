; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rename.c_simple_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rename.c_simple_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COPY_BUF = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @simple_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_copy(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @COPY_BUF, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = load i32, i32* @O_BINARY, align 4
  %20 = or i32 %18, %19
  %21 = call i32 (i8*, i32, ...) @open(i8* %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %66

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @creat(i8* %26, i32 511)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @close(i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %66

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %54, %35
  %37 = load i32, i32* %6, align 4
  %38 = trunc i64 %14 to i32
  %39 = call i32 @read(i32 %37, i8* %16, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @write(i32 %42, i8* %16, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i32, i32* @errno, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @close(i32 %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %66

54:                                               ; preds = %41
  br label %36

55:                                               ; preds = %36
  %56 = load i32, i32* @errno, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @close(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %66

65:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %66

66:                                               ; preds = %65, %63, %47, %30, %24
  %67 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32, ...) #2

declare dso_local i32 @creat(i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
