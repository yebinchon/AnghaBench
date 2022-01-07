; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i64, i8*, %struct.symbol*, i32, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"a:dwqVDr:T:ph\00", align 1
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@arch = common dso_local global i32 0, align 4
@flag_debug = common dso_local global i32 0, align 4
@flag_warnings = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"genksyms version 2.5.60\0A\00", align 1
@stderr = common dso_local global i32* null, align 8
@flag_dump_defs = common dso_local global i32 0, align 4
@flag_reference = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@flag_dump_types = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@flag_preserve = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"h8300\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"blackfin\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@mod_prefix = common dso_local global i8* null, align 8
@yydebug = external dso_local global i32, align 4
@yy_flex_debug = external dso_local global i32, align 4
@debugfile = common dso_local global i32* null, align 8
@visited_symbols = common dso_local global %struct.symbol* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"override \00", align 1
@SYM_NORMAL = common dso_local global i64 0, align 8
@symbol_type_name = common dso_local global i8** null, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Hash table occupancy %d/%d = %g\0A\00", align 1
@nsyms = common dso_local global i32 0, align 4
@HASH_BUCKETS = common dso_local global i32 0, align 4
@errors = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.symbol*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  br label %10

10:                                               ; preds = %52, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @EOF, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %10
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %50 [
    i32 97, label %18
    i32 100, label %20
    i32 119, label %23
    i32 113, label %24
    i32 86, label %25
    i32 68, label %28
    i32 114, label %29
    i32 84, label %38
    i32 112, label %47
    i32 104, label %48
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @optarg, align 4
  store i32 %19, i32* @arch, align 4
  br label %52

20:                                               ; preds = %16
  %21 = load i32, i32* @flag_debug, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @flag_debug, align 4
  br label %52

23:                                               ; preds = %16
  store i32 1, i32* @flag_warnings, align 4
  br label %52

24:                                               ; preds = %16
  store i32 0, i32* @flag_warnings, align 4
  br label %52

25:                                               ; preds = %16
  %26 = load i32*, i32** @stderr, align 8
  %27 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  br label %52

28:                                               ; preds = %16
  store i32 1, i32* @flag_dump_defs, align 4
  br label %52

29:                                               ; preds = %16
  store i32 1, i32* @flag_reference, align 4
  %30 = load i32, i32* @optarg, align 4
  %31 = call i32* @fopen(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @optarg, align 4
  %36 = call i32 @perror(i32 %35)
  store i32 1, i32* %3, align 4
  br label %160

37:                                               ; preds = %29
  br label %52

38:                                               ; preds = %16
  store i32 1, i32* @flag_dump_types, align 4
  %39 = load i32, i32* @optarg, align 4
  %40 = call i32* @fopen(i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @optarg, align 4
  %45 = call i32 @perror(i32 %44)
  store i32 1, i32* %3, align 4
  br label %160

46:                                               ; preds = %38
  br label %52

47:                                               ; preds = %16
  store i32 1, i32* @flag_preserve, align 4
  br label %52

48:                                               ; preds = %16
  %49 = call i32 (...) @genksyms_usage()
  store i32 0, i32* %3, align 4
  br label %160

50:                                               ; preds = %16
  %51 = call i32 (...) @genksyms_usage()
  store i32 1, i32* %3, align 4
  br label %160

52:                                               ; preds = %47, %46, %37, %28, %25, %24, %23, %20, %18
  br label %10

53:                                               ; preds = %10
  %54 = load i32, i32* @arch, align 4
  %55 = call i64 @strcmp(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @arch, align 4
  %59 = call i64 @strcmp(i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** @mod_prefix, align 8
  br label %62

62:                                               ; preds = %61, %57
  %63 = load i32, i32* @flag_debug, align 4
  %64 = icmp sgt i32 %63, 1
  %65 = zext i1 %64 to i32
  store i32 %65, i32* @yydebug, align 4
  %66 = load i32, i32* @flag_debug, align 4
  %67 = icmp sgt i32 %66, 2
  %68 = zext i1 %67 to i32
  store i32 %68, i32* @yy_flex_debug, align 4
  %69 = load i32*, i32** @stderr, align 8
  store i32* %69, i32** @debugfile, align 8
  %70 = load i32, i32* @flag_reference, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @read_reference(i32* %73)
  br label %75

75:                                               ; preds = %72, %62
  %76 = call i32 (...) @yyparse()
  %77 = load i32, i32* @flag_dump_types, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %143

79:                                               ; preds = %75
  %80 = load %struct.symbol*, %struct.symbol** @visited_symbols, align 8
  %81 = icmp ne %struct.symbol* %80, null
  br i1 %81, label %82, label %143

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %129, %82
  %84 = load %struct.symbol*, %struct.symbol** @visited_symbols, align 8
  %85 = icmp ne %struct.symbol* %84, inttoptr (i64 -1 to %struct.symbol*)
  br i1 %85, label %86, label %142

86:                                               ; preds = %83
  %87 = load %struct.symbol*, %struct.symbol** @visited_symbols, align 8
  store %struct.symbol* %87, %struct.symbol** %9, align 8
  %88 = load %struct.symbol*, %struct.symbol** %9, align 8
  %89 = getelementptr inbounds %struct.symbol, %struct.symbol* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* %93)
  br label %95

95:                                               ; preds = %92, %86
  %96 = load %struct.symbol*, %struct.symbol** %9, align 8
  %97 = getelementptr inbounds %struct.symbol, %struct.symbol* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SYM_NORMAL, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %95
  %102 = load i8**, i8*** @symbol_type_name, align 8
  %103 = load %struct.symbol*, %struct.symbol** %9, align 8
  %104 = getelementptr inbounds %struct.symbol, %struct.symbol* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @putc(i8 signext %109, i32* %110)
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @putc(i8 signext 35, i32* %112)
  br label %114

114:                                              ; preds = %101, %95
  %115 = load %struct.symbol*, %struct.symbol** %9, align 8
  %116 = getelementptr inbounds %struct.symbol, %struct.symbol* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @fputs(i8* %117, i32* %118)
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @putc(i8 signext 32, i32* %120)
  %122 = load %struct.symbol*, %struct.symbol** %9, align 8
  %123 = getelementptr inbounds %struct.symbol, %struct.symbol* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %114
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32* %127)
  br label %129

129:                                              ; preds = %126, %114
  %130 = load i32*, i32** %6, align 8
  %131 = load %struct.symbol*, %struct.symbol** %9, align 8
  %132 = getelementptr inbounds %struct.symbol, %struct.symbol* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @print_list(i32* %130, i32 %133)
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @putc(i8 signext 10, i32* %135)
  %137 = load %struct.symbol*, %struct.symbol** %9, align 8
  %138 = getelementptr inbounds %struct.symbol, %struct.symbol* %137, i32 0, i32 2
  %139 = load %struct.symbol*, %struct.symbol** %138, align 8
  store %struct.symbol* %139, %struct.symbol** @visited_symbols, align 8
  %140 = load %struct.symbol*, %struct.symbol** %9, align 8
  %141 = getelementptr inbounds %struct.symbol, %struct.symbol* %140, i32 0, i32 2
  store %struct.symbol* null, %struct.symbol** %141, align 8
  br label %83

142:                                              ; preds = %83
  br label %143

143:                                              ; preds = %142, %79, %75
  %144 = load i32, i32* @flag_debug, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %143
  %147 = load i32*, i32** @debugfile, align 8
  %148 = load i32, i32* @nsyms, align 4
  %149 = load i32, i32* @HASH_BUCKETS, align 4
  %150 = load i32, i32* @nsyms, align 4
  %151 = sitofp i32 %150 to double
  %152 = load i32, i32* @HASH_BUCKETS, align 4
  %153 = sitofp i32 %152 to double
  %154 = fdiv double %151, %153
  %155 = call i32 @fprintf(i32* %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %148, i32 %149, double %154)
  br label %156

156:                                              ; preds = %146, %143
  %157 = load i64, i64* @errors, align 8
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %156, %50, %48, %43, %34
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @perror(i32) #1

declare dso_local i32 @genksyms_usage(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @read_reference(i32*) #1

declare dso_local i32 @yyparse(...) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @print_list(i32*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
