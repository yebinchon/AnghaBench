; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_main.c_show_help.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_main.c_show_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i32 }

@menu = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"usage: ar9170user -[%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\09-%c\09%s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @show_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_help() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @menu, align 8
  %5 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %4)
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %25, %0
  %11 = load i32, i32* %1, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @menu, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @menu, align 8
  %17 = load i32, i32* %1, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 4
  %22 = load i32, i32* %1, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %9, i64 %23
  store i8 %21, i8* %24, align 1
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %1, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @menu, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %29)
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %9, i64 %31
  store i8 0, i8* %32, align 1
  %33 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %9)
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %54, %28
  %35 = load i32, i32* %1, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @menu, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %36)
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @menu, align 8
  %41 = load i32, i32* %1, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8, i8* %44, align 4
  %46 = sext i8 %45 to i32
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @menu, align 8
  %48 = load i32, i32* %1, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %52)
  br label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %1, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %34

57:                                               ; preds = %34
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  %59 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %59)
  ret i32 %58
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @info(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
