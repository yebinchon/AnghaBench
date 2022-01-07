; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_pointer-set.c_pointer_set_contains.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_pointer-set.c_pointer_set_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pointer_set_t = type { i64, i8**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pointer_set_contains(%struct.pointer_set_t* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pointer_set_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.pointer_set_t* %0, %struct.pointer_set_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.pointer_set_t*, %struct.pointer_set_t** %4, align 8
  %9 = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.pointer_set_t*, %struct.pointer_set_t** %4, align 8
  %12 = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @hash1(i8* %7, i64 %10, i32 %13)
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %2, %45
  %16 = load %struct.pointer_set_t*, %struct.pointer_set_t** %4, align 8
  %17 = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %16, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %46

25:                                               ; preds = %15
  %26 = load %struct.pointer_set_t*, %struct.pointer_set_t** %4, align 8
  %27 = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %26, i32 0, i32 1
  %28 = load i8**, i8*** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %46

34:                                               ; preds = %25
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.pointer_set_t*, %struct.pointer_set_t** %4, align 8
  %39 = getelementptr inbounds %struct.pointer_set_t, %struct.pointer_set_t* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i64 0, i64* %6, align 8
  br label %43

43:                                               ; preds = %42, %34
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  br label %15

46:                                               ; preds = %33, %24
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @hash1(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
