; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_directory.c_udf_get_fileident.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_directory.c_udf_get_fileident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileIdentDesc = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"invalidparms\0A, buffer=%p, offset=%p\0A\00", align 1
@TAG_IDENT_FID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"0x%x != TAG_IDENT_FID\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"offset: %u sizeof: %lu bufsize: %u\0A\00", align 1
@UDF_NAME_PAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fileIdentDesc* @udf_get_fileident(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.fileIdentDesc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fileIdentDesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14, %3
  %18 = load i8*, i8** %5, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19, i32* %20)
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %4, align 8
  br label %101

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %10, align 8
  br label %39

39:                                               ; preds = %33, %28, %22
  %40 = load i32*, i32** %10, align 8
  %41 = bitcast i32* %40 to %struct.fileIdentDesc*
  store %struct.fileIdentDesc* %41, %struct.fileIdentDesc** %8, align 8
  %42 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %43 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @TAG_IDENT_FID, align 4
  %47 = call i64 @cpu_to_le16(i32 %46)
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %39
  %50 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %51 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @le16_to_cpu(i64 %53)
  %55 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %57, i64 24, i32 %58)
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %4, align 8
  br label %101

60:                                               ; preds = %39
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 24
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ugt i64 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 24, i32* %9, align 4
  br label %82

69:                                               ; preds = %60
  %70 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %71 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = add i64 24, %73
  %75 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %76 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @le16_to_cpu(i64 %77)
  %79 = sext i32 %78 to i64
  %80 = add i64 %74, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %69, %68
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @UDF_NAME_PAD, align 4
  %85 = srem i32 %83, %84
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32, i32* @UDF_NAME_PAD, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %88, %82
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  %100 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  store %struct.fileIdentDesc* %100, %struct.fileIdentDesc** %4, align 8
  br label %101

101:                                              ; preds = %94, %49, %17
  %102 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %4, align 8
  ret %struct.fileIdentDesc* %102
}

declare dso_local i32 @udf_debug(i8*, i32, ...) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
