; ModuleID = '/home/carl/AnghaBench/freebsd/bin/setfacl/extr_setfacl.c_stdin_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/setfacl/extr_setfacl.c_stdin_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@have_stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cannot have more than one stdin\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"strdup() failed\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Too many input files\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** ()* @stdin_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @stdin_files() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @PATH_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i32, i32* @have_stdin, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  store i64 0, i64* %5, align 8
  store i32 1, i32* @have_stdin, align 4
  %15 = bitcast i8* %9 to i8**
  %16 = trunc i64 %7 to i32
  %17 = call i32 @bzero(i8** %15, i32 %16)
  store i64 1024, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = mul i64 %18, 8
  %20 = call i8** @zmalloc(i64 %19)
  store i8** %20, i8*** %1, align 8
  br label %21

21:                                               ; preds = %62, %14
  %22 = trunc i64 %7 to i32
  %23 = load i32, i32* @stdin, align 4
  %24 = call i64 @fgets(i8* %9, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %21
  %27 = call i32 @strlen(i8* %9)
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %9, i64 %29
  store i8 0, i8* %30, align 1
  %31 = call i8* @strdup(i8* %9)
  %32 = load i8**, i8*** %1, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  store i8* %31, i8** %34, align 8
  %35 = load i8**, i8*** %1, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %26
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load i64, i64* %4, align 8
  %49 = shl i64 %48, 1
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i32, i32* @SIZE_MAX, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 8
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %47
  %58 = load i8**, i8*** %1, align 8
  %59 = load i64, i64* %4, align 8
  %60 = mul i64 %59, 8
  %61 = call i8** @zrealloc(i8** %58, i64 %60)
  store i8** %61, i8*** %1, align 8
  br label %62

62:                                               ; preds = %57, %42
  br label %21

63:                                               ; preds = %21
  %64 = load i8**, i8*** %1, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  store i8* null, i8** %66, align 8
  %67 = load i8**, i8*** %1, align 8
  %68 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %68)
  ret i8** %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @bzero(i8**, i32) #2

declare dso_local i8** @zmalloc(i64) #2

declare dso_local i64 @fgets(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i8** @zrealloc(i8**, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
