; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_parse_header_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_parse_header_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_buf_ptr = common dso_local global i64 0, align 8
@input_buf_siz = common dso_local global i64 0, align 8
@EVENT_ITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"field\00", align 1
@EVENT_OP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@EVENT_NEWLINE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32)* @parse_header_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_header_field(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* @input_buf_ptr, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* @input_buf_siz, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i32, i32* @EVENT_ITEM, align 4
  %16 = call i64 @read_expected(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %161

19:                                               ; preds = %4
  %20 = load i32, i32* @EVENT_OP, align 4
  %21 = call i64 @read_expected(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %161

24:                                               ; preds = %19
  %25 = load i32, i32* @EVENT_ITEM, align 4
  %26 = call i64 @read_expect_type(i32 %25, i8** %11)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %151

29:                                               ; preds = %24
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @free_token(i8* %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* @EVENT_ITEM, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @read_expected(i32 %35, i8* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %161

40:                                               ; preds = %34
  br label %55

41:                                               ; preds = %29
  %42 = load i32, i32* @EVENT_ITEM, align 4
  %43 = call i64 @read_expect_type(i32 %42, i8** %11)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %151

46:                                               ; preds = %41
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @strcmp(i8* %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %154

52:                                               ; preds = %46
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @free_token(i8* %53)
  br label %55

55:                                               ; preds = %52, %40
  %56 = load i32, i32* @EVENT_OP, align 4
  %57 = call i64 @read_expected(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %161

60:                                               ; preds = %55
  %61 = load i32, i32* @EVENT_ITEM, align 4
  %62 = call i64 @read_expected(i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %161

65:                                               ; preds = %60
  %66 = load i32, i32* @EVENT_OP, align 4
  %67 = call i64 @read_expected(i32 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %161

70:                                               ; preds = %65
  %71 = load i32, i32* @EVENT_ITEM, align 4
  %72 = call i64 @read_expect_type(i32 %71, i8** %11)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %151

75:                                               ; preds = %70
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @atoi(i8* %76)
  %78 = load i32*, i32** %6, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @free_token(i8* %79)
  %81 = load i32, i32* @EVENT_OP, align 4
  %82 = call i64 @read_expected(i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %161

85:                                               ; preds = %75
  %86 = load i32, i32* @EVENT_ITEM, align 4
  %87 = call i64 @read_expected(i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %161

90:                                               ; preds = %85
  %91 = load i32, i32* @EVENT_OP, align 4
  %92 = call i64 @read_expected(i32 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %161

95:                                               ; preds = %90
  %96 = load i32, i32* @EVENT_ITEM, align 4
  %97 = call i64 @read_expect_type(i32 %96, i8** %11)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %151

100:                                              ; preds = %95
  %101 = load i8*, i8** %11, align 8
  %102 = call i32 @atoi(i8* %101)
  %103 = load i32*, i32** %7, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @free_token(i8* %104)
  %106 = load i32, i32* @EVENT_OP, align 4
  %107 = call i64 @read_expected(i32 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %161

110:                                              ; preds = %100
  %111 = call i32 @read_token(i8** %11)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @EVENT_NEWLINE, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %150

115:                                              ; preds = %110
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @EVENT_ITEM, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %151

120:                                              ; preds = %115
  %121 = load i8*, i8** %11, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %151

125:                                              ; preds = %120
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @free_token(i8* %126)
  %128 = load i32, i32* @EVENT_OP, align 4
  %129 = call i64 @read_expected(i32 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %161

132:                                              ; preds = %125
  %133 = load i32, i32* @EVENT_ITEM, align 4
  %134 = call i64 @read_expect_type(i32 %133, i8** %11)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %151

137:                                              ; preds = %132
  %138 = load i8*, i8** %11, align 8
  %139 = call i32 @free_token(i8* %138)
  %140 = load i32, i32* @EVENT_OP, align 4
  %141 = call i64 @read_expected(i32 %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %161

144:                                              ; preds = %137
  %145 = load i32, i32* @EVENT_NEWLINE, align 4
  %146 = call i64 @read_expect_type(i32 %145, i8** %11)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %151

149:                                              ; preds = %144
  br label %150

150:                                              ; preds = %149, %110
  br label %151

151:                                              ; preds = %150, %148, %136, %124, %119, %99, %74, %45, %28
  %152 = load i8*, i8** %11, align 8
  %153 = call i32 @free_token(i8* %152)
  br label %161

154:                                              ; preds = %51
  %155 = load i64, i64* %9, align 8
  store i64 %155, i64* @input_buf_ptr, align 8
  %156 = load i64, i64* %10, align 8
  store i64 %156, i64* @input_buf_siz, align 8
  %157 = load i32*, i32** %6, align 8
  store i32 0, i32* %157, align 4
  %158 = load i32*, i32** %7, align 8
  store i32 0, i32* %158, align 4
  %159 = load i8*, i8** %11, align 8
  %160 = call i32 @free_token(i8* %159)
  br label %161

161:                                              ; preds = %154, %151, %143, %131, %109, %94, %89, %84, %69, %64, %59, %39, %23, %18
  ret void
}

declare dso_local i64 @read_expected(i32, i8*) #1

declare dso_local i64 @read_expect_type(i32, i8**) #1

declare dso_local i32 @free_token(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @read_token(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
