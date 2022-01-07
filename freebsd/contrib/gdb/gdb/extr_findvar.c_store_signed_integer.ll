; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_findvar.c_store_signed_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_findvar.c_store_signed_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_signed_integer(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8* %14, i8** %9, align 8
  %15 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %16 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 -1
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %32, %18
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp uge i8* %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 255
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %7, align 8
  store i8 %28, i8* %29, align 1
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 8
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 -1
  store i8* %34, i8** %7, align 8
  br label %21

35:                                               ; preds = %21
  br label %53

36:                                               ; preds = %3
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %49, %36
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %7, align 8
  store i8 %45, i8* %46, align 1
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 8
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  br label %38

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
