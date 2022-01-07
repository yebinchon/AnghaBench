; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_unicode.c_udf_NLStoCS0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_unicode.c_udf_NLStoCS0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 (i32*, i32, i32*)* }
%struct.ustr = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nls_table*, i32*, %struct.ustr*, i32)* @udf_NLStoCS0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_NLStoCS0(%struct.nls_table* %0, i32* %1, %struct.ustr* %2, i32 %3) #0 {
  %5 = alloca %struct.nls_table*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ustr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nls_table* %0, %struct.nls_table** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ustr* %2, %struct.ustr** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32 @memset(i32* %14, i32 0, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 8, i32* %21, align 4
  store i32 255, i32* %11, align 4
  br label %22

22:                                               ; preds = %56, %4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %82, %22
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.ustr*, %struct.ustr** %7, align 8
  %26 = getelementptr inbounds %struct.ustr, %struct.ustr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %23
  %30 = load %struct.nls_table*, %struct.nls_table** %5, align 8
  %31 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %30, i32 0, i32 0
  %32 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %31, align 8
  %33 = load %struct.ustr*, %struct.ustr** %7, align 8
  %34 = getelementptr inbounds %struct.ustr, %struct.ustr* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load %struct.ustr*, %struct.ustr** %7, align 8
  %40 = getelementptr inbounds %struct.ustr, %struct.ustr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sub i32 %41, %42
  %44 = call i32 %32(i32* %38, i32 %43, i32* %12)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %29
  br label %82

48:                                               ; preds = %29
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  store i32 63, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  store i32 65535, i32* %11, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 16, i32* %58, align 4
  br label %22

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 65535
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* %12, align 4
  %64 = lshr i32 %63, 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %59
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 255
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %10, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %70, %47
  %83 = load i32, i32* %10, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %23

85:                                               ; preds = %23
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  ret i32 %94
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
