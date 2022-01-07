; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_kallsyms.c_read_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_kallsyms.c_read_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_entry = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%llx %c %499s\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@symbol_prefix_char = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"_text\00", align 1
@_text = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"__kernel_syscall_via_break\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"__kernel_syscall_via_epc\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"__kernel_sigtramp\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"__gp\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [64 x i8] c"kallsyms failure: unable to allocate required amount of memory\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sym_entry*)* @read_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_symbol(i32* %0, %struct.sym_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sym_entry*, align 8
  %6 = alloca [500 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.sym_entry* %1, %struct.sym_entry** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %12 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %11, i32 0, i32 2
  %13 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %14 = call i32 @fscanf(i32* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %12, i8* %8, i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @EOF, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @fgets(i8* %22, i32 500, i32* %23)
  br label %25

25:                                               ; preds = %21, %17
  store i32 -1, i32* %3, align 4
  br label %140

26:                                               ; preds = %2
  %27 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  store i8* %27, i8** %7, align 8
  %28 = load i8, i8* @symbol_prefix_char, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %33 = load i8, i8* %32, align 16
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @symbol_prefix_char, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  br label %41

41:                                               ; preds = %38, %31, %26
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %47 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* @_text, align 4
  br label %106

49:                                               ; preds = %41
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %52 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @read_symbol_tr(i8* %50, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %105

57:                                               ; preds = %49
  %58 = load i8, i8* %8, align 1
  %59 = call zeroext i8 @toupper(i8 signext %58)
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 65
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = load i8*, i8** %7, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i8*, i8** %7, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 -1, i32* %3, align 4
  br label %140

79:                                               ; preds = %74, %70, %66, %62
  br label %104

80:                                               ; preds = %57
  %81 = load i8, i8* %8, align 1
  %82 = call zeroext i8 @toupper(i8 signext %81)
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 85
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** %7, align 8
  %87 = call i64 @is_arm_mapping_symbol(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %80
  store i32 -1, i32* %3, align 4
  br label %140

90:                                               ; preds = %85
  %91 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %92 = load i8, i8* %91, align 16
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 36
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 -1, i32* %3, align 4
  br label %140

96:                                               ; preds = %90
  %97 = load i8, i8* %8, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 78
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 -1, i32* %3, align 4
  br label %140

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %79
  br label %105

105:                                              ; preds = %104, %56
  br label %106

106:                                              ; preds = %105, %45
  %107 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %108 = call i64 @strlen(i8* %107)
  %109 = add nsw i64 %108, 1
  %110 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %111 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %113 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  %116 = call i8* @malloc(i64 %115)
  %117 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %118 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %120 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %106
  %124 = load i32, i32* @stderr, align 4
  %125 = call i32 @fprintf(i32 %124, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0))
  %126 = load i32, i32* @EXIT_FAILURE, align 4
  %127 = call i32 @exit(i32 %126) #3
  unreachable

128:                                              ; preds = %106
  %129 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %130 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %134 = call i32 @strcpy(i8* %132, i8* %133)
  %135 = load i8, i8* %8, align 1
  %136 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %137 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  store i8 %135, i8* %139, align 1
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %128, %100, %95, %89, %78, %25
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @fscanf(i32*, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @read_symbol_tr(i8*, i32) #1

declare dso_local zeroext i8 @toupper(i8 signext) #1

declare dso_local i64 @is_arm_mapping_symbol(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
