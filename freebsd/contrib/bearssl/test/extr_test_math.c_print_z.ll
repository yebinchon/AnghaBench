; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_math.c_print_z.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_math.c_print_z.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c" 00\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c" %02X%02X%02X%02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_z to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_z(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1000 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @mpz_export(i8* %6, i64* %4, i32 1, i32 1, i32 0, i32 0, i32 %7)
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %62

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = and i64 %14, 3
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = and i64 %18, 3
  %20 = sub i64 4, %19
  store i64 %20, i64* %5, align 8
  %21 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @memmove(i8* %23, i8* %24, i64 %25)
  %27 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @memset(i8* %27, i32 0, i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %17, %13
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %59, %33
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  %45 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 2
  %50 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 3
  %55 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %47, i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %38
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %5, align 8
  br label %34

62:                                               ; preds = %11, %34
  ret void
}

declare dso_local i32 @mpz_export(i8*, i64*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
