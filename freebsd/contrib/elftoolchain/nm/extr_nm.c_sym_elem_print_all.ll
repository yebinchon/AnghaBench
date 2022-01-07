; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_sym_elem_print_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_sym_elem_print_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)*, i32* }
%struct.TYPE_10__ = type { i32 }

@nm_opts = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@RADIX_HEX = common dso_local global i64 0, align 8
@nm_elfclass = common dso_local global i64 0, align 8
@ELFCLASS32 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%-8s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%-16s\00", align 1
@cmp_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %c \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8*, %struct.TYPE_10__*, i8*)* @sym_elem_print_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_elem_print_all(i8 signext %0, i8* %1, %struct.TYPE_10__* %2, i8* %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nm_opts, i32 0, i32 2), align 8
  %19 = icmp eq i32 (%struct.TYPE_10__*)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %11, %4
  br label %95

21:                                               ; preds = %17
  %22 = load i8, i8* %5, align 1
  %23 = call i64 @IS_UNDEF_SYM_TYPE(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nm_opts, i32 0, i32 0), align 8
  %27 = load i64, i64* @RADIX_HEX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i64, i64* @nm_elfclass, align 8
  %31 = load i64, i64* @ELFCLASS32, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %37

35:                                               ; preds = %29, %25
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %33
  br label %89

38:                                               ; preds = %21
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nm_opts, i32 0, i32 4), align 8
  %40 = icmp eq i32* %39, @cmp_size
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 2, i32 0
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nm_opts, i32 0, i32 1), align 8
  %44 = add nsw i32 %42, %43
  switch i32 %44, label %84 [
    i32 3, label %45
    i32 2, label %59
    i32 1, label %69
    i32 0, label %83
  ]

45:                                               ; preds = %38
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nm_opts, i32 0, i32 2), align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = call i32 %51(%struct.TYPE_10__* %52)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nm_opts, i32 0, i32 3), align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = call i32 %55(%struct.TYPE_10__* %56)
  br label %58

58:                                               ; preds = %50, %45
  br label %88

59:                                               ; preds = %38
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nm_opts, i32 0, i32 3), align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = call i32 %65(%struct.TYPE_10__* %66)
  br label %68

68:                                               ; preds = %64, %59
  br label %88

69:                                               ; preds = %38
  %70 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nm_opts, i32 0, i32 2), align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = call i32 %70(%struct.TYPE_10__* %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nm_opts, i32 0, i32 3), align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = call i32 %79(%struct.TYPE_10__* %80)
  br label %82

82:                                               ; preds = %77, %69
  br label %88

83:                                               ; preds = %38
  br label %84

84:                                               ; preds = %38, %83
  %85 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nm_opts, i32 0, i32 2), align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = call i32 %85(%struct.TYPE_10__* %86)
  br label %88

88:                                               ; preds = %84, %82, %68, %58
  br label %89

89:                                               ; preds = %88, %37
  %90 = load i8, i8* %5, align 1
  %91 = sext i8 %90 to i32
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @PRINT_DEMANGLED_NAME(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %89, %20
  ret void
}

declare dso_local i64 @IS_UNDEF_SYM_TYPE(i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @PRINT_DEMANGLED_NAME(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
