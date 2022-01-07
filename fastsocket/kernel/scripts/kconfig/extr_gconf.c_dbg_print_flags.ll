; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_dbg_print_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_dbg_print_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dbg_print_flags.buf = internal global [256 x i8] zeroinitializer, align 16
@SYMBOL_CONST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"const/\00", align 1
@SYMBOL_CHECK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"check/\00", align 1
@SYMBOL_CHOICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"choice/\00", align 1
@SYMBOL_CHOICEVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"choiceval/\00", align 1
@SYMBOL_VALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"valid/\00", align 1
@SYMBOL_OPTIONAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"optional/\00", align 1
@SYMBOL_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"write/\00", align 1
@SYMBOL_CHANGED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"changed/\00", align 1
@SYMBOL_AUTO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"auto/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dbg_print_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @bzero(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_flags.buf, i64 0, i64 0), i32 256)
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @SYMBOL_CONST, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_flags.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @SYMBOL_CHECK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_flags.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @SYMBOL_CHOICE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_flags.buf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @SYMBOL_CHOICEVAL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_flags.buf, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @SYMBOL_VALID, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_flags.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @SYMBOL_OPTIONAL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_flags.buf, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @SYMBOL_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_flags.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @SYMBOL_CHANGED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_flags.buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @SYMBOL_AUTO, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_flags.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  %67 = call i32 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_flags.buf, i64 0, i64 0))
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* @dbg_print_flags.buf, i64 0, i64 %69
  store i8 0, i8* %70, align 1
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_flags.buf, i64 0, i64 0)
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
