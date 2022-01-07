; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_substitute_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_substitute_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_definition = type { i8*, i32, i8** }
%struct.macro_buffer = type { i64, i64, i8*, i64 }
%struct.macro_name_list = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Stringification is not implemented yet.\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Token splicing is not implemented yet.\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"__VA_ARGS__\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Variable-arity macros not implemented yet.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macro_buffer*, %struct.macro_definition*, i32, %struct.macro_buffer*, %struct.macro_name_list*, i32*, i8*)* @substitute_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @substitute_args(%struct.macro_buffer* %0, %struct.macro_definition* %1, i32 %2, %struct.macro_buffer* %3, %struct.macro_name_list* %4, i32* %5, i8* %6) #0 {
  %8 = alloca %struct.macro_buffer*, align 8
  %9 = alloca %struct.macro_definition*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.macro_buffer*, align 8
  %12 = alloca %struct.macro_name_list*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.macro_buffer, align 8
  %16 = alloca %struct.macro_buffer, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.macro_buffer, align 8
  store %struct.macro_buffer* %0, %struct.macro_buffer** %8, align 8
  store %struct.macro_definition* %1, %struct.macro_definition** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.macro_buffer* %3, %struct.macro_buffer** %11, align 8
  store %struct.macro_name_list* %4, %struct.macro_name_list** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %21 = load %struct.macro_definition*, %struct.macro_definition** %9, align 8
  %22 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.macro_definition*, %struct.macro_definition** %9, align 8
  %25 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @init_shared_buffer(%struct.macro_buffer* %15, i8* %23, i32 %27)
  %29 = load %struct.macro_buffer*, %struct.macro_buffer** %8, align 8
  %30 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @gdb_assert(i32 %33)
  %35 = load %struct.macro_buffer*, %struct.macro_buffer** %8, align 8
  %36 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %178, %7
  %38 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %15, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %40 = call i32 @get_token(%struct.macro_buffer* %16, %struct.macro_buffer* %15)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %179

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %16, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = icmp ugt i8* %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load %struct.macro_buffer*, %struct.macro_buffer** %8, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %16, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @appendmem(%struct.macro_buffer* %49, i8* %50, i32 %57)
  %59 = load %struct.macro_buffer*, %struct.macro_buffer** %8, align 8
  %60 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.macro_buffer*, %struct.macro_buffer** %8, align 8
  %63 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %48, %43
  %65 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %16, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 1
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %16, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 35
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %68, %64
  %78 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %16, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 2
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %16, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 35
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %16, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 35
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %88, %81, %77
  %98 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %16, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %172

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %16, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 11
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %16, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @memcmp(i8* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 11)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %105, %101
  store i32 0, i32* %19, align 4
  br label %113

113:                                              ; preds = %168, %112
  %114 = load i32, i32* %19, align 4
  %115 = load %struct.macro_definition*, %struct.macro_definition** %9, align 8
  %116 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %171

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %16, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.macro_definition*, %struct.macro_definition** %9, align 8
  %123 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %122, i32 0, i32 2
  %124 = load i8**, i8*** %123, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @strlen(i8* %128)
  %130 = sext i32 %129 to i64
  %131 = icmp eq i64 %121, %130
  br i1 %131, label %132, label %167

132:                                              ; preds = %119
  %133 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %16, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.macro_definition*, %struct.macro_definition** %9, align 8
  %136 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %135, i32 0, i32 2
  %137 = load i8**, i8*** %136, align 8
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %16, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @memcmp(i8* %134, i8* %141, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %167, label %147

147:                                              ; preds = %132
  %148 = load %struct.macro_buffer*, %struct.macro_buffer** %11, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %148, i64 %150
  %152 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.macro_buffer*, %struct.macro_buffer** %11, align 8
  %155 = load i32, i32* %19, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %154, i64 %156
  %158 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @init_shared_buffer(%struct.macro_buffer* %20, i8* %153, i32 %160)
  %162 = load %struct.macro_buffer*, %struct.macro_buffer** %8, align 8
  %163 = load %struct.macro_name_list*, %struct.macro_name_list** %12, align 8
  %164 = load i32*, i32** %13, align 8
  %165 = load i8*, i8** %14, align 8
  %166 = call i32 @scan(%struct.macro_buffer* %162, %struct.macro_buffer* %20, %struct.macro_name_list* %163, i32* %164, i8* %165)
  store i32 1, i32* %18, align 4
  br label %171

167:                                              ; preds = %132, %119
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %19, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %19, align 4
  br label %113

171:                                              ; preds = %147, %113
  br label %172

172:                                              ; preds = %171, %97
  %173 = load i32, i32* %18, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load %struct.macro_buffer*, %struct.macro_buffer** %8, align 8
  %177 = call i32 @append_tokens_without_splicing(%struct.macro_buffer* %176, %struct.macro_buffer* %16)
  br label %178

178:                                              ; preds = %175, %172
  br label %37

179:                                              ; preds = %42
  ret void
}

declare dso_local i32 @init_shared_buffer(%struct.macro_buffer*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @get_token(%struct.macro_buffer*, %struct.macro_buffer*) #1

declare dso_local i32 @appendmem(%struct.macro_buffer*, i8*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @scan(%struct.macro_buffer*, %struct.macro_buffer*, %struct.macro_name_list*, i32*, i8*) #1

declare dso_local i32 @append_tokens_without_splicing(%struct.macro_buffer*, %struct.macro_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
