; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_longlong_hexchars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_longlong_hexchars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@longlong_hexchars.disbuf = internal global [8 x i8] zeroinitializer, align 1
@hexlate = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i8*)* @longlong_hexchars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @longlong_hexchars(i64 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  store i8 48, i8* %15, align 1
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %3, align 8
  br label %70

18:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @longlong_hexchars.disbuf, i64 0, i64 0), i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 8
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i64*
  store i64* %22, i64** %11, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64*, i64** %11, align 8
  store i64 %23, i64* %24, align 8
  %25 = call i32 @longlongendswap(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @longlong_hexchars.disbuf, i64 0, i64 0))
  br label %26

26:                                               ; preds = %43, %40, %18
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  %33 = load i8, i8* %31, align 1
  store i8 %33, i8* %8, align 1
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i8, i8* %8, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %26

41:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i8, i8* %8, align 1
  %45 = zext i8 %44 to i32
  %46 = ashr i32 %45, 4
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %9, align 1
  %48 = load i8**, i8*** @hexlate, align 8
  %49 = load i8, i8* %9, align 1
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = ptrtoint i8* %52 to i8
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %5, align 8
  store i8 %53, i8* %54, align 1
  %56 = load i8, i8* %8, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 15
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %9, align 1
  %60 = load i8**, i8*** @hexlate, align 8
  %61 = load i8, i8* %9, align 1
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %64 to i8
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  store i8 %65, i8* %66, align 1
  br label %26

68:                                               ; preds = %26
  %69 = load i8*, i8** %5, align 8
  store i8* %69, i8** %3, align 8
  br label %70

70:                                               ; preds = %68, %14
  %71 = load i8*, i8** %3, align 8
  ret i8* %71
}

declare dso_local i32 @longlongendswap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
