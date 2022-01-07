; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/usr/extr_gen_init_cpio.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/usr/extr_gen_init_cpio.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 (i8*)* }

@LINE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"ERROR: unable to open '%s': %s\0A\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"ERROR: incorrect format, could not locate file type line %d: '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"ERROR: incorrect format, newline required line %d: '%s'\0A\00", align 1
@file_handler_table = common dso_local global %struct.TYPE_2__* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c" line %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"unknown file type line %d: '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @LINE_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 2, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @usage(i8* %25)
  %27 = call i32 @exit(i32 1) #4
  unreachable

28:                                               ; preds = %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32*, i32** @stdin, align 8
  store i32* %35, i32** %6, align 8
  br label %56

36:                                               ; preds = %28
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32* @fopen(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %40, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* @errno, align 4
  %48 = call i8* @strerror(i32 %47)
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %48)
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @usage(i8* %52)
  %54 = call i32 @exit(i32 1) #4
  unreachable

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %55, %34
  br label %57

57:                                               ; preds = %146, %88, %82, %69, %56
  %58 = load i32, i32* @LINE_SIZE, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = call i64 @fgets(i8* %19, i32 %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %147

62:                                               ; preds = %57
  %63 = call i64 @strlen(i8* %19)
  store i64 %63, i64* %14, align 8
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  %66 = load i8, i8* %19, align 16
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 35, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %57

70:                                               ; preds = %62
  %71 = call i8* @strtok(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %71, i8** %10, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @stderr, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %75, i8* %19)
  store i32 -1, i32* %11, align 4
  br label %147

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 10, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %57

83:                                               ; preds = %77
  %84 = load i64, i64* %14, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = call i64 @strlen(i8* %85)
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %57

89:                                               ; preds = %83
  %90 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %90, i8** %9, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @stderr, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %94, i8* %19)
  store i32 -1, i32* %11, align 4
  br label %96

96:                                               ; preds = %92, %89
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %131, %96
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_handler_table, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %134

105:                                              ; preds = %97
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_handler_table, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @strcmp(i8* %19, i8* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %130, label %114

114:                                              ; preds = %105
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_handler_table, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32 (i8*)*, i32 (i8*)** %119, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 %120(i8* %121)
  store i32 %122, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load i32, i32* %15, align 4
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* @stderr, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %124, %114
  br label %134

130:                                              ; preds = %105
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %97

134:                                              ; preds = %129, %97
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_handler_table, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = icmp eq i8* null, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load i32, i32* @stderr, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %144, i8* %19)
  br label %146

146:                                              ; preds = %142, %134
  br label %57

147:                                              ; preds = %73, %57
  %148 = load i32, i32* %11, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = call i32 (...) @cpio_trailer()
  br label %152

152:                                              ; preds = %150, %147
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @exit(i32 %153) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usage(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i32 @cpio_trailer(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
