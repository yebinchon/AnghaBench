; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_process_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_process_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i8*, i32, i32, i32, i32 }

@INSN_OUTPUT_FORMAT_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"\0Astatic const char *\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"output_%d (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@INSN_OUTPUT_FORMAT_MULTI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"\0Astatic const char * const output_%d[] = {\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"  \22\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"trailing whitespace in output template\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\22,\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"'@' is redundant for output template with single alternative\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"wrong number of alternatives in the output template\00", align 1
@have_error = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@INSN_OUTPUT_FORMAT_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data*, i8*)* @process_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_template(%struct.data* %0, i8* %1) #0 {
  %3 = alloca %struct.data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.data* %0, %struct.data** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 42
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.data*, %struct.data** %3, align 8
  %16 = getelementptr inbounds %struct.data, %struct.data* %15, i32 0, i32 0
  store i8* null, i8** %16, align 8
  %17 = load i32, i32* @INSN_OUTPUT_FORMAT_FUNCTION, align 4
  %18 = load %struct.data*, %struct.data** %3, align 8
  %19 = getelementptr inbounds %struct.data, %struct.data* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.data*, %struct.data** %3, align 8
  %22 = getelementptr inbounds %struct.data, %struct.data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @print_rtx_ptr_loc(i8* %26)
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call i32 @puts(i8* %29)
  %31 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %143

32:                                               ; preds = %2
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 64
  br i1 %37, label %38, label %135

38:                                               ; preds = %32
  %39 = load %struct.data*, %struct.data** %3, align 8
  %40 = getelementptr inbounds %struct.data, %struct.data* %39, i32 0, i32 0
  store i8* null, i8** %40, align 8
  %41 = load i32, i32* @INSN_OUTPUT_FORMAT_MULTI, align 4
  %42 = load %struct.data*, %struct.data** %3, align 8
  %43 = getelementptr inbounds %struct.data, %struct.data* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.data*, %struct.data** %3, align 8
  %45 = getelementptr inbounds %struct.data, %struct.data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  store i32 0, i32* %6, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %5, align 8
  br label %50

50:                                               ; preds = %110, %38
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %114

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %60, %54
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @ISSPACE(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  br label %55

63:                                               ; preds = %55
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i8*, i8** %5, align 8
  store i8* %65, i8** %8, align 8
  store i8* %65, i8** %7, align 8
  br label %66

66:                                               ; preds = %87, %63
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @IS_VSPACE(i8 signext %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %7, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %71, %66
  %77 = phi i1 [ false, %66 ], [ %75, %71 ]
  br i1 %77, label %78, label %90

78:                                               ; preds = %76
  %79 = load i8*, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @ISSPACE(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8* %85, i8** %8, align 8
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %7, align 8
  br label %66

90:                                               ; preds = %76
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = icmp ne i8* %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.data*, %struct.data** %3, align 8
  %96 = getelementptr inbounds %struct.data, %struct.data* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @message_with_line(i32 %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %90
  br label %100

100:                                              ; preds = %104, %99
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = icmp ult i8* %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i8*, i8** %5, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @putchar(i8 signext %106)
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %5, align 8
  br label %100

110:                                              ; preds = %100
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %50

114:                                              ; preds = %50
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.data*, %struct.data** %3, align 8
  %119 = getelementptr inbounds %struct.data, %struct.data* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @message_with_line(i32 %120, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  br label %122

122:                                              ; preds = %117, %114
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.data*, %struct.data** %3, align 8
  %125 = getelementptr inbounds %struct.data, %struct.data* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %123, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.data*, %struct.data** %3, align 8
  %130 = getelementptr inbounds %struct.data, %struct.data* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @message_with_line(i32 %131, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* @have_error, align 4
  br label %133

133:                                              ; preds = %128, %122
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %142

135:                                              ; preds = %32
  %136 = load i8*, i8** %4, align 8
  %137 = load %struct.data*, %struct.data** %3, align 8
  %138 = getelementptr inbounds %struct.data, %struct.data* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  %139 = load i32, i32* @INSN_OUTPUT_FORMAT_SINGLE, align 4
  %140 = load %struct.data*, %struct.data** %3, align 8
  %141 = getelementptr inbounds %struct.data, %struct.data* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %135, %133
  br label %143

143:                                              ; preds = %142, %14
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_rtx_ptr_loc(i8*) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i32 @IS_VSPACE(i8 signext) #1

declare dso_local i32 @message_with_line(i32, i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
