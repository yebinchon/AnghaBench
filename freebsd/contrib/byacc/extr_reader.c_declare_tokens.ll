; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_declare_tokens.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_declare_tokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i64, i32, i64, i32 }

@TOKEN = common dso_local global i32 0, align 4
@prec = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@goal = common dso_local global %struct.TYPE_5__* null, align 8
@TERM = common dso_local global i32 0, align 4
@UNDEFINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @declare_tokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @declare_tokens(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %6, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @TOKEN, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i64, i64* @prec, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* @prec, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = call i32 (...) @nextc()
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @EOF, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 (...) @unexpected_EOF()
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 60
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = call i8* (...) @get_tag()
  store i8* %24, i8** %6, align 8
  %25 = call i32 (...) @nextc()
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @EOF, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (...) @unexpected_EOF()
  br label %31

31:                                               ; preds = %29, %23
  br label %32

32:                                               ; preds = %31, %20
  br label %33

33:                                               ; preds = %162, %32
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @isalpha(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 95
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 36
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %40, %37, %33
  %47 = call %struct.TYPE_5__* (...) @get_name()
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %4, align 8
  br label %58

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 39
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, 34
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %48
  %55 = call %struct.TYPE_5__* (...) @get_literal()
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %4, align 8
  br label %57

56:                                               ; preds = %51
  ret void

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %46
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @goal, align 8
  %61 = icmp eq %struct.TYPE_5__* %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @tokenized_start(i32 %65)
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32, i32* @TERM, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %79, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @retyped_warning(i32 %87)
  br label %89

89:                                               ; preds = %84, %78, %73
  %90 = load i8*, i8** %6, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %89, %67
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @TOKEN, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %93
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load i64, i64* @prec, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @reprec_warning(i32 %111)
  br label %113

113:                                              ; preds = %108, %102, %97
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  store i64 %115, i64* %117, align 8
  %118 = load i64, i64* @prec, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %113, %93
  %122 = call i32 (...) @nextc()
  store i32 %122, i32* %3, align 4
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @EOF, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = call i32 (...) @unexpected_EOF()
  br label %128

128:                                              ; preds = %126, %121
  %129 = load i64, i64* @UNDEFINED, align 8
  store i64 %129, i64* %5, align 8
  %130 = load i32, i32* %3, align 4
  %131 = call i64 @isdigit(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %162

133:                                              ; preds = %128
  %134 = call i64 (...) @get_number()
  store i64 %134, i64* %5, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @UNDEFINED, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = load i64, i64* %5, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %141, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @revalued_warning(i32 %149)
  br label %151

151:                                              ; preds = %146, %140, %133
  %152 = load i64, i64* %5, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  %155 = call i32 (...) @nextc()
  store i32 %155, i32* %3, align 4
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @EOF, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %151
  %160 = call i32 (...) @unexpected_EOF()
  br label %161

161:                                              ; preds = %159, %151
  br label %162

162:                                              ; preds = %161, %128
  br label %33
}

declare dso_local i32 @nextc(...) #1

declare dso_local i32 @unexpected_EOF(...) #1

declare dso_local i8* @get_tag(...) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local %struct.TYPE_5__* @get_name(...) #1

declare dso_local %struct.TYPE_5__* @get_literal(...) #1

declare dso_local i32 @tokenized_start(i32) #1

declare dso_local i32 @retyped_warning(i32) #1

declare dso_local i32 @reprec_warning(i32) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i64 @get_number(...) #1

declare dso_local i32 @revalued_warning(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
