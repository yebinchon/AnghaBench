; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-tdep.c_nto_init_solib_absolute_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-tdep.c_nto_init_solib_absolute_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@TARGET_ARCHITECTURE = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"rs6000\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"powerpc\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ppc\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s/%s%s\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"set solib-absolute-prefix %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nto_init_solib_absolute_prefix() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = load i32, i32* @PATH_MAX, align 4
  %8 = mul nsw i32 %7, 2
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %15 = call i8* (...) @nto_target()
  store i8* %15, i8** %4, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TARGET_ARCHITECTURE, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %45

22:                                               ; preds = %0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TARGET_ARCHITECTURE, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TARGET_ARCHITECTURE, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %44

35:                                               ; preds = %28
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TARGET_ARCHITECTURE, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %6, align 8
  %39 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %40 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  store i8* %43, i8** %5, align 8
  br label %44

44:                                               ; preds = %35, %34
  br label %45

45:                                               ; preds = %44, %21
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %46, i8* %47, i8* %48)
  %50 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %14)
  %51 = call i32 @execute_command(i8* %11, i32 0)
  %52 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %52)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @nto_target(...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i32 @execute_command(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
