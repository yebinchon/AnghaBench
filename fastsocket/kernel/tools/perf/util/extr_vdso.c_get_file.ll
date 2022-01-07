; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_vdso.c_get_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_vdso.c_get_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vdso_found = common dso_local global i32 0, align 4
@vdso_file = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_file() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* null, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %8 = load i32, i32* @vdso_found, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i8*, i8** @vdso_file, align 8
  store i8* %11, i8** %1, align 8
  br label %53

12:                                               ; preds = %0
  %13 = call i64 @find_vdso_map(i8** %4, i8** %5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i8* null, i8** %1, align 8
  br label %53

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  store i64 %21, i64* %6, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i8* @memdup(i8* %22, i64 %23)
  store i8* %24, i8** %3, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  store i8* null, i8** %1, align 8
  br label %53

28:                                               ; preds = %16
  %29 = load i8*, i8** @vdso_file, align 8
  %30 = call i32 @mkstemp(i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %46

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @write(i32 %36, i8* %37, i64 %38)
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i8*, i8** @vdso_file, align 8
  store i8* %42, i8** %2, align 8
  br label %43

43:                                               ; preds = %41, %34
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @close(i32 %44)
  br label %46

46:                                               ; preds = %43, %33
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %2, align 8
  %50 = icmp ne i8* %49, null
  %51 = zext i1 %50 to i32
  store i32 %51, i32* @vdso_found, align 4
  %52 = load i8*, i8** %2, align 8
  store i8* %52, i8** %1, align 8
  br label %53

53:                                               ; preds = %46, %27, %15, %10
  %54 = load i8*, i8** %1, align 8
  ret i8* %54
}

declare dso_local i64 @find_vdso_map(i8**, i8**) #1

declare dso_local i8* @memdup(i8*, i64) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
