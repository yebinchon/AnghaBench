; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_PrintOnError.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_PrintOnError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@PrintOnError.en = internal global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\0A%s: stopped in %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@curdir = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c".ERROR_TARGET\00", align 1
@VAR_GLOBAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c".ERROR_CMD\00", align 1
@addErrorCMD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"${MAKE_PRINT_VAR_ON_ERROR:@v@$v='${$v}'\0A@}\00", align 1
@VARF_WANTRES = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c".ERROR\00", align 1
@TARG_NOCREATE = common dso_local global i32 0, align 4
@OP_SPECIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintOnError(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i8*, i8** @progname, align 8
  %14 = load i8*, i8** @curdir, align 8
  %15 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %13, i8* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PrintOnError.en, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %71

19:                                               ; preds = %12
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @VAR_GLOBAL, align 4
  %27 = call i32 @Var_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %26, i32 0)
  %28 = load i32, i32* @VAR_GLOBAL, align 4
  %29 = call i32 @Var_Delete(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @addErrorCMD, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = call i32 @Lst_ForEach(i32 %32, i32 %33, %struct.TYPE_7__* %34)
  br label %36

36:                                               ; preds = %22, %19
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %38 = call i32 @strncpy(i8* %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 63)
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %40 = load i32, i32* @VAR_GLOBAL, align 4
  %41 = load i32, i32* @VARF_WANTRES, align 4
  %42 = call i8* @Var_Subst(i32* null, i8* %39, i32 %40, i32 %41)
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %52, %36
  %56 = load i32, i32* @stdout, align 4
  %57 = call i32 @fflush(i32 %56)
  %58 = load i32, i32* @TARG_NOCREATE, align 4
  %59 = call %struct.TYPE_7__* @Targ_FindNode(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** @PrintOnError.en, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PrintOnError.en, align 8
  %61 = icmp ne %struct.TYPE_7__* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load i32, i32* @OP_SPECIAL, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PrintOnError.en, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PrintOnError.en, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PrintOnError.en, align 8
  %70 = call i32 @Compat_Make(%struct.TYPE_7__* %68, %struct.TYPE_7__* %69)
  br label %71

71:                                               ; preds = %18, %62, %55
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @Var_Set(i8*, i32, i32, i32) #1

declare dso_local i32 @Var_Delete(i8*, i32) #1

declare dso_local i32 @Lst_ForEach(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @Var_Subst(i32*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local %struct.TYPE_7__* @Targ_FindNode(i8*, i32) #1

declare dso_local i32 @Compat_Make(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
