; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_c_print_identifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_c_print_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@ridpointers = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"rid %p \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_print_identifier(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @I_SYMBOL_DECL(i64 %9)
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, 4
  %13 = call i32 @print_node(i32* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @I_TAG_DECL(i64 %15)
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 4
  %19 = call i32 @print_node(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @I_LABEL_DECL(i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 4
  %25 = call i32 @print_node(i32* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @C_IS_RESERVED_WORD(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %3
  %30 = load i64*, i64** @ridpointers, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @C_RID_CODE(i64 %31)
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 4
  %38 = call i32 @indent_to(i32* %35, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i64, i64* %7, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load i64, i64* %7, align 8
  %43 = call i8* @IDENTIFIER_POINTER(i64 %42)
  %44 = call i32 @fprintf(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %41, i8* %43)
  br label %45

45:                                               ; preds = %29, %3
  ret void
}

declare dso_local i32 @print_node(i32*, i8*, i32, i32) #1

declare dso_local i32 @I_SYMBOL_DECL(i64) #1

declare dso_local i32 @I_TAG_DECL(i64) #1

declare dso_local i32 @I_LABEL_DECL(i64) #1

declare dso_local i64 @C_IS_RESERVED_WORD(i64) #1

declare dso_local i64 @C_RID_CODE(i64) #1

declare dso_local i32 @indent_to(i32*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i8* @IDENTIFIER_POINTER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
