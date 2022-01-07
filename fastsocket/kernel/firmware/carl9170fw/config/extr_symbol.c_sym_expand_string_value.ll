; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_symbol.c_sym_expand_string_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_symbol.c_sym_expand_string_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }

@SYMBOL_MAXLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sym_expand_string_value(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.symbol*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i8* @malloc(i64 %16)
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %87, %1
  %21 = load i8*, i8** %2, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 36)
  store i8* %22, i8** %3, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %93

24:                                               ; preds = %20
  %25 = load i32, i32* @SYMBOL_MAXLENGTH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %7, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @strncat(i8* %29, i8* %30, i32 %36)
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %3, align 8
  store i8* %28, i8** %6, align 8
  br label %40

40:                                               ; preds = %52, %24
  %41 = load i8*, i8** %3, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @isalnum(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %3, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 95
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i1 [ true, %40 ], [ %49, %45 ]
  br i1 %51, label %52, label %58

52:                                               ; preds = %50
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  %55 = load i8, i8* %53, align 1
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  store i8 %55, i8* %56, align 1
  br label %40

58:                                               ; preds = %50
  %59 = load i8*, i8** %6, align 8
  store i8 0, i8* %59, align 1
  %60 = call %struct.symbol* @sym_find(i8* %28)
  store %struct.symbol* %60, %struct.symbol** %10, align 8
  %61 = load %struct.symbol*, %struct.symbol** %10, align 8
  %62 = icmp ne %struct.symbol* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.symbol*, %struct.symbol** %10, align 8
  %65 = call i32 @sym_calc_value(%struct.symbol* %64)
  %66 = load %struct.symbol*, %struct.symbol** %10, align 8
  %67 = call i8* @sym_get_string_value(%struct.symbol* %66)
  store i8* %67, i8** %9, align 8
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = add nsw i32 %70, %72
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = add nsw i32 %73, %75
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %5, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %68
  %83 = load i64, i64* %11, align 8
  store i64 %83, i64* %5, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = load i64, i64* %5, align 8
  %86 = call i8* @realloc(i8* %84, i64 %85)
  store i8* %86, i8** %4, align 8
  br label %87

87:                                               ; preds = %82, %68
  %88 = load i8*, i8** %4, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @strcat(i8* %88, i8* %89)
  %91 = load i8*, i8** %3, align 8
  store i8* %91, i8** %2, align 8
  %92 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %92)
  br label %20

93:                                               ; preds = %20
  %94 = load i8*, i8** %4, align 8
  %95 = load i8*, i8** %2, align 8
  %96 = call i32 @strcat(i8* %94, i8* %95)
  %97 = load i8*, i8** %4, align 8
  ret i8* %97
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local %struct.symbol* @sym_find(i8*) #1

declare dso_local i32 @sym_calc_value(%struct.symbol*) #1

declare dso_local i8* @sym_get_string_value(%struct.symbol*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
