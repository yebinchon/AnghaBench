; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_new_afile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_new_afile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i32*, i8*, i32, i32, i32, i32, i64, i32*, i32*, i32*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32 }

@lang_input_statement = common dso_local global i32 0, align 4
@stat_ptr = common dso_local global i32 0, align 4
@lang_input_statement_enum = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@lang_has_input_file = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@ldlang_sysrooted_script = common dso_local global i8* null, align 8
@config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@add_needed = common dso_local global i32 0, align 4
@as_needed = common dso_local global i32 0, align 4
@whole_archive = common dso_local global i32 0, align 4
@input_file_chain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i32, i8*, i64)* @new_afile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @new_afile(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32, i32* @lang_input_statement, align 4
  %14 = load i32, i32* @stat_ptr, align 4
  %15 = call %struct.TYPE_8__* @new_stat(i32 %13, i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %9, align 8
  br label %25

16:                                               ; preds = %4
  %17 = call %struct.TYPE_8__* @stat_alloc(i32 144)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %9, align 8
  %18 = load i32, i32* @lang_input_statement_enum, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 18
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 18
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %16, %12
  %26 = load i8*, i8** @TRUE, align 8
  store i8* %26, i8** @lang_has_input_file, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @FALSE, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 17
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 131
  br i1 %34, label %35, label %50

35:                                               ; preds = %25
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 58
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  store i32 129, i32* %6, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %5, align 8
  br label %50

50:                                               ; preds = %47, %41, %35, %25
  %51 = load i32, i32* %6, align 4
  switch i32 %51, label %170 [
    i32 128, label %52
    i32 133, label %71
    i32 131, label %90
    i32 130, label %110
    i32 129, label %129
    i32 132, label %151
  ]

52:                                               ; preds = %50
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @FALSE, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 16
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @TRUE, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 15
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @TRUE, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 14
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @FALSE, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 13
  store i8* %68, i8** %70, align 8
  br label %172

71:                                               ; preds = %50
  %72 = load i8*, i8** %5, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @FALSE, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 16
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @FALSE, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 15
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @FALSE, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 14
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @FALSE, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 13
  store i8* %87, i8** %89, align 8
  br label %172

90:                                               ; preds = %50
  %91 = load i8*, i8** @TRUE, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 16
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @TRUE, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 15
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = call i8* @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %100, i32* null)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** @FALSE, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 14
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** @TRUE, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 13
  store i8* %107, i8** %109, align 8
  br label %172

110:                                              ; preds = %50
  %111 = load i8*, i8** %5, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @FALSE, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 16
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** @FALSE, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 15
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load i8*, i8** @FALSE, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 14
  store i8* %123, i8** %125, align 8
  %126 = load i8*, i8** @TRUE, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 13
  store i8* %126, i8** %128, align 8
  br label %172

129:                                              ; preds = %50
  %130 = load i8*, i8** @ldlang_sysrooted_script, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 17
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** @FALSE, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 16
  store i8* %136, i8** %138, align 8
  %139 = load i8*, i8** @TRUE, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 15
  store i8* %139, i8** %141, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @FALSE, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 14
  store i8* %145, i8** %147, align 8
  %148 = load i8*, i8** @TRUE, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 13
  store i8* %148, i8** %150, align 8
  br label %172

151:                                              ; preds = %50
  %152 = load i8*, i8** %5, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  %155 = load i8*, i8** @FALSE, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 16
  store i8* %155, i8** %157, align 8
  %158 = load i8*, i8** @TRUE, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 15
  store i8* %158, i8** %160, align 8
  %161 = load i8*, i8** %5, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  store i8* %161, i8** %163, align 8
  %164 = load i8*, i8** @FALSE, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 14
  store i8* %164, i8** %166, align 8
  %167 = load i8*, i8** @FALSE, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 13
  store i8* %167, i8** %169, align 8
  br label %172

170:                                              ; preds = %50
  %171 = call i32 (...) @FAIL()
  br label %172

172:                                              ; preds = %170, %151, %129, %110, %90, %71, %52
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 12
  store i32* null, i32** %174, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 11
  store i32* null, i32** %176, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 3
  store i32* null, i32** %178, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 10
  store i32* null, i32** %180, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 9
  store i64 0, i64* %182, align 8
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 0), align 4
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 8
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* @add_needed, align 4
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 7
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* @as_needed, align 4
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 6
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* @whole_archive, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 8
  %195 = load i8*, i8** @FALSE, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 4
  store i8* %195, i8** %197, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %199 = bitcast %struct.TYPE_8__* %198 to i32*
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 3
  %202 = call i32 @lang_statement_append(i32* @input_file_chain, i32* %199, i32** %201)
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  ret %struct.TYPE_8__* %203
}

declare dso_local %struct.TYPE_8__* @new_stat(i32, i32) #1

declare dso_local %struct.TYPE_8__* @stat_alloc(i32) #1

declare dso_local i8* @concat(i8*, i8*, i32*) #1

declare dso_local i32 @FAIL(...) #1

declare dso_local i32 @lang_statement_append(i32*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
