; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_traditional.c_replace_args_and_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_traditional.c_replace_args_and_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32 }
%struct.fun_macro = type { i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }
%struct.block = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.fun_macro*)* @replace_args_and_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_args_and_push(%struct.TYPE_17__* %0, %struct.fun_macro* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.fun_macro*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.block*, align 8
  %11 = alloca %struct.block*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.fun_macro* %1, %struct.fun_macro** %4, align 8
  %13 = load %struct.fun_macro*, %struct.fun_macro** %4, align 8
  %14 = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %13, i32 0, i32 1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %5, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = load %struct.fun_macro*, %struct.fun_macro** %4, align 8
  %26 = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %25, i32 0, i32 1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = call i32 @push_replacement_text(%struct.TYPE_17__* %24, %struct.TYPE_19__* %27)
  br label %172

29:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %47, %29
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to %struct.block*
  store %struct.block* %36, %struct.block** %10, align 8
  %37 = load %struct.block*, %struct.block** %10, align 8
  %38 = getelementptr inbounds %struct.block, %struct.block* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %9, align 8
  %42 = load %struct.block*, %struct.block** %10, align 8
  %43 = getelementptr inbounds %struct.block, %struct.block* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %77

47:                                               ; preds = %34
  %48 = load %struct.fun_macro*, %struct.fun_macro** %4, align 8
  %49 = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.block*, %struct.block** %10, align 8
  %52 = getelementptr inbounds %struct.block, %struct.block* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.fun_macro*, %struct.fun_macro** %4, align 8
  %57 = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.block*, %struct.block** %10, align 8
  %60 = getelementptr inbounds %struct.block, %struct.block* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %55, %64
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %9, align 8
  %70 = load %struct.block*, %struct.block** %10, align 8
  %71 = getelementptr inbounds %struct.block, %struct.block* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @BLOCK_LEN(i64 %72)
  %74 = load i8*, i8** %6, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %6, align 8
  br label %34

77:                                               ; preds = %46
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, 1
  %81 = call i32* @_cpp_get_buff(%struct.TYPE_17__* %78, i64 %80)
  store i32* %81, i32** %8, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i8* @BUFF_FRONT(i32* %82)
  store i8* %83, i8** %7, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %6, align 8
  br label %88

88:                                               ; preds = %109, %77
  %89 = load i8*, i8** %6, align 8
  %90 = bitcast i8* %89 to %struct.block*
  store %struct.block* %90, %struct.block** %11, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load %struct.block*, %struct.block** %11, align 8
  %93 = getelementptr inbounds %struct.block, %struct.block* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.block*, %struct.block** %11, align 8
  %96 = getelementptr inbounds %struct.block, %struct.block* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @memcpy(i8* %91, i32 %94, i64 %97)
  %99 = load %struct.block*, %struct.block** %11, align 8
  %100 = getelementptr inbounds %struct.block, %struct.block* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %103, i8** %7, align 8
  %104 = load %struct.block*, %struct.block** %11, align 8
  %105 = getelementptr inbounds %struct.block, %struct.block* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %88
  br label %157

109:                                              ; preds = %88
  %110 = load %struct.fun_macro*, %struct.fun_macro** %4, align 8
  %111 = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.block*, %struct.block** %11, align 8
  %114 = getelementptr inbounds %struct.block, %struct.block* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.fun_macro*, %struct.fun_macro** %4, align 8
  %119 = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.block*, %struct.block** %11, align 8
  %122 = getelementptr inbounds %struct.block, %struct.block* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = sub i64 %123, 1
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %117, %126
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %12, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.fun_macro*, %struct.fun_macro** %4, align 8
  %136 = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.block*, %struct.block** %11, align 8
  %139 = getelementptr inbounds %struct.block, %struct.block* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = sub i64 %140, 1
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %134, %143
  %145 = load i64, i64* %12, align 8
  %146 = call i32 @memcpy(i8* %130, i32 %144, i64 %145)
  %147 = load i64, i64* %12, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 %147
  store i8* %149, i8** %7, align 8
  %150 = load %struct.block*, %struct.block** %11, align 8
  %151 = getelementptr inbounds %struct.block, %struct.block* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @BLOCK_LEN(i64 %152)
  %154 = load i8*, i8** %6, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8* %156, i8** %6, align 8
  br label %88

157:                                              ; preds = %108
  %158 = load i8*, i8** %7, align 8
  store i8 10, i8* %158, align 1
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %160 = load %struct.fun_macro*, %struct.fun_macro** %4, align 8
  %161 = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %160, i32 0, i32 1
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %161, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = call i8* @BUFF_FRONT(i32* %163)
  %165 = load i64, i64* %9, align 8
  %166 = call i32 @_cpp_push_text_context(%struct.TYPE_17__* %159, %struct.TYPE_19__* %162, i8* %164, i64 %165)
  %167 = load i32*, i32** %8, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  store i32* %167, i32** %171, align 8
  br label %172

172:                                              ; preds = %157, %23
  ret void
}

declare dso_local i32 @push_replacement_text(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i32 @BLOCK_LEN(i64) #1

declare dso_local i32* @_cpp_get_buff(%struct.TYPE_17__*, i64) #1

declare dso_local i8* @BUFF_FRONT(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @_cpp_push_text_context(%struct.TYPE_17__*, %struct.TYPE_19__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
