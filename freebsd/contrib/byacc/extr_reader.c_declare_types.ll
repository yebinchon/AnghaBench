; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_declare_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_declare_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i64 }

@EOF = common dso_local global i32 0, align 4
@L_PAREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @declare_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @declare_types() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = call i32 (...) @nextc()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @EOF, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @unexpected_EOF()
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %11, 60
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i8* (...) @get_tag()
  store i8* %14, i8** %3, align 8
  br label %15

15:                                               ; preds = %13, %10
  br label %16

16:                                               ; preds = %71, %15
  %17 = call i32 (...) @nextc()
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @EOF, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @unexpected_EOF()
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* %1, align 4
  %25 = call i64 @isalpha(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %1, align 4
  %29 = icmp eq i32 %28, 95
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %1, align 4
  %32 = icmp eq i32 %31, 46
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %1, align 4
  %35 = icmp eq i32 %34, 36
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %30, %27, %23
  %37 = call %struct.TYPE_5__* (...) @get_name()
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %2, align 8
  br label %48

38:                                               ; preds = %33
  %39 = load i32, i32* %1, align 4
  %40 = icmp eq i32 %39, 39
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %1, align 4
  %43 = icmp eq i32 %42, 34
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %38
  %45 = call %struct.TYPE_5__* (...) @get_literal()
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %2, align 8
  br label %47

46:                                               ; preds = %41
  ret void

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i8*, i8** %3, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i8*, i8** %3, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %57, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @retyped_warning(i32 %65)
  br label %67

67:                                               ; preds = %62, %56, %51
  %68 = load i8*, i8** %3, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %48
  br label %16
}

declare dso_local i32 @nextc(...) #1

declare dso_local i32 @unexpected_EOF(...) #1

declare dso_local i8* @get_tag(...) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local %struct.TYPE_5__* @get_name(...) #1

declare dso_local %struct.TYPE_5__* @get_literal(...) #1

declare dso_local i32 @retyped_warning(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
