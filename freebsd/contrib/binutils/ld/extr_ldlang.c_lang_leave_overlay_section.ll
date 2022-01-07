; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_leave_overlay_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_leave_overlay_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@current_section = common dso_local global %struct.TYPE_2__* null, align 8
@DEFAULT_MEMORY_REGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"__load_start_%s\00", align 1
@LOADADDR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"__load_stop_%s\00", align 1
@SIZEOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_leave_overlay_section(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_section, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @DEFAULT_MEMORY_REGION, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @lang_leave_output_section_statement(i32* %13, i32 %14, i32* %15, i32 0)
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = add nsw i32 %18, 1
  %20 = call i8* @xmalloc(i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %44, %2
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @ISALNUM(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 95
  br i1 %37, label %38, label %43

38:                                               ; preds = %33, %28
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %7, align 8
  store i8 %40, i8* %41, align 1
  br label %43

43:                                               ; preds = %38, %33
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  br label %23

47:                                               ; preds = %23
  %48 = load i8*, i8** %7, align 8
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 14
  %53 = trunc i64 %52 to i32
  %54 = call i8* @xmalloc(i32 %53)
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* @LOADADDR, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @exp_nameop(i32 %59, i8* %60)
  %62 = load i32, i32* @FALSE, align 4
  %63 = call i32 @exp_provide(i8* %58, i32 %61, i32 %62)
  %64 = call i32 @lang_add_assignment(i32 %63)
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, 13
  %69 = trunc i64 %68 to i32
  %70 = call i8* @xmalloc(i32 %69)
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* @LOADADDR, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @exp_nameop(i32 %75, i8* %76)
  %78 = load i32, i32* @SIZEOF, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @exp_nameop(i32 %78, i8* %79)
  %81 = call i32 @exp_binop(i8 signext 43, i32 %77, i32 %80)
  %82 = load i32, i32* @FALSE, align 4
  %83 = call i32 @exp_provide(i8* %74, i32 %81, i32 %82)
  %84 = call i32 @lang_add_assignment(i32 %83)
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @free(i8* %85)
  ret void
}

declare dso_local i32 @lang_leave_output_section_statement(i32*, i32, i32*, i32) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ISALNUM(i8 signext) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @lang_add_assignment(i32) #1

declare dso_local i32 @exp_provide(i8*, i32, i32) #1

declare dso_local i32 @exp_nameop(i32, i8*) #1

declare dso_local i32 @exp_binop(i8 signext, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
