; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_new_curse.c_INFO_PARSE.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_new_curse.c_INFO_PARSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Data_Line = common dso_local global i8* null, align 8
@TERM_data_ptr = common dso_local global i8* null, align 8
@Fildes = common dso_local global i32 0, align 4
@Data_Line_len = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@Flip_Bytes = common dso_local global i32 0, align 4
@Strings = common dso_local global i32* null, align 8
@Booleans = common dso_local global i32* null, align 8
@Numbers = common dso_local global i8** null, align 8
@bt__ = common dso_local global i32 0, align 4
@String_table = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @INFO_PARSE() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = call i8* @malloc(i32 10240)
  store i8* %11, i8** @Data_Line, align 8
  store i8* %11, i8** @TERM_data_ptr, align 8
  %12 = load i32, i32* @Fildes, align 4
  %13 = load i8*, i8** @Data_Line, align 8
  %14 = call i32 @read(i32 %12, i8* %13, i32 10240)
  store i32 %14, i32* @Data_Line_len, align 4
  %15 = load i32, i32* @Data_Line_len, align 4
  %16 = icmp sge i32 %15, 10240
  br i1 %16, label %20, label %17

17:                                               ; preds = %0
  %18 = load i32, i32* @Data_Line_len, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %0
  store i32 0, i32* %1, align 4
  br label %151

21:                                               ; preds = %17
  %22 = call i8* (...) @Get_int()
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 282
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* @Flip_Bytes, align 4
  %28 = load i8*, i8** @TERM_data_ptr, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 -1
  store i8* %29, i8** @TERM_data_ptr, align 8
  %30 = load i8*, i8** @TERM_data_ptr, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %31, i8** @TERM_data_ptr, align 8
  %32 = call i8* (...) @Get_int()
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 282
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %151

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %21
  %39 = call i8* (...) @Get_int()
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = call i8* (...) @Get_int()
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = call i8* (...) @Get_int()
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = call i8* (...) @Get_int()
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = call i8* (...) @Get_int()
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i8* @malloc(i32 %49)
  %51 = bitcast i8* %50 to i32*
  store i32* %51, i32** @Strings, align 8
  br label %52

52:                                               ; preds = %55, %38
  %53 = load i32, i32* %5, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i8*, i8** @TERM_data_ptr, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** @TERM_data_ptr, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  br label %52

60:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %64, %60
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %6, align 4
  %67 = load i8*, i8** @TERM_data_ptr, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** @TERM_data_ptr, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  %71 = load i32*, i32** @Booleans, align 8
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4
  br label %61

76:                                               ; preds = %61
  %77 = load i8*, i8** @TERM_data_ptr, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = and i64 %78, 1
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** @TERM_data_ptr, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** @TERM_data_ptr, align 8
  br label %84

84:                                               ; preds = %81, %76
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %88, %84
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %7, align 4
  %91 = call i8* (...) @Get_int()
  %92 = load i8**, i8*** @Numbers, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  store i8* %91, i8** %95, align 8
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %85

98:                                               ; preds = %85
  %99 = load i8*, i8** @TERM_data_ptr, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8* %105, i8** %10, align 8
  %106 = load i32*, i32** @Strings, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @memcpy(i32* %106, i8* %107, i32 %108)
  %110 = load i32, i32* @bt__, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %142, %98
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %145

114:                                              ; preds = %111
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %8, align 4
  %117 = call i8* (...) @Get_int()
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* %2, align 4
  %119 = icmp ne i32 %118, -1
  br i1 %119, label %120, label %137

120:                                              ; preds = %114
  %121 = load i32**, i32*** @String_table, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load i32*, i32** @Strings, align 8
  %129 = load i32, i32* %2, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32**, i32*** @String_table, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  store i32* %131, i32** %135, align 8
  br label %136

136:                                              ; preds = %127, %120
  br label %142

137:                                              ; preds = %114
  %138 = load i32**, i32*** @String_table, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  store i32* null, i32** %141, align 8
  br label %142

142:                                              ; preds = %137, %136
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %4, align 4
  br label %111

145:                                              ; preds = %111
  %146 = load i32, i32* @Fildes, align 4
  %147 = call i32 @close(i32 %146)
  %148 = load i8*, i8** @Data_Line, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load i32, i32* @TRUE, align 4
  store i32 %150, i32* %1, align 4
  br label %151

151:                                              ; preds = %145, %36, %20
  %152 = load i32, i32* %1, align 4
  ret i32 %152
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i8* @Get_int(...) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
