; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_mk_elfconfig.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_mk_elfconfig.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i16 }

@EI_NIDENT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Error: no arch\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Error: input truncated\0A\00", align 1
@ELFMAG = common dso_local global i8* null, align 8
@SELFMAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Error: not ELF\0A\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"#define KERNEL_ELFCLASS ELFCLASS32\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"#define KERNEL_ELFCLASS ELFCLASS64\0A\00", align 1
@EI_DATA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"#define KERNEL_ELFDATA ELFDATA2LSB\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"#define KERNEL_ELFDATA ELFDATA2MSB\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"#define HOST_ELFCLASS ELFCLASS64\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\01\02\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"#define HOST_ELFDATA ELFDATA2MSB\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\02\01\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"#define HOST_ELFDATA ELFDATA2LSB\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"h8300\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"blackfin\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"#define MODULE_SYMBOL_PREFIX \22_\22\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"#define MODULE_SYMBOL_PREFIX \22\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.anon, align 2
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @EI_NIDENT, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @EI_NIDENT, align 4
  %21 = load i32, i32* @stdin, align 4
  %22 = call i32 @fread(i8* %13, i32 1, i32 %20, i32 %21)
  %23 = load i32, i32* @EI_NIDENT, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %94

28:                                               ; preds = %19
  %29 = load i8*, i8** @ELFMAG, align 8
  %30 = load i32, i32* @SELFMAG, align 4
  %31 = call i64 @memcmp(i8* %13, i8* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %94

36:                                               ; preds = %28
  %37 = load i64, i64* @EI_CLASS, align 8
  %38 = getelementptr inbounds i8, i8* %13, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  switch i32 %40, label %45 [
    i32 131, label %41
    i32 130, label %43
  ]

41:                                               ; preds = %36
  %42 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %47

43:                                               ; preds = %36
  %44 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %47

45:                                               ; preds = %36
  %46 = call i32 @exit(i32 1) #4
  unreachable

47:                                               ; preds = %43, %41
  %48 = load i64, i64* @EI_DATA, align 8
  %49 = getelementptr inbounds i8, i8* %13, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  switch i32 %51, label %56 [
    i32 129, label %52
    i32 128, label %54
  ]

52:                                               ; preds = %47
  %53 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %58

54:                                               ; preds = %47
  %55 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %58

56:                                               ; preds = %47
  %57 = call i32 @exit(i32 1) #4
  unreachable

58:                                               ; preds = %54, %52
  %59 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %60 = bitcast %union.anon* %8 to i16*
  store i16 258, i16* %60, align 2
  %61 = bitcast %union.anon* %8 to [2 x i8]*
  %62 = getelementptr inbounds [2 x i8], [2 x i8]* %61, i64 0, i64 0
  %63 = call i64 @memcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %77

67:                                               ; preds = %58
  %68 = bitcast %union.anon* %8 to [2 x i8]*
  %69 = getelementptr inbounds [2 x i8], [2 x i8]* %68, i64 0, i64 0
  %70 = call i64 @memcmp(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 2)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  br label %76

74:                                               ; preds = %67
  %75 = call i32 @exit(i32 1) #4
  unreachable

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %65
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83, %77
  %90 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %93

91:                                               ; preds = %83
  %92 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %89
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %94

94:                                               ; preds = %93, %33, %25
  %95 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @fread(i8*, i32, i32, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
