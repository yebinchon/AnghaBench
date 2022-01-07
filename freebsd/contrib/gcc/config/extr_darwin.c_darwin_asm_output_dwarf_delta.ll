; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_darwin_asm_output_dwarf_delta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_darwin_asm_output_dwarf_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c".quad\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".long\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\09.set L$set$%d,\00", align 1
@darwin_dwarf_label_counter = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"\09%s\09\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"\0A\09%s L$set$%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @darwin_asm_output_dwarf_delta(i32* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 42
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 76
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 42
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 76
  br label %34

34:                                               ; preds = %28, %22, %16, %4
  %35 = phi i1 [ false, %22 ], [ false, %16 ], [ false, %4 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 8
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %40, i8** %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @darwin_dwarf_label_counter, align 4
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %51

47:                                               ; preds = %34
  %48 = load i32*, i32** %5, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32*, i32** %5, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @assemble_name_raw(i32* %52, i8* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32*, i32** %5, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @assemble_name_raw(i32* %57, i8* %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load i32*, i32** %5, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* @darwin_dwarf_label_counter, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @darwin_dwarf_label_counter, align 4
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %64, i32 %65)
  br label %68

68:                                               ; preds = %62, %51
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @assemble_name_raw(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
