; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_auxv.c_target_auxv_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_auxv.c_target_auxv_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 }

@builtin_type_void_data_ptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_auxv_parse(%struct.target_ops* %0, i8** %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.target_ops*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.target_ops* %0, %struct.target_ops** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* @builtin_type_void_data_ptr, align 4
  %15 = call i32 @TYPE_LENGTH(i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i8**, i8*** %8, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %52

22:                                               ; preds = %5
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = load i32, i32* %12, align 4
  %29 = mul nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %52

33:                                               ; preds = %22
  %34 = load i8*, i8** %13, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @extract_unsigned_integer(i8* %34, i32 %35)
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @extract_unsigned_integer(i8* %42, i32 %43)
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i8*, i8** %13, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i8**, i8*** %8, align 8
  store i8* %50, i8** %51, align 8
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %33, %32, %21
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
