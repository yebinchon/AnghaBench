; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_miniboot.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_miniboot.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlfw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"miniboot action failed (%d).\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.carlfw*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.carlfw* null, %struct.carlfw** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 4
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  br label %74

16:                                               ; preds = %10
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %62 [
    i32 97, label %23
    i32 100, label %44
  ]

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %74

27:                                               ; preds = %23
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8
  %31 = call %struct.carlfw* @carlfw_load(i8* %30)
  store %struct.carlfw* %31, %struct.carlfw** %6, align 8
  %32 = load %struct.carlfw*, %struct.carlfw** %6, align 8
  %33 = call i32 @IS_ERR_OR_NULL(%struct.carlfw* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.carlfw*, %struct.carlfw** %6, align 8
  %37 = call i32 @PTR_ERR(%struct.carlfw* %36)
  store i32 %37, i32* %7, align 4
  br label %67

38:                                               ; preds = %27
  %39 = load %struct.carlfw*, %struct.carlfw** %6, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 3
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @add_mini(%struct.carlfw* %39, i8* %42)
  store i32 %43, i32* %7, align 4
  br label %63

44:                                               ; preds = %16
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 3
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %74

48:                                               ; preds = %44
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  %51 = load i8*, i8** %50, align 8
  %52 = call %struct.carlfw* @carlfw_load(i8* %51)
  store %struct.carlfw* %52, %struct.carlfw** %6, align 8
  %53 = load %struct.carlfw*, %struct.carlfw** %6, align 8
  %54 = call i32 @IS_ERR_OR_NULL(%struct.carlfw* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.carlfw*, %struct.carlfw** %6, align 8
  %58 = call i32 @PTR_ERR(%struct.carlfw* %57)
  store i32 %58, i32* %7, align 4
  br label %67

59:                                               ; preds = %48
  %60 = load %struct.carlfw*, %struct.carlfw** %6, align 8
  %61 = call i32 @del_mini(%struct.carlfw* %60)
  store i32 %61, i32* %7, align 4
  br label %63

62:                                               ; preds = %16
  br label %74

63:                                               ; preds = %59, %38
  %64 = load %struct.carlfw*, %struct.carlfw** %6, align 8
  %65 = call i32 @carlfw_release(%struct.carlfw* %64)
  %66 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %66, i32* %3, align 4
  br label %79

67:                                               ; preds = %56, %35
  %68 = load %struct.carlfw*, %struct.carlfw** %6, align 8
  %69 = call i32 @carlfw_release(%struct.carlfw* %68)
  %70 = load i32, i32* @stderr, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %73, i32* %3, align 4
  br label %79

74:                                               ; preds = %62, %47, %26, %13
  %75 = load %struct.carlfw*, %struct.carlfw** %6, align 8
  %76 = call i32 @carlfw_release(%struct.carlfw* %75)
  %77 = call i32 (...) @mini_help()
  %78 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %67, %63
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.carlfw* @carlfw_load(i8*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.carlfw*) #1

declare dso_local i32 @PTR_ERR(%struct.carlfw*) #1

declare dso_local i32 @add_mini(%struct.carlfw*, i8*) #1

declare dso_local i32 @del_mini(%struct.carlfw*) #1

declare dso_local i32 @carlfw_release(%struct.carlfw*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @mini_help(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
