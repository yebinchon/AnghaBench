; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_machopic_output_function_base_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_machopic_output_function_base_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACHO_DYNAMIC_NO_PIC_P = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@function_base_func_name = common dso_local global i8* null, align 8
@current_pic_label_num = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"\22L%011d$pb\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machopic_output_function_base_name(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @MACHO_DYNAMIC_NO_PIC_P, align 4
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @gcc_assert(i32 %7)
  %9 = load i32, i32* @current_function_decl, align 4
  %10 = call i32 @DECL_ASSEMBLER_NAME(i32 %9)
  %11 = call i8* @IDENTIFIER_POINTER(i32 %10)
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** @function_base_func_name, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @current_pic_label_num, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @current_pic_label_num, align 4
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** @function_base_func_name, align 8
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @current_pic_label_num, align 4
  %22 = call i32 @fprintf(i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21)
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i8* @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
