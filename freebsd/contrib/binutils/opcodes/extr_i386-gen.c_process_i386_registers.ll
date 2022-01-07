; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-gen.c_process_i386_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-gen.c_process_i386_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"i386-reg.tbl\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"can't find i386-reg.tbl for reading\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\0A/* i386 register table.  */\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"const reg_entry i386_regtab[] =\0A{\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"  { \22%s\22, %s, %s, %s },\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"\0Aconst unsigned int i386_regtab_size = ARRAY_SIZE (i386_regtab);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @process_i386_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_i386_registers() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [2048 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @fail(i32 %14)
  br label %16

16:                                               ; preds = %13, %0
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %19

19:                                               ; preds = %81, %50, %16
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @feof(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %89

24:                                               ; preds = %19
  %25 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %26 = load i32*, i32** %1, align 8
  %27 = call i32* @fgets(i8* %25, i32 2048, i32* %26)
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %89

30:                                               ; preds = %24
  %31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %32 = call i8* @remove_leading_whitespaces(i8* %31)
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @strstr(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @remove_trailing_whitespaces(i8* %41)
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  switch i32 %46, label %51 [
    i32 35, label %47
    i32 0, label %50
  ]

47:                                               ; preds = %40
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %40, %47
  br label %19

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8* %57, i8** %5, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i8* @next_field(i8* %58, i8** %3)
  store i8* %59, i8** %6, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = icmp uge i8* %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = call i32 (...) @abort() #3
  unreachable

65:                                               ; preds = %52
  %66 = load i8*, i8** %3, align 8
  %67 = call i8* @next_field(i8* %66, i8** %3)
  store i8* %67, i8** %7, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = icmp uge i8* %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 (...) @abort() #3
  unreachable

73:                                               ; preds = %65
  %74 = load i8*, i8** %3, align 8
  %75 = call i8* @next_field(i8* %74, i8** %3)
  store i8* %75, i8** %8, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = icmp uge i8* %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = call i32 (...) @abort() #3
  unreachable

81:                                               ; preds = %73
  %82 = load i8*, i8** %3, align 8
  %83 = call i8* @next_field(i8* %82, i8** %3)
  store i8* %83, i8** %9, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %84, i8* %85, i8* %86, i8* %87)
  br label %19

89:                                               ; preds = %29, %19
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fail(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @remove_leading_whitespaces(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @remove_trailing_whitespaces(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @next_field(i8*, i8**) #1

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
