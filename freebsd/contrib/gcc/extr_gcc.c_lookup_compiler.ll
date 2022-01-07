; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_lookup_compiler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_lookup_compiler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compiler = type { i8*, i8* }

@compilers = common dso_local global %struct.compiler* null, align 8
@n_compilers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"language %s not recognized\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.compiler* (i8*, i64, i8*)* @lookup_compiler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.compiler* @lookup_compiler(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.compiler*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.compiler*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 42
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store %struct.compiler* null, %struct.compiler** %4, align 8
  br label %124

18:                                               ; preds = %11, %3
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = load %struct.compiler*, %struct.compiler** @compilers, align 8
  %23 = load i32, i32* @n_compilers, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.compiler, %struct.compiler* %22, i64 %24
  %26 = getelementptr inbounds %struct.compiler, %struct.compiler* %25, i64 -1
  store %struct.compiler* %26, %struct.compiler** %8, align 8
  br label %27

27:                                               ; preds = %50, %21
  %28 = load %struct.compiler*, %struct.compiler** %8, align 8
  %29 = load %struct.compiler*, %struct.compiler** @compilers, align 8
  %30 = icmp uge %struct.compiler* %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load %struct.compiler*, %struct.compiler** %8, align 8
  %33 = getelementptr inbounds %struct.compiler, %struct.compiler* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 64
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load %struct.compiler*, %struct.compiler** %8, align 8
  %41 = getelementptr inbounds %struct.compiler, %struct.compiler* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @strcmp(i8* %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %39
  %48 = load %struct.compiler*, %struct.compiler** %8, align 8
  store %struct.compiler* %48, %struct.compiler** %4, align 8
  br label %124

49:                                               ; preds = %39, %31
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.compiler*, %struct.compiler** %8, align 8
  %52 = getelementptr inbounds %struct.compiler, %struct.compiler* %51, i32 -1
  store %struct.compiler* %52, %struct.compiler** %8, align 8
  br label %27

53:                                               ; preds = %27
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %54)
  store %struct.compiler* null, %struct.compiler** %4, align 8
  br label %124

56:                                               ; preds = %18
  %57 = load %struct.compiler*, %struct.compiler** @compilers, align 8
  %58 = load i32, i32* @n_compilers, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.compiler, %struct.compiler* %57, i64 %59
  %61 = getelementptr inbounds %struct.compiler, %struct.compiler* %60, i64 -1
  store %struct.compiler* %61, %struct.compiler** %8, align 8
  br label %62

62:                                               ; preds = %100, %56
  %63 = load %struct.compiler*, %struct.compiler** %8, align 8
  %64 = load %struct.compiler*, %struct.compiler** @compilers, align 8
  %65 = icmp uge %struct.compiler* %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %62
  %67 = load %struct.compiler*, %struct.compiler** %8, align 8
  %68 = getelementptr inbounds %struct.compiler, %struct.compiler* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %72, %66
  %77 = load %struct.compiler*, %struct.compiler** %8, align 8
  %78 = getelementptr inbounds %struct.compiler, %struct.compiler* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = load i64, i64* %6, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %76
  %84 = load %struct.compiler*, %struct.compiler** %8, align 8
  %85 = getelementptr inbounds %struct.compiler, %struct.compiler* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load %struct.compiler*, %struct.compiler** %8, align 8
  %91 = getelementptr inbounds %struct.compiler, %struct.compiler* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @strlen(i8* %92)
  %94 = sub i64 0, %93
  %95 = getelementptr inbounds i8, i8* %89, i64 %94
  %96 = call i32 @strcmp(i8* %86, i8* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %83, %72
  br label %103

99:                                               ; preds = %83, %76
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.compiler*, %struct.compiler** %8, align 8
  %102 = getelementptr inbounds %struct.compiler, %struct.compiler* %101, i32 -1
  store %struct.compiler* %102, %struct.compiler** %8, align 8
  br label %62

103:                                              ; preds = %98, %62
  %104 = load %struct.compiler*, %struct.compiler** %8, align 8
  %105 = load %struct.compiler*, %struct.compiler** @compilers, align 8
  %106 = icmp uge %struct.compiler* %104, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %103
  %108 = load %struct.compiler*, %struct.compiler** %8, align 8
  %109 = getelementptr inbounds %struct.compiler, %struct.compiler* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 64
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load %struct.compiler*, %struct.compiler** %8, align 8
  store %struct.compiler* %116, %struct.compiler** %4, align 8
  br label %124

117:                                              ; preds = %107
  %118 = load %struct.compiler*, %struct.compiler** %8, align 8
  %119 = getelementptr inbounds %struct.compiler, %struct.compiler* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = call %struct.compiler* @lookup_compiler(i8* null, i64 0, i8* %121)
  store %struct.compiler* %122, %struct.compiler** %4, align 8
  br label %124

123:                                              ; preds = %103
  store %struct.compiler* null, %struct.compiler** %4, align 8
  br label %124

124:                                              ; preds = %123, %117, %115, %53, %47, %17
  %125 = load %struct.compiler*, %struct.compiler** %4, align 8
  ret %struct.compiler* %125
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
