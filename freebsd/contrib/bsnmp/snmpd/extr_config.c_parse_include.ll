; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_include.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@TOK_STR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [37 x i8] c"expecting filename after in .include\00", align 1
@token = common dso_local global i8 0, align 1
@strval = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"expecting '>'\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @parse_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_include() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %2, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %3, align 8
  %8 = call signext i8 (...) @gettoken()
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 60
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  %12 = call signext i8 (...) @gettoken()
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* @TOK_STR, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %11
  br label %29

20:                                               ; preds = %0
  %21 = load i8, i8* @token, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @TOK_STR, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i32, i32* @strval, align 4
  %31 = call i32 @strcpy(i8* %7, i32 %30)
  %32 = load i32, i32* %1, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = call signext i8 (...) @gettoken()
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 62
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34, %29
  %41 = call signext i8 (...) @gettoken()
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @input_open_file(i8* %7, i32 %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %7)
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %48)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local signext i8 @gettoken(...) #2

declare dso_local i32 @report(i8*, ...) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @input_open_file(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
