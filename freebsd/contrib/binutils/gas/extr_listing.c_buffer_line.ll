; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_buffer_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_buffer_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@last_open_file_info = common dso_local global %struct.TYPE_4__* null, align 8
@last_open_file = common dso_local global i32* null, align 8
@FOPEN_RT = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i8*, i32)* @buffer_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @buffer_line(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %10, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %114

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @last_open_file_info, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @last_open_file_info, align 8
  %23 = icmp ne %struct.TYPE_4__* %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %20, %17
  %25 = load i32*, i32** @last_open_file, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32*, i32** @last_open_file, align 8
  %29 = call i64 @ftell(i32* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @last_open_file_info, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load i32*, i32** @last_open_file, align 8
  %33 = call i32 @fclose(i32* %32)
  br label %34

34:                                               ; preds = %27, %24
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** @last_open_file_info, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FOPEN_RT, align 4
  %40 = call i32* @fopen(i32 %38, i32 %39)
  store i32* %40, i32** @last_open_file, align 8
  %41 = load i32*, i32** @last_open_file, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %114

46:                                               ; preds = %34
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32*, i32** @last_open_file, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @SEEK_SET, align 4
  %57 = call i32 @fseek(i32* %52, i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %46
  br label %59

59:                                               ; preds = %58, %20
  %60 = load i32*, i32** @last_open_file, align 8
  %61 = call i32 @fgetc(i32* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %82, %59
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @EOF, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 10
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi i1 [ false, %64 ], [ %70, %68 ]
  br i1 %72, label %73, label %87

73:                                               ; preds = %71
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %10, align 8
  store i8 %79, i8* %80, align 1
  br label %82

82:                                               ; preds = %77, %73
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %8, align 4
  %85 = load i32*, i32** @last_open_file, align 8
  %86 = call i32 @fgetc(i32* %85)
  store i32 %86, i32* %9, align 4
  br label %64

87:                                               ; preds = %71
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @EOF, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add i32 %94, 2
  %96 = load i32, i32* %7, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %10, align 8
  store i8 46, i8* %99, align 1
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %10, align 8
  store i8 46, i8* %101, align 1
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %10, align 8
  store i8 46, i8* %103, align 1
  br label %105

105:                                              ; preds = %98, %91
  br label %106

106:                                              ; preds = %105, %87
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %10, align 8
  store i8 0, i8* %111, align 1
  %113 = load i8*, i8** %6, align 8
  store i8* %113, i8** %4, align 8
  br label %114

114:                                              ; preds = %106, %43, %16
  %115 = load i8*, i8** %4, align 8
  ret i8* %115
}

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @fopen(i32, i32) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @fgetc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
