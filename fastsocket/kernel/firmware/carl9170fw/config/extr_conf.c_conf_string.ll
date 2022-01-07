; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_conf.c_conf_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_conf.c_conf_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.TYPE_2__*, %struct.symbol* }
%struct.TYPE_2__ = type { i32 }
%struct.symbol = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"%*s%s \00", align 1
@indent = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(%s) \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@line = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.menu*)* @conf_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_string(%struct.menu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.menu*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i8*, align 8
  store %struct.menu* %0, %struct.menu** %3, align 8
  %6 = load %struct.menu*, %struct.menu** %3, align 8
  %7 = getelementptr inbounds %struct.menu, %struct.menu* %6, i32 0, i32 1
  %8 = load %struct.symbol*, %struct.symbol** %7, align 8
  store %struct.symbol* %8, %struct.symbol** %4, align 8
  br label %9

9:                                                ; preds = %1, %69
  %10 = load i8*, i8** @indent, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 -1
  %12 = load %struct.menu*, %struct.menu** %3, align 8
  %13 = getelementptr inbounds %struct.menu, %struct.menu* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @_(i32 %16)
  %18 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.symbol*, %struct.symbol** %4, align 8
  %20 = getelementptr inbounds %struct.symbol, %struct.symbol* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = load %struct.symbol*, %struct.symbol** %4, align 8
  %24 = call i8* @sym_get_string_value(%struct.symbol* %23)
  store i8* %24, i8** %5, align 8
  %25 = load %struct.symbol*, %struct.symbol** %4, align 8
  %26 = call i8* @sym_get_string_value(%struct.symbol* %25)
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %9
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %9
  %32 = load %struct.symbol*, %struct.symbol** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @conf_askvalue(%struct.symbol* %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %70

37:                                               ; preds = %31
  %38 = load i32*, i32** @line, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %51 [
    i32 10, label %41
    i32 63, label %42
  ]

41:                                               ; preds = %37
  br label %60

42:                                               ; preds = %37
  %43 = load i32*, i32** @line, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.menu*, %struct.menu** %3, align 8
  %49 = call i32 @print_help(%struct.menu* %48)
  store i8* null, i8** %5, align 8
  br label %60

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %37, %50
  %52 = load i32*, i32** @line, align 8
  %53 = load i32*, i32** @line, align 8
  %54 = call i32 @strlen(i32* %53)
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** @line, align 8
  %59 = bitcast i32* %58 to i8*
  store i8* %59, i8** %5, align 8
  br label %60

60:                                               ; preds = %51, %47, %41
  %61 = load i8*, i8** %5, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.symbol*, %struct.symbol** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @sym_set_string_value(%struct.symbol* %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %70

69:                                               ; preds = %63, %60
  br label %9

70:                                               ; preds = %68, %36
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @_(i32) #1

declare dso_local i8* @sym_get_string_value(%struct.symbol*) #1

declare dso_local i32 @conf_askvalue(%struct.symbol*, i8*) #1

declare dso_local i32 @print_help(%struct.menu*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @sym_set_string_value(%struct.symbol*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
