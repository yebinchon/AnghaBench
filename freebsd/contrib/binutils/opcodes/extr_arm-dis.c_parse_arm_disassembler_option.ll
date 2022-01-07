; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arm-dis.c_parse_arm_disassembler_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arm-dis.c_parse_arm_disassembler_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"reg-names-\00", align 1
@NUM_ARM_REGNAMES = common dso_local global i32 0, align 4
@regnames = common dso_local global %struct.TYPE_2__* null, align 8
@regname_selected = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unrecognised register name set: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"force-thumb\00", align 1
@force_thumb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"no-force-thumb\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Unrecognised disassembler option: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_arm_disassembler_option(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %66

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @CONST_STRNEQ(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 10
  store i8* %13, i8** %2, align 8
  %14 = load i32, i32* @NUM_ARM_REGNAMES, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %38, %11
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %3, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i8*, i8** %2, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regnames, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regnames, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strlen(i32 %32)
  %34 = call i64 @strneq(i8* %20, i32 %26, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = load i32, i32* %3, align 4
  store i32 %37, i32* @regname_selected, align 4
  br label %39

38:                                               ; preds = %19
  br label %15

39:                                               ; preds = %36, %15
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @stderr, align 4
  %44 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @fprintf(i32 %43, i8* %44, i8* %45)
  br label %47

47:                                               ; preds = %42, %39
  br label %65

48:                                               ; preds = %7
  %49 = load i8*, i8** %2, align 8
  %50 = call i64 @CONST_STRNEQ(i8* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* @force_thumb, align 4
  br label %64

53:                                               ; preds = %48
  %54 = load i8*, i8** %2, align 8
  %55 = call i64 @CONST_STRNEQ(i8* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* @force_thumb, align 4
  br label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @stderr, align 4
  %60 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @fprintf(i32 %59, i8* %60, i8* %61)
  br label %63

63:                                               ; preds = %58, %57
  br label %64

64:                                               ; preds = %63, %52
  br label %65

65:                                               ; preds = %64, %47
  br label %66

66:                                               ; preds = %65, %6
  ret void
}

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i64 @strneq(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
