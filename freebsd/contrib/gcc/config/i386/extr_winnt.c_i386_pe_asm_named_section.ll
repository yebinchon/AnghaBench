; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_winnt.c_i386_pe_asm_named_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_winnt.c_i386_pe_asm_named_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECTION_CODE = common dso_local global i32 0, align 4
@SECTION_WRITE = common dso_local global i32 0, align 4
@SECTION_PE_SHARED = common dso_local global i32 0, align 4
@asm_out_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"\09.section\09%s,\22%s\22\0A\00", align 1
@SECTION_LINKONCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"selectany\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"\09.linkonce %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"same_size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i386_pe_asm_named_section(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  store i8* %10, i8** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SECTION_CODE, align 4
  %13 = load i32, i32* @SECTION_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %8, align 8
  store i8 100, i8* %18, align 1
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %8, align 8
  store i8 114, i8* %20, align 1
  br label %47

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SECTION_CODE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %8, align 8
  store i8 120, i8* %28, align 1
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SECTION_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  store i8 119, i8* %36, align 1
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SECTION_PE_SHARED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  store i8 115, i8* %44, align 1
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i8*, i8** %8, align 8
  store i8 0, i8* %48, align 1
  %49 = load i32, i32* @asm_out_file, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %52 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %50, i8* %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SECTION_LINKONCE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %47
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @SECTION_CODE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @DECL_ATTRIBUTES(i32 %63)
  %65 = call i64 @lookup_attribute(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ true, %57 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @asm_out_file, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %75 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %67, %47
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @DECL_ATTRIBUTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
