; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_SVME_Fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_SVME_Fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@codep = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"vmrun\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"vmmcall\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vmload\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vmsave\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"stgi\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"clgi\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"skinit\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"invlpga\00", align 1
@obuf = common dso_local global i8* null, align 8
@prefixes = common dso_local global i32 0, align 4
@PREFIX_ADDR = common dso_local global i32 0, align 4
@used_prefixes = common dso_local global i32 0, align 4
@op_out = common dso_local global i8** null, align 8
@names32 = common dso_local global i8** null, align 8
@two_source_ops = common dso_local global i32 0, align 4
@open_char = common dso_local global i32 0, align 4
@obufp = common dso_local global i8* null, align 8
@address_mode = common dso_local global i32 0, align 4
@mode_64bit = common dso_local global i32 0, align 4
@AFLAG = common dso_local global i32 0, align 4
@names16 = common dso_local global i8** null, align 8
@close_char = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @SVME_Fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SVME_Fixup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** @codep, align 8
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %17 [
    i32 216, label %9
    i32 217, label %10
    i32 218, label %11
    i32 219, label %12
    i32 220, label %13
    i32 221, label %14
    i32 222, label %15
    i32 223, label %16
  ]

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %21

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %21

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %21

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %21

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %21

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %21

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %21

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @OP_M(i32 %18, i32 %19)
  br label %96

21:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9
  %22 = load i8*, i8** @obuf, align 8
  %23 = load i8*, i8** @obuf, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = getelementptr inbounds i8, i8* %26, i64 -4
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 105
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 -1
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %32, %21
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strcpy(i8* %36, i8* %37)
  %39 = load i32, i32* @prefixes, align 4
  %40 = load i32, i32* @PREFIX_ADDR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32*, i32** @codep, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** @codep, align 8
  br label %96

46:                                               ; preds = %35
  %47 = load i32, i32* @PREFIX_ADDR, align 4
  %48 = load i32, i32* @used_prefixes, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @used_prefixes, align 4
  %50 = load i32*, i32** @codep, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** @codep, align 8
  %52 = load i32, i32* %50, align 4
  switch i32 %52, label %96 [
    i32 223, label %53
    i32 216, label %61
    i32 218, label %61
    i32 219, label %61
  ]

53:                                               ; preds = %46
  %54 = load i8**, i8*** @op_out, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i8**, i8*** @names32, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcpy(i8* %56, i8* %59)
  store i32 1, i32* @two_source_ops, align 4
  br label %61

61:                                               ; preds = %46, %46, %46, %53
  %62 = load i32, i32* @open_char, align 4
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** @obufp, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** @obufp, align 8
  store i8 %63, i8* %64, align 1
  %66 = load i32, i32* @address_mode, align 4
  %67 = load i32, i32* @mode_64bit, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @AFLAG, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69, %61
  %75 = load i8**, i8*** @names32, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %5, align 8
  br label %82

78:                                               ; preds = %69
  %79 = load i8**, i8*** @names16, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %5, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i8*, i8** @obufp, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @strcpy(i8* %83, i8* %84)
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = load i8*, i8** @obufp, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** @obufp, align 8
  %91 = load i32, i32* @close_char, align 4
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** @obufp, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** @obufp, align 8
  store i8 %92, i8* %93, align 1
  %95 = load i8*, i8** @obufp, align 8
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %17, %43, %46, %82
  ret void
}

declare dso_local i32 @OP_M(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
