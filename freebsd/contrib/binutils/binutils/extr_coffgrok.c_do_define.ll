; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_do_define.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_do_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.internal_syment }
%struct.internal_syment = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_16__ = type { %struct.coff_isection* }
%struct.coff_isection = type { i32, %struct.TYPE_11__*, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.coff_symbol*, %struct.coff_symbol* }
%struct.coff_symbol = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__*, i32, %struct.coff_symbol*, %struct.coff_symbol*, %struct.TYPE_16__*, i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_11__*, i64 }
%struct.coff_scope = type { i32, %struct.coff_symbol*, %struct.coff_symbol* }

@do_define.symbol_index = internal global i32 0, align 4
@rawsyms = common dso_local global %struct.TYPE_12__* null, align 8
@cur_sfile = common dso_local global %struct.TYPE_16__* null, align 8
@lofile = common dso_local global i64 0, align 8
@ofile = common dso_local global %struct.TYPE_13__* null, align 8
@tindex = common dso_local global %struct.coff_symbol** null, align 8
@coff_where_memory = common dso_local global i64 0, align 8
@coff_secdef_type = common dso_local global i64 0, align 8
@coff_function_type = common dso_local global i64 0, align 8
@last_function_symbol = common dso_local global %struct.coff_symbol* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.coff_scope*)* @do_define to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_define(i32 %0, %struct.coff_scope* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coff_scope*, align 8
  %5 = alloca %struct.internal_syment*, align 8
  %6 = alloca %struct.coff_symbol*, align 8
  %7 = alloca %struct.coff_isection*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.coff_scope* %1, %struct.coff_scope** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** @rawsyms, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store %struct.internal_syment* %13, %struct.internal_syment** %5, align 8
  %14 = call %struct.coff_symbol* (...) @empty_symbol()
  store %struct.coff_symbol* %14, %struct.coff_symbol** %6, align 8
  %15 = load i32, i32* @do_define.symbol_index, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @do_define.symbol_index, align 4
  %17 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %18 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %20 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %26 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cur_sfile, align 8
  %28 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %29 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %28, i32 0, i32 6
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %29, align 8
  %30 = load i64, i64* @lofile, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ofile, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load %struct.coff_symbol*, %struct.coff_symbol** %34, align 8
  %36 = icmp ne %struct.coff_symbol* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ofile, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.coff_symbol*, %struct.coff_symbol** %40, align 8
  %42 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %41, i32 0, i32 5
  store %struct.coff_symbol* %38, %struct.coff_symbol** %42, align 8
  br label %47

43:                                               ; preds = %32
  %44 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ofile, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  store %struct.coff_symbol* %44, %struct.coff_symbol** %46, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ofile, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  store %struct.coff_symbol* %48, %struct.coff_symbol** %50, align 8
  br label %51

51:                                               ; preds = %47, %2
  %52 = load %struct.coff_scope*, %struct.coff_scope** %4, align 8
  %53 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %52, i32 0, i32 1
  %54 = load %struct.coff_symbol*, %struct.coff_symbol** %53, align 8
  %55 = icmp ne %struct.coff_symbol* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %58 = load %struct.coff_scope*, %struct.coff_scope** %4, align 8
  %59 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %58, i32 0, i32 1
  %60 = load %struct.coff_symbol*, %struct.coff_symbol** %59, align 8
  %61 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %60, i32 0, i32 4
  store %struct.coff_symbol* %57, %struct.coff_symbol** %61, align 8
  br label %66

62:                                               ; preds = %51
  %63 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %64 = load %struct.coff_scope*, %struct.coff_scope** %4, align 8
  %65 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %64, i32 0, i32 2
  store %struct.coff_symbol* %63, %struct.coff_symbol** %65, align 8
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %68 = load %struct.coff_scope*, %struct.coff_scope** %4, align 8
  %69 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %68, i32 0, i32 1
  store %struct.coff_symbol* %67, %struct.coff_symbol** %69, align 8
  %70 = load %struct.coff_scope*, %struct.coff_scope** %4, align 8
  %71 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call %struct.TYPE_15__* @do_type(i32 %74)
  %76 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %77 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %76, i32 0, i32 1
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %77, align 8
  %78 = load i32, i32* %3, align 4
  %79 = call %struct.TYPE_14__* @do_where(i32 %78)
  %80 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %81 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %80, i32 0, i32 2
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %81, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @do_visible(i32 %82)
  %84 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %85 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %87 = load %struct.coff_symbol**, %struct.coff_symbol*** @tindex, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.coff_symbol*, %struct.coff_symbol** %87, i64 %89
  store %struct.coff_symbol* %86, %struct.coff_symbol** %90, align 8
  %91 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %92 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %91, i32 0, i32 2
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @coff_where_memory, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %154

98:                                               ; preds = %66
  %99 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %100 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %99, i32 0, i32 1
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @coff_secdef_type, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %154

106:                                              ; preds = %98
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cur_sfile, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load %struct.coff_isection*, %struct.coff_isection** %108, align 8
  %110 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %111 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %110, i32 0, i32 2
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.coff_isection, %struct.coff_isection* %109, i64 %117
  store %struct.coff_isection* %118, %struct.coff_isection** %7, align 8
  %119 = load %struct.coff_isection*, %struct.coff_isection** %7, align 8
  %120 = getelementptr inbounds %struct.coff_isection, %struct.coff_isection* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %153, label %123

123:                                              ; preds = %106
  %124 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %125 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %124, i32 0, i32 2
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.coff_isection*, %struct.coff_isection** %7, align 8
  %130 = getelementptr inbounds %struct.coff_isection, %struct.coff_isection* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  %131 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %132 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %131, i32 0, i32 2
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %137 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %136, i32 0, i32 1
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %135, %140
  %142 = load %struct.coff_isection*, %struct.coff_isection** %7, align 8
  %143 = getelementptr inbounds %struct.coff_isection, %struct.coff_isection* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load %struct.coff_isection*, %struct.coff_isection** %7, align 8
  %145 = getelementptr inbounds %struct.coff_isection, %struct.coff_isection* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %147 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %146, i32 0, i32 2
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = load %struct.coff_isection*, %struct.coff_isection** %7, align 8
  %152 = getelementptr inbounds %struct.coff_isection, %struct.coff_isection* %151, i32 0, i32 1
  store %struct.TYPE_11__* %150, %struct.TYPE_11__** %152, align 8
  br label %153

153:                                              ; preds = %123, %106
  br label %154

154:                                              ; preds = %153, %98, %66
  %155 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %156 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %155, i32 0, i32 1
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @coff_function_type, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  store %struct.coff_symbol* %163, %struct.coff_symbol** @last_function_symbol, align 8
  br label %164

164:                                              ; preds = %162, %154
  %165 = load i32, i32* %3, align 4
  %166 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %167 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %165, %168
  %170 = add nsw i32 %169, 1
  ret i32 %170
}

declare dso_local %struct.coff_symbol* @empty_symbol(...) #1

declare dso_local %struct.TYPE_15__* @do_type(i32) #1

declare dso_local %struct.TYPE_14__* @do_where(i32) #1

declare dso_local i32 @do_visible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
