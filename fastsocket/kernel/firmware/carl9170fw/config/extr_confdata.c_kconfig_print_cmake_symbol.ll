; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_confdata.c_kconfig_print_cmake_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_confdata.c_kconfig_print_cmake_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i8* }

@.str = private unnamed_addr constant [17 x i8] c"set(%s%s false)\0A\00", align 1
@CONFIG_ = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"set(%s%s true)\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"set(%s%s %s%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"set(%s%s %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.symbol*, i8*, i8*)* @kconfig_print_cmake_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kconfig_print_cmake_symbol(i32* %0, %struct.symbol* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.symbol* %1, %struct.symbol** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.symbol*, %struct.symbol** %6, align 8
  %12 = getelementptr inbounds %struct.symbol, %struct.symbol* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %87 [
    i32 132, label %14
    i32 128, label %14
    i32 131, label %51
    i32 129, label %79
    i32 130, label %79
  ]

14:                                               ; preds = %4, %4
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 110
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** @CONFIG_, align 8
  %28 = load %struct.symbol*, %struct.symbol** %6, align 8
  %29 = getelementptr inbounds %struct.symbol, %struct.symbol* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %30, i8* %31)
  br label %33

33:                                               ; preds = %25, %19
  br label %88

34:                                               ; preds = %14
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 109
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (...) @abort() #3
  unreachable

41:                                               ; preds = %34
  %42 = load i32*, i32** %5, align 8
  %43 = load i8*, i8** @CONFIG_, align 8
  %44 = load %struct.symbol*, %struct.symbol** %6, align 8
  %45 = getelementptr inbounds %struct.symbol, %struct.symbol* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  br label %88

51:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 48
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 120
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 88
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %51
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %70

70:                                               ; preds = %69, %63, %57
  %71 = load i32*, i32** %5, align 8
  %72 = load i8*, i8** @CONFIG_, align 8
  %73 = load %struct.symbol*, %struct.symbol** %6, align 8
  %74 = getelementptr inbounds %struct.symbol, %struct.symbol* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %72, i8* %75, i8* %76, i8* %77)
  br label %88

79:                                               ; preds = %4, %4
  %80 = load i32*, i32** %5, align 8
  %81 = load i8*, i8** @CONFIG_, align 8
  %82 = load %struct.symbol*, %struct.symbol** %6, align 8
  %83 = getelementptr inbounds %struct.symbol, %struct.symbol* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %81, i8* %84, i8* %85)
  br label %88

87:                                               ; preds = %4
  br label %88

88:                                               ; preds = %33, %87, %79, %70, %50
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
