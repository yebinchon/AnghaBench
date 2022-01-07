; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_print_operand_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_print_operand_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_address_info = type { i32, i32, i32 }

@word_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@reg_names = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_operand_address(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mips_address_info, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @word_mode, align 4
  %8 = call i64 @mips_classify_address(%struct.mips_address_info* %5, i32 %6, i32 %7, i32 1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %52 [
    i32 129, label %13
    i32 130, label %26
    i32 131, label %39
    i32 128, label %48
  ]

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %5, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @print_operand(i32* %14, i32 %16, i8 signext 0)
  %18 = load i32*, i32** %3, align 8
  %19 = load i8**, i8*** @reg_names, align 8
  %20 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @REGNO(i32 %21)
  %23 = getelementptr inbounds i8*, i8** %19, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @fprintf(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %55

26:                                               ; preds = %10
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %5, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @print_operand(i32* %27, i32 %29, i8 signext 82)
  %31 = load i32*, i32** %3, align 8
  %32 = load i8**, i8*** @reg_names, align 8
  %33 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @REGNO(i32 %34)
  %36 = getelementptr inbounds i8*, i8** %32, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @fprintf(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %55

39:                                               ; preds = %10
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @output_addr_const(i32* %40, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i8**, i8*** @reg_names, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @fprintf(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %55

48:                                               ; preds = %10
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @output_addr_const(i32* %49, i32 %50)
  br label %55

52:                                               ; preds = %10
  br label %53

53:                                               ; preds = %52, %2
  %54 = call i32 (...) @gcc_unreachable()
  br label %55

55:                                               ; preds = %53, %48, %39, %26, %13
  ret void
}

declare dso_local i64 @mips_classify_address(%struct.mips_address_info*, i32, i32, i32) #1

declare dso_local i32 @print_operand(i32*, i32, i8 signext) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @output_addr_const(i32*, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
