; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_subevalvar_misc.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_subevalvar_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodelist = type { i32 }

@EXP_TILDE = common dso_local global i32 0, align 4
@expdest = common dso_local global i32 0, align 4
@CTLENDVAR = common dso_local global i8 0, align 1
@out2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%.*s: parameter %snot set\00", align 1
@VSNUL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"null or \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.nodelist**, i8*, i32, i32, i32)* @subevalvar_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @subevalvar_misc(i8* %0, %struct.nodelist** noalias %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nodelist**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.nodelist** %1, %struct.nodelist*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.nodelist**, %struct.nodelist*** %8, align 8
  %18 = load i32, i32* @EXP_TILDE, align 4
  %19 = call i8* @argstr(i8* %16, %struct.nodelist** %17, i32 %18, i32* null)
  store i8* %19, i8** %13, align 8
  %20 = load i32, i32* @expdest, align 4
  %21 = call i32 @STACKSTRNUL(i32 %20)
  %22 = call i8* (...) @stackblock()
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %14, align 8
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %69 [
    i32 129, label %27
    i32 128, label %41
  ]

27:                                               ; preds = %6
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = call i32 @setvar(i8* %28, i8* %29, i32 0)
  %31 = load i8*, i8** %14, align 8
  %32 = load i32, i32* @expdest, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 0, %33
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @expdest, align 4
  %39 = call i32 @STADJUST(i32 %37, i32 %38)
  %40 = load i8*, i8** %13, align 8
  ret i8* %40

41:                                               ; preds = %6
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* @CTLENDVAR, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* @out2, align 4
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @outfmt(i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = call i32 (i8*, ...) @error(i8* null)
  br label %53

53:                                               ; preds = %48, %41
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sub nsw i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @VSNUL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %68 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %60, i8* %61, i8* %67)
  br label %69

69:                                               ; preds = %6, %53
  %70 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i8* @argstr(i8*, %struct.nodelist**, i32, i32*) #1

declare dso_local i32 @STACKSTRNUL(i32) #1

declare dso_local i8* @stackblock(...) #1

declare dso_local i32 @setvar(i8*, i8*, i32) #1

declare dso_local i32 @STADJUST(i32, i32) #1

declare dso_local i32 @outfmt(i32, i8*, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
