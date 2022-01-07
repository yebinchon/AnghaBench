; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_Main_SetVarObjdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_Main_SetVarObjdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAR_CMD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VAR_GLOBAL = common dso_local global i32 0, align 4
@VARF_WANTRES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @Main_SetVarObjdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Main_SetVarObjdir(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @VAR_CMD, align 4
  %11 = call i8* @Var_Value(i8* %9, i32 %10, i8** %6)
  store i8* %11, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %13
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @strchr(i8* %21, i8 signext 36)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @VAR_GLOBAL, align 4
  %27 = load i32, i32* @VARF_WANTRES, align 4
  %28 = call i8* @Var_Subst(i32* null, i8* %25, i32 %26, i32 %27)
  store i8* %28, i8** %8, align 8
  br label %31

29:                                               ; preds = %20
  %30 = load i8*, i8** %7, align 8
  store i8* %30, i8** %8, align 8
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @Main_SetObjdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @free(i8* %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %18
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i8* @Var_Value(i8*, i32, i8**) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @Var_Subst(i32*, i8*, i32, i32) #1

declare dso_local i32 @Main_SetObjdir(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
