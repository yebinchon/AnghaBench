; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_set_environment_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_set_environment_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"environment variable and value\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"environment variable to set\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Setting environment variable \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\22%s\22 to null value.\0A\00", align 1
@inferior_environ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @set_environment_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_environment_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @error_no_arg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strchr(i8* %14, i8 signext 61)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strchr(i8* %17, i8 signext 32)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %13
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ugt i8* %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %35, %29
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  br label %30

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ugt i8* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %43, %39
  br label %56

47:                                               ; preds = %22, %13
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i8*, i8** %5, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i8*, i8** %6, align 8
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %53, %50, %47
  br label %56

56:                                               ; preds = %55, %46
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @error_no_arg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i8*, i8** %5, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65, %62
  store i32 1, i32* %8, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i8*, i8** %3, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8* %79, i8** %5, align 8
  br label %80

80:                                               ; preds = %74, %71
  br label %100

81:                                               ; preds = %65
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %83, i8** %6, align 8
  br label %84

84:                                               ; preds = %96, %81
  %85 = load i8*, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 32
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 9
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi i1 [ true, %84 ], [ %93, %89 ]
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %6, align 8
  br label %84

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %80
  br label %101

101:                                              ; preds = %121, %100
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** %3, align 8
  %104 = icmp ne i8* %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %101
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 -1
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 32
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 -1
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 9
  br label %117

117:                                              ; preds = %111, %105
  %118 = phi i1 [ true, %105 ], [ %116, %111 ]
  br label %119

119:                                              ; preds = %117, %101
  %120 = phi i1 [ false, %101 ], [ %118, %117 ]
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 -1
  store i8* %123, i8** %5, align 8
  br label %101

124:                                              ; preds = %119
  %125 = load i8*, i8** %3, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = load i8*, i8** %3, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  %132 = call i8* @savestring(i8* %125, i32 %131)
  store i8* %132, i8** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %124
  %136 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %137)
  %139 = load i32, i32* @inferior_environ, align 4
  %140 = load i8*, i8** %7, align 8
  %141 = call i32 @set_in_environ(i32 %139, i8* %140, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %147

142:                                              ; preds = %124
  %143 = load i32, i32* @inferior_environ, align 4
  %144 = load i8*, i8** %7, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 @set_in_environ(i32 %143, i8* %144, i8* %145)
  br label %147

147:                                              ; preds = %142, %135
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 @xfree(i8* %148)
  ret void
}

declare dso_local i32 @error_no_arg(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @set_in_environ(i32, i8*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
