; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_Var_Value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_Var_Value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FIND_ENV = common dso_local global i32 0, align 4
@FIND_GLOBAL = common dso_local global i32 0, align 4
@FIND_CMD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Var_Value(i8* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @FIND_ENV, align 4
  %13 = load i32, i32* @FIND_GLOBAL, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FIND_CMD, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.TYPE_4__* @VarFind(i8* %10, i32* %11, i32 %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load i8**, i8*** %7, align 8
  store i8* null, i8** %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i8* @Buf_GetAll(i32* %23, i32* null)
  store i8* %24, i8** %9, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i64 @VarFreeEnv(%struct.TYPE_4__* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i8*, i8** %9, align 8
  %31 = load i8**, i8*** %7, align 8
  store i8* %30, i8** %31, align 8
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i8*, i8** %9, align 8
  store i8* %33, i8** %4, align 8
  br label %35

34:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %35

35:                                               ; preds = %34, %32
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

declare dso_local %struct.TYPE_4__* @VarFind(i8*, i32*, i32) #1

declare dso_local i8* @Buf_GetAll(i32*, i32*) #1

declare dso_local i64 @VarFreeEnv(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
