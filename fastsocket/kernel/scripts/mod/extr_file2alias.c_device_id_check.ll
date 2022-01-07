; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_device_id_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_device_id_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cross_build = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [162 x i8] c"%s: sizeof(struct %s_device_id)=%lu is not a modulo of the size of section __mod_%s_device_table=%lu.\0AFix definition of struct %s_device_id in mod_devicetable.h\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"%s: struct %s_device_id is %lu bytes.  The last of %lu is:\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"%s: struct %s_device_id is not terminated with a NULL entry!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i64, i8*)* @device_id_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_id_check(i8* %0, i8* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = urem i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16, %5
  %21 = load i64, i64* @cross_build, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %92

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 (i8*, i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26, i64 %27, i8* %28, i64 %29, i8* %30)
  br label %32

32:                                               ; preds = %24, %16
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %89, %32
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %9, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr i8, i8* %39, i64 %40
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 0, %42
  %44 = getelementptr i8, i8* %41, i64 %43
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %44, i64 %46
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %38
  %52 = load i32, i32* @stderr, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = udiv i64 %56, %57
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %54, i64 %55, i64 %58)
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %79, %51
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %9, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr i8, i8* %67, i64 %68
  %70 = load i64, i64* %9, align 8
  %71 = sub i64 0, %70
  %72 = getelementptr i8, i8* %69, i64 %71
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr i8, i8* %72, i64 %74
  %76 = bitcast i8* %75 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %60

82:                                               ; preds = %60
  %83 = load i32, i32* @stderr, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i8*, i8** %6, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 (i8*, i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i8* %85, i8* %86)
  br label %88

88:                                               ; preds = %82, %38
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %33

92:                                               ; preds = %23, %33
  ret void
}

declare dso_local i32 @fatal(i8*, i8*, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
