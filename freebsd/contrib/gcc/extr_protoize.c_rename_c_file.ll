; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_rename_c_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_rename_c_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@cplus_suffix = common dso_local global i8* null, align 8
@syscalls_absolute_filename = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: warning: can't rename file '%s' to '%s': %s\0A\00", align 1
@pname = common dso_local global i32 0, align 4
@errors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @rename_c_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rename_c_file(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = load i8*, i8** @cplus_suffix, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = add nsw i32 %14, %16
  %18 = add nsw i32 %17, 1
  %19 = call i8* @alloca(i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 99
  br i1 %26, label %41, label %27

27:                                               ; preds = %1
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 46
  br i1 %35, label %41, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @syscalls_absolute_filename, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @IS_SAME_PATH(i32 %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %27, %1
  br label %68

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @strcpy(i8* %43, i8* %44)
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8*, i8** @cplus_suffix, align 8
  %51 = call i32 @strcpy(i8* %49, i8* %50)
  %52 = load i8*, i8** %3, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @rename(i8* %52, i8* %53)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %68

56:                                               ; preds = %42
  %57 = load i32, i32* @errno, align 4
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @pname, align 4
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @shortpath(i32* null, i8* %59)
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @shortpath(i32* null, i8* %61)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @xstrerror(i32 %63)
  %65 = call i32 @notice(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %60, i32 %62, i32 %64)
  %66 = load i32, i32* @errors, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @errors, align 4
  br label %68

68:                                               ; preds = %41, %56, %42
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i64 @IS_SAME_PATH(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @notice(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @shortpath(i32*, i8*) #1

declare dso_local i32 @xstrerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
