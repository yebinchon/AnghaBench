; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c__cpp_lex_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c__cpp_lex_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_16__, i64, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32, i32, i64, i64 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32)* }
%struct.TYPE_18__ = type { i64, i64 }

@BOL = common dso_local global i32 0, align 4
@CPP_HASH = common dso_local global i64 0, align 8
@PREV_WHITE = common dso_local global i32 0, align 4
@CPP_PADDING = common dso_local global i64 0, align 8
@CPP_EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @_cpp_lex_token(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  br label %4

4:                                                ; preds = %171, %103, %1
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 6
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %7, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %18 = call %struct.TYPE_18__* @next_tokenrun(%struct.TYPE_18__* %17)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 6
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %20, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %14, %4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %31, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %28
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %41, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %38, %28
  %49 = call i32 (...) @abort() #3
  unreachable

50:                                               ; preds = %38
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = inttoptr i64 %62 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %3, align 8
  br label %68

65:                                               ; preds = %50
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %67 = call %struct.TYPE_16__* @_cpp_lex_direct(%struct.TYPE_17__* %66)
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %3, align 8
  br label %68

68:                                               ; preds = %65, %55
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BOL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %143

75:                                               ; preds = %68
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CPP_HASH, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %75
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %108

87:                                               ; preds = %81
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @PREV_WHITE, align 4
  %93 = and i32 %91, %92
  %94 = call i64 @_cpp_handle_directive(%struct.TYPE_17__* %88, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %87
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CPP_PADDING, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %4

104:                                              ; preds = %96
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 4
  store %struct.TYPE_16__* %106, %struct.TYPE_16__** %3, align 8
  br label %107

107:                                              ; preds = %104, %87
  br label %118

108:                                              ; preds = %81, %75
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 4
  store %struct.TYPE_16__* %116, %struct.TYPE_16__** %3, align 8
  br label %117

117:                                              ; preds = %114, %108
  br label %118

118:                                              ; preds = %117, %107
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32)** %121, align 8
  %123 = icmp ne i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32)* %122, null
  br i1 %123, label %124, label %142

124:                                              ; preds = %118
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %142, label %130

130:                                              ; preds = %124
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32)** %133, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 %134(%struct.TYPE_17__* %135, %struct.TYPE_16__* %136, i32 %140)
  br label %142

142:                                              ; preds = %130, %124, %118
  br label %143

143:                                              ; preds = %142, %68
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %149, %143
  br label %172

156:                                              ; preds = %149
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  store i32 0, i32* %158, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %156
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @CPP_EOF, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %164, %156
  br label %172

171:                                              ; preds = %164
  br label %4

172:                                              ; preds = %170, %155
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %173
}

declare dso_local %struct.TYPE_18__* @next_tokenrun(%struct.TYPE_18__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.TYPE_16__* @_cpp_lex_direct(%struct.TYPE_17__*) #1

declare dso_local i64 @_cpp_handle_directive(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
