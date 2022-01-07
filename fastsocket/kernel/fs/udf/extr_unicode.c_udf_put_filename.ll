; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_unicode.c_udf_put_filename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_unicode.c_udf_put_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ustr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@UDF_FLAG_UTF8 = common dso_local global i32 0, align 4
@UDF_NAME_LEN = common dso_local global i32 0, align 4
@UDF_FLAG_NLS_MAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_put_filename(%struct.super_block* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ustr, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @udf_char_to_ustr(%struct.ustr* %10, i32* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %51

17:                                               ; preds = %4
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = load i32, i32* @UDF_FLAG_UTF8, align 4
  %20 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @UDF_NAME_LEN, align 4
  %25 = call i32 @udf_UTF8toCS0(i32* %23, %struct.ustr* %10, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %51

29:                                               ; preds = %22
  br label %49

30:                                               ; preds = %17
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = load i32, i32* @UDF_FLAG_NLS_MAP, align 4
  %33 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.super_block*, %struct.super_block** %6, align 8
  %37 = call %struct.TYPE_2__* @UDF_SB(%struct.super_block* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @UDF_NAME_LEN, align 4
  %42 = call i32 @udf_NLStoCS0(i32 %39, i32* %40, %struct.ustr* %10, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %51

46:                                               ; preds = %35
  br label %48

47:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %51

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %47, %45, %28, %16
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @udf_char_to_ustr(%struct.ustr*, i32*, i32) #1

declare dso_local i64 @UDF_QUERY_FLAG(%struct.super_block*, i32) #1

declare dso_local i32 @udf_UTF8toCS0(i32*, %struct.ustr*, i32) #1

declare dso_local i32 @udf_NLStoCS0(i32, i32*, %struct.ustr*, i32) #1

declare dso_local %struct.TYPE_2__* @UDF_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
