; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_genecs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_genecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"yy_ec\00", align 1
@csize = common dso_local global i32 0, align 4
@ecgroup = common dso_local global i32* null, align 8
@trace = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"\0A\0AEquivalence Classes:\0A\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"%4s = %-2d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @genecs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @get_int32_decl()
  %5 = load i32, i32* @csize, align 4
  %6 = call i32 @out_str_dec(i32 %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %5)
  store i32 1, i32* %1, align 4
  br label %7

7:                                                ; preds = %28, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @csize, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load i32*, i32** @ecgroup, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ABS(i32 %16)
  %18 = load i32*, i32** @ecgroup, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  %22 = load i32*, i32** @ecgroup, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mkdata(i32 %26)
  br label %28

28:                                               ; preds = %11
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %7

31:                                               ; preds = %7
  %32 = call i32 (...) @dataend()
  %33 = load i64, i64* @trace, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %31
  %36 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fputs(i32 %36, i32 %37)
  %39 = load i32, i32* @csize, align 4
  %40 = sdiv i32 %39, 8
  store i32 %40, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %70, %35
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %63, %45
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @csize, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* %1, align 4
  %54 = call i8* @readable_form(i32 %53)
  %55 = load i32*, i32** @ecgroup, align 8
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %59)
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 @putc(i8 signext 32, i32 %61)
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %1, align 4
  br label %47

67:                                               ; preds = %47
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 @putc(i8 signext 10, i32 %68)
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %2, align 4
  br label %41

73:                                               ; preds = %41
  br label %74

74:                                               ; preds = %73, %31
  ret void
}

declare dso_local i32 @out_str_dec(i32, i8*, i32) #1

declare dso_local i32 @get_int32_decl(...) #1

declare dso_local i32 @ABS(i32) #1

declare dso_local i32 @mkdata(i32) #1

declare dso_local i32 @dataend(...) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i8* @readable_form(i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
