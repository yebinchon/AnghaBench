; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_writeCHARS.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_writeCHARS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@code = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*, i32, i32*)* @writeCHARS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeCHARS(i8* %0, i8* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 8
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp sgt i32 %15, 240
  br i1 %16, label %17, label %29

17:                                               ; preds = %5
  %18 = load i32*, i32** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @code, align 4
  %23 = or i32 %22, 4096
  %24 = call i32 @checksum(i32* %18, i8* %19, i32 %21, i32 %23)
  %25 = load i32*, i32** %8, align 8
  store i32 16, i32* %25, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 8
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %17, %5
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strlen(i8* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 %36, i8* %41, align 1
  br label %42

42:                                               ; preds = %32, %29
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @memcpy(i8* %46, i8* %47, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %53, 8
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  ret void
}

declare dso_local i32 @checksum(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
