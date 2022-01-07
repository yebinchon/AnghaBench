; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_hexdump.c_print_hex_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_hexdump.c_print_hex_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%s%s%*p: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s%s%.8x: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s%s%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_hex_dump(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [200 x i8], align 16
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %22 = load i8*, i8** %14, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %17, align 8
  %24 = load i64, i64* %15, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %20, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 16
  br i1 %27, label %28, label %32

28:                                               ; preds = %8
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 32
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 16, i32* %12, align 4
  br label %32

32:                                               ; preds = %31, %28, %8
  store i32 0, i32* %18, align 4
  br label %33

33:                                               ; preds = %77, %32
  %34 = load i32, i32* %18, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %15, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %33
  %39 = load i32, i32* %20, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @min(i32 %39, i32 %40)
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %20, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %20, align 4
  %45 = load i32*, i32** %17, align 8
  %46 = load i32, i32* %18, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = getelementptr inbounds [200 x i8], [200 x i8]* %21, i64 0, i64 0
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @hex_dump_to_buffer(i32* %48, i32 %49, i32 %50, i32 %51, i8* %52, i32 200, i32 %53)
  %55 = load i32, i32* %11, align 4
  switch i32 %55, label %71 [
    i32 129, label %56
    i32 128, label %65
  ]

56:                                               ; preds = %38
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = getelementptr inbounds [200 x i8], [200 x i8]* %21, i64 0, i64 0
  %64 = call i32 (i8*, i8*, i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %57, i8* %58, i32 16, i32* %62, i8* %63)
  br label %76

65:                                               ; preds = %38
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %18, align 4
  %69 = getelementptr inbounds [200 x i8], [200 x i8]* %21, i64 0, i64 0
  %70 = call i32 (i8*, i8*, i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %66, i8* %67, i32 %68, i8* %69)
  br label %76

71:                                               ; preds = %38
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds [200 x i8], [200 x i8]* %21, i64 0, i64 0
  %75 = call i32 (i8*, i8*, i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %72, i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %71, %65, %56
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %18, align 4
  br label %33

81:                                               ; preds = %33
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @hex_dump_to_buffer(i32*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @printk(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
