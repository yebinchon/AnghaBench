; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_brssl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_brssl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"skey\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ta\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"chain\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"twrch\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"impl\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"unknown command: '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call i32 (...) @usage()
  %12 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %12, i32* %3, align 4
  br label %144

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @eqstr(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  %25 = call i64 @do_client(i32 %22, i8** %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %28, i32* %3, align 4
  br label %144

29:                                               ; preds = %20
  br label %143

30:                                               ; preds = %13
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @eqstr(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %35, 2
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = call i64 @do_server(i32 %36, i8** %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %42, i32* %3, align 4
  br label %144

43:                                               ; preds = %34
  br label %142

44:                                               ; preds = %30
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @eqstr(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 2
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 2
  %53 = call i64 @do_verify(i32 %50, i8** %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %56, i32* %3, align 4
  br label %144

57:                                               ; preds = %48
  br label %141

58:                                               ; preds = %44
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @eqstr(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = sub nsw i32 %63, 2
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = call i64 @do_skey(i32 %64, i8** %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %70, i32* %3, align 4
  br label %144

71:                                               ; preds = %62
  br label %140

72:                                               ; preds = %58
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @eqstr(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %77, 2
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 2
  %81 = call i64 @do_ta(i32 %78, i8** %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %84, i32* %3, align 4
  br label %144

85:                                               ; preds = %76
  br label %139

86:                                               ; preds = %72
  %87 = load i8*, i8** %6, align 8
  %88 = call i64 @eqstr(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i32, i32* %4, align 4
  %92 = sub nsw i32 %91, 2
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 2
  %95 = call i64 @do_chain(i32 %92, i8** %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %98, i32* %3, align 4
  br label %144

99:                                               ; preds = %90
  br label %138

100:                                              ; preds = %86
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @eqstr(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = load i32, i32* %4, align 4
  %106 = sub nsw i32 %105, 2
  %107 = load i8**, i8*** %5, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 2
  %109 = call i32 @do_twrch(i32 %106, i8** %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %113, i32* %3, align 4
  br label %144

114:                                              ; preds = %104
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %144

116:                                              ; preds = %100
  %117 = load i8*, i8** %6, align 8
  %118 = call i64 @eqstr(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load i32, i32* %4, align 4
  %122 = sub nsw i32 %121, 2
  %123 = load i8**, i8*** %5, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 2
  %125 = call i64 @do_impl(i32 %122, i8** %124)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %128, i32* %3, align 4
  br label %144

129:                                              ; preds = %120
  br label %136

130:                                              ; preds = %116
  %131 = load i32, i32* @stderr, align 4
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %132)
  %134 = call i32 (...) @usage()
  %135 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %135, i32* %3, align 4
  br label %144

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137, %99
  br label %139

139:                                              ; preds = %138, %85
  br label %140

140:                                              ; preds = %139, %71
  br label %141

141:                                              ; preds = %140, %57
  br label %142

142:                                              ; preds = %141, %43
  br label %143

143:                                              ; preds = %142, %29
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %130, %127, %114, %112, %97, %83, %69, %55, %41, %27, %10
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @eqstr(i8*, i8*) #1

declare dso_local i64 @do_client(i32, i8**) #1

declare dso_local i64 @do_server(i32, i8**) #1

declare dso_local i64 @do_verify(i32, i8**) #1

declare dso_local i64 @do_skey(i32, i8**) #1

declare dso_local i64 @do_ta(i32, i8**) #1

declare dso_local i64 @do_chain(i32, i8**) #1

declare dso_local i32 @do_twrch(i32, i8**) #1

declare dso_local i64 @do_impl(i32, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
