; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_s_elseif.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_s_elseif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }

@current_cframe = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"\22.elseif\22 without matching \22.if\22\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\22.elseif\22 after \22.else\22\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"here is the previous \22else\22\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"here is the previous \22if\22\00", align 1
@is_end_of_line = common dso_local global i32* null, align 8
@input_line_pointer = common dso_local global i64* null, align 8
@O_constant = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"non-constant expression in \22.elseif\22 statement\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s_elseif(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %6 = icmp eq %struct.TYPE_11__* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @as_bad(i32 %8)
  br label %62

10:                                               ; preds = %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @as_bad(i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @as_bad_where(i32 %21, i32 %25, i32 %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 @as_bad_where(i32 %31, i32 %35, i32 %36)
  br label %61

38:                                               ; preds = %10
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @as_where(i32* %41, i32* %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %38, %15
  br label %62

62:                                               ; preds = %61, %7
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %64 = icmp eq %struct.TYPE_11__* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %65, %62
  br label %71

71:                                               ; preds = %81, %70
  %72 = load i32*, i32** @is_end_of_line, align 8
  %73 = load i64*, i64** @input_line_pointer, align 8
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i8
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i64*, i64** @input_line_pointer, align 8
  %83 = getelementptr inbounds i64, i64* %82, i32 1
  store i64* %83, i64** @input_line_pointer, align 8
  br label %71

84:                                               ; preds = %71
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %86 = icmp eq %struct.TYPE_11__* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %174

88:                                               ; preds = %84
  br label %147

89:                                               ; preds = %65
  %90 = call i32 (...) @SKIP_WHITESPACE()
  %91 = call i32 @expression_and_evaluate(%struct.TYPE_10__* %3)
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @O_constant, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %98 = call i32 @as_bad(i32 %97)
  br label %99

99:                                               ; preds = %96, %89
  %100 = load i32, i32* %2, align 4
  switch i32 %100, label %131 [
    i32 133, label %101
    i32 128, label %106
    i32 129, label %111
    i32 130, label %116
    i32 132, label %121
    i32 131, label %126
  ]

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %4, align 4
  br label %133

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %4, align 4
  br label %133

111:                                              ; preds = %99
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %113, 0
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %4, align 4
  br label %133

116:                                              ; preds = %99
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp sle i32 %118, 0
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %4, align 4
  br label %133

121:                                              ; preds = %99
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp sge i32 %123, 0
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %4, align 4
  br label %133

126:                                              ; preds = %99
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %128, 0
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %4, align 4
  br label %133

131:                                              ; preds = %99
  %132 = call i32 (...) @abort() #3
  unreachable

133:                                              ; preds = %126, %121, %116, %111, %106, %101
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  br label %142

142:                                              ; preds = %138, %133
  %143 = phi i1 [ true, %133 ], [ %141, %138 ]
  %144 = zext i1 %143 to i32
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %142, %88
  %148 = call i64 (...) @LISTING_SKIP_COND()
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %172

150:                                              ; preds = %147
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = icmp eq %struct.TYPE_9__* %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %155, %150
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cframe, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %162
  %168 = call i32 @listing_list(i32 1)
  br label %171

169:                                              ; preds = %162
  %170 = call i32 @listing_list(i32 2)
  br label %171

171:                                              ; preds = %169, %167
  br label %172

172:                                              ; preds = %171, %155, %147
  %173 = call i32 (...) @demand_empty_rest_of_line()
  br label %174

174:                                              ; preds = %172, %87
  ret void
}

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @as_bad_where(i32, i32, i32) #1

declare dso_local i32 @as_where(i32*, i32*) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @expression_and_evaluate(%struct.TYPE_10__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @LISTING_SKIP_COND(...) #1

declare dso_local i32 @listing_list(i32) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
