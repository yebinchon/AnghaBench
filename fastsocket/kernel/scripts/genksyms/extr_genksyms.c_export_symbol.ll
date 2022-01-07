; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_export_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_export_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i64, %struct.symbol*, i32, i32 }

@SYM_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"export undefined symbol %s\00", align 1
@flag_dump_defs = common dso_local global i64 0, align 8
@debugfile = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Export %s == <\00", align 1
@expansion_trail = common dso_local global %struct.symbol* null, align 8
@STATUS_UNCHANGED = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"%s: %s: modversion changed because of changes in \00", align 1
@flag_preserve = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@STATUS_DEFINED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c" (became defined)\00", align 1
@errors = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"%s__crc_%s = 0x%08lx ;\0A\00", align 1
@mod_prefix = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @export_symbol(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @SYM_NORMAL, align 4
  %9 = call %struct.symbol* @find_symbol(i8* %7, i32 %8)
  store %struct.symbol* %9, %struct.symbol** %3, align 8
  %10 = load %struct.symbol*, %struct.symbol** %3, align 8
  %11 = icmp ne %struct.symbol* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @error_with_pos(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %103

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %16 = load i64, i64* @flag_dump_defs, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @debugfile, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %18, %15
  store %struct.symbol* inttoptr (i64 -1 to %struct.symbol*), %struct.symbol** @expansion_trail, align 8
  %23 = load %struct.symbol*, %struct.symbol** @expansion_trail, align 8
  %24 = load %struct.symbol*, %struct.symbol** %3, align 8
  %25 = getelementptr inbounds %struct.symbol, %struct.symbol* %24, i32 0, i32 1
  store %struct.symbol* %23, %struct.symbol** %25, align 8
  %26 = load %struct.symbol*, %struct.symbol** %3, align 8
  store %struct.symbol* %26, %struct.symbol** @expansion_trail, align 8
  %27 = load %struct.symbol*, %struct.symbol** %3, align 8
  %28 = call i32 @expand_and_crc_sym(%struct.symbol* %27, i32 -1)
  %29 = xor i32 %28, -1
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %4, align 8
  %31 = load %struct.symbol*, %struct.symbol** @expansion_trail, align 8
  store %struct.symbol* %31, %struct.symbol** %3, align 8
  br label %32

32:                                               ; preds = %82, %22
  %33 = load %struct.symbol*, %struct.symbol** %3, align 8
  %34 = icmp ne %struct.symbol* %33, inttoptr (i64 -1 to %struct.symbol*)
  br i1 %34, label %35, label %86

35:                                               ; preds = %32
  %36 = load %struct.symbol*, %struct.symbol** %3, align 8
  %37 = getelementptr inbounds %struct.symbol, %struct.symbol* %36, i32 0, i32 1
  %38 = load %struct.symbol*, %struct.symbol** %37, align 8
  store %struct.symbol* %38, %struct.symbol** %6, align 8
  %39 = load %struct.symbol*, %struct.symbol** %3, align 8
  %40 = getelementptr inbounds %struct.symbol, %struct.symbol* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @STATUS_UNCHANGED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %82

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = call i32 (...) @print_location()
  %49 = load i32, i32* @stderr, align 4
  %50 = load i64, i64* @flag_preserve, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %54 = load i8*, i8** %2, align 8
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %53, i8* %54)
  br label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %47
  %60 = load %struct.symbol*, %struct.symbol** %3, align 8
  %61 = getelementptr inbounds %struct.symbol, %struct.symbol* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.symbol*, %struct.symbol** %3, align 8
  %64 = getelementptr inbounds %struct.symbol, %struct.symbol* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @print_type_name(i32 %62, i32 %65)
  %67 = load %struct.symbol*, %struct.symbol** %3, align 8
  %68 = getelementptr inbounds %struct.symbol, %struct.symbol* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @STATUS_DEFINED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %59
  store i32 1, i32* %5, align 4
  %76 = load i64, i64* @flag_preserve, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @errors, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @errors, align 4
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %35
  %83 = load %struct.symbol*, %struct.symbol** %3, align 8
  %84 = getelementptr inbounds %struct.symbol, %struct.symbol* %83, i32 0, i32 1
  store %struct.symbol* null, %struct.symbol** %84, align 8
  %85 = load %struct.symbol*, %struct.symbol** %6, align 8
  store %struct.symbol* %85, %struct.symbol** %3, align 8
  br label %32

86:                                               ; preds = %32
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i64, i64* @flag_dump_defs, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* @debugfile, align 4
  %97 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i8*, i8** @mod_prefix, align 8
  %100 = load i8*, i8** %2, align 8
  %101 = load i64, i64* %4, align 8
  %102 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %99, i8* %100, i64 %101)
  br label %103

103:                                              ; preds = %98, %12
  ret void
}

declare dso_local %struct.symbol* @find_symbol(i8*, i32) #1

declare dso_local i32 @error_with_pos(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @expand_and_crc_sym(%struct.symbol*, i32) #1

declare dso_local i32 @print_location(...) #1

declare dso_local i32 @print_type_name(i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
