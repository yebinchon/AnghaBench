; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_VarSYSVMatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_VarSYSVMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@VARF_WANTRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_4__*, i8*, i64, i32*, i8*)* @VarSYSVMatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @VarSYSVMatch(i32* %0, %struct.TYPE_4__* %1, i8* %2, i64 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %15, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %6
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @Buf_AddByte(i32* %27, i64 %30)
  br label %32

32:                                               ; preds = %26, %21, %6
  %33 = load i64, i64* @TRUE, align 8
  store i64 %33, i64* %10, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @Str_SYSVMatch(i8* %34, i32 %37, i32* %13)
  store i8* %38, i8** %14, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @VARF_WANTRES, align 4
  %46 = call i8* @Var_Subst(i32* null, i32 %43, i32* %44, i32 %45)
  store i8* %46, i8** %16, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @Str_SYSVSubst(i32* %47, i8* %48, i8* %49, i32 %50)
  %52 = load i8*, i8** %16, align 8
  %53 = call i32 @free(i8* %52)
  br label %60

54:                                               ; preds = %32
  %55 = load i32*, i32** %11, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @Buf_AddBytes(i32* %55, i32 %57, i8* %58)
  br label %60

60:                                               ; preds = %54, %40
  %61 = load i64, i64* %10, align 8
  ret i64 %61
}

declare dso_local i32 @Buf_AddByte(i32*, i64) #1

declare dso_local i8* @Str_SYSVMatch(i8*, i32, i32*) #1

declare dso_local i8* @Var_Subst(i32*, i32, i32*, i32) #1

declare dso_local i32 @Str_SYSVSubst(i32*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @Buf_AddBytes(i32*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
