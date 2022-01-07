; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_stabs.c_generate_asm_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_stabs.c_generate_asm_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@generate_asm_file.last_file = internal global i8* null, align 8
@generate_asm_file.label_count = internal global i32 0, align 4
@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%sF%d\00", align 1
@FAKE_LABEL_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"\22,%d,0,0,%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @generate_asm_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_asm_file(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [30 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** @generate_asm_file.last_file, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i8*, i8** @generate_asm_file.last_file, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strcmp(i8* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %102

26:                                               ; preds = %20, %2
  %27 = load i8*, i8** @input_line_pointer, align 8
  store i8* %27, i8** %5, align 8
  %28 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %29 = load i8*, i8** @FAKE_LABEL_NAME, align 8
  %30 = load i32, i32* @generate_asm_file.label_count, align 4
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  %32 = load i32, i32* @generate_asm_file.label_count, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @generate_asm_file.label_count, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = mul i64 2, %35
  %37 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %38 = call i64 @strlen(i8* %37)
  %39 = add i64 %36, %38
  %40 = add i64 %39, 12
  %41 = trunc i64 %40 to i32
  %42 = call i8* @xmalloc(i32 %41)
  store i8* %42, i8** %7, align 8
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %10, align 8
  store i8 34, i8* %43, align 1
  br label %45

45:                                               ; preds = %81, %26
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ult i8* %46, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = call i8* @strchr(i8* %50, i8 signext 92)
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = add nsw i64 %59, 1
  br label %64

61:                                               ; preds = %49
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @strlen(i8* %62)
  br label %64

64:                                               ; preds = %61, %54
  %65 = phi i64 [ %60, %54 ], [ %63, %61 ]
  store i64 %65, i64* %12, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @strncpy(i8* %66, i8* %67, i64 %68)
  %70 = load i64, i64* %12, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8* %72, i8** %8, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %73
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %64
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %10, align 8
  store i8 92, i8* %79, align 1
  br label %81

81:                                               ; preds = %78, %64
  br label %45

82:                                               ; preds = %45
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* %3, align 4
  %85 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %84, i8* %85)
  %87 = load i8*, i8** %7, align 8
  store i8* %87, i8** @input_line_pointer, align 8
  %88 = call i32 @s_stab(i8 signext 115)
  %89 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %90 = call i32 @colon(i8* %89)
  %91 = load i8*, i8** @generate_asm_file.last_file, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load i8*, i8** @generate_asm_file.last_file, align 8
  %95 = call i32 @free(i8* %94)
  br label %96

96:                                               ; preds = %93, %82
  %97 = load i8*, i8** %4, align 8
  %98 = call i8* @xstrdup(i8* %97)
  store i8* %98, i8** @generate_asm_file.last_file, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i8*, i8** %5, align 8
  store i8* %101, i8** @input_line_pointer, align 8
  br label %102

102:                                              ; preds = %96, %25
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @s_stab(i8 signext) #1

declare dso_local i32 @colon(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
