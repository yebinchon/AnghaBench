; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-tdep.c_nto_find_and_open_solib.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-tdep.c_nto_find_and_open_solib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"%s/lib:%s/usr/lib:%s/usr/photon/lib:%s/usr/photon/dll:%s/lib/dll\00", align 1
@TARGET_ARCHITECTURE = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"rs6000\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"powerpc\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ppc\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%s/%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nto_find_and_open_solib(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %18 = call i8* (...) @nto_target()
  store i8* %18, i8** %10, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TARGET_ARCHITECTURE, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %48

25:                                               ; preds = %3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TARGET_ARCHITECTURE, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TARGET_ARCHITECTURE, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %25
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %47

38:                                               ; preds = %31
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TARGET_ARCHITECTURE, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %12, align 8
  %42 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %43 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  store i8* %46, i8** %11, align 8
  br label %47

47:                                               ; preds = %38, %37
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 (i8*, i8*, i8*, i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %49, i8* %50, i8* %51)
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call i32 @strlen(i8* %17)
  %56 = mul nsw i32 %55, 5
  %57 = add nsw i32 %54, %56
  %58 = add nsw i32 %57, 1
  %59 = call i8* @alloca(i32 %58)
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 (i8*, i8*, i8*, i8*, i8*, ...) @sprintf(i8* %60, i8* %61, i8* %17, i8* %17, i8* %17, i8* %17, i8* %17)
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i8**, i8*** %6, align 8
  %67 = call i32 @openp(i8* %63, i32 1, i8* %64, i32 %65, i32 0, i8** %66)
  %68 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %68)
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @nto_target(...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, ...) #2

declare dso_local i8* @alloca(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @openp(i8*, i32, i8*, i32, i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
