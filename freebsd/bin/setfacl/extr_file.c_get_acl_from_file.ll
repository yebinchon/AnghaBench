; ModuleID = '/home/carl/AnghaBench/freebsd/bin/setfacl/extr_file.c_get_acl_from_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/setfacl/extr_file.c_get_acl_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"(null) filename in get_acl_from_file()\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@have_stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot specify more than one stdin\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"fopen() %s failed\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"error reading from %s\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"line too long in %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_acl_from_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @BUFSIZ, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i8*, i8** %2, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* @have_stdin, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32*, i32** @stdin, align 8
  store i32* %26, i32** %3, align 8
  store i32 1, i32* @have_stdin, align 4
  br label %36

27:                                               ; preds = %16
  %28 = load i8*, i8** %2, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %35, %25
  %37 = sub i64 %9, 1
  %38 = trunc i64 %37 to i32
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @fread(i8* %11, i64 1, i32 %38, i32* %39)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds i8, i8* %11, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @ferror(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %49)
  br label %61

51:                                               ; preds = %36
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @feof(i32* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @fclose(i32* %56)
  %58 = load i8*, i8** %2, align 8
  %59 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %55, %51
  br label %61

61:                                               ; preds = %60, %46
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @fclose(i32* %62)
  %64 = call i32 @acl_from_text(i8* %11)
  %65 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %65)
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fread(i8*, i64, i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

declare dso_local i32 @acl_from_text(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
