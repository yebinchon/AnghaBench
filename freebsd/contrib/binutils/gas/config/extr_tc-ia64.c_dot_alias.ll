; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_dot_alias.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_dot_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_control = type { i32 }
%struct.alias = type { i8*, i32, i32 }

@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"expected symbol name\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"expected comma after \22%s\22\00", align 1
@notes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@secalias_hash = common dso_local global %struct.hash_control* null, align 8
@secalias_name_hash = common dso_local global %struct.hash_control* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@alias_hash = common dso_local global %struct.hash_control* null, align 8
@alias_name_hash = common dso_local global %struct.hash_control* null, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"`%s' is already the alias of %s `%s'\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%s `%s' already has an alias `%s'\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"inserting \22%s\22 into %s alias hash table failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"inserting \22%s\22 into %s name hash table failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dot_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dot_alias(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.alias*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hash_control*, align 8
  %12 = alloca %struct.hash_control*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %14 = load i8*, i8** @input_line_pointer, align 8
  store i8* %14, i8** %3, align 8
  %15 = call signext i8 (...) @get_symbol_end()
  store i8 %15, i8* %5, align 1
  %16 = load i8*, i8** @input_line_pointer, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8, i8* %5, align 1
  %18 = load i8*, i8** %6, align 8
  store i8 %17, i8* %18, align 1
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (i32, ...) @as_bad(i32 %23)
  %25 = call i32 (...) @ignore_rest_of_line()
  br label %154

26:                                               ; preds = %1
  %27 = call i32 (...) @SKIP_WHITESPACE()
  %28 = load i8*, i8** @input_line_pointer, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 44
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  store i8 0, i8* %33, align 1
  %34 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 (i32, ...) @as_bad(i32 %34, i8* %35)
  %37 = load i8, i8* %5, align 1
  %38 = load i8*, i8** %6, align 8
  store i8 %37, i8* %38, align 1
  %39 = call i32 (...) @ignore_rest_of_line()
  br label %154

40:                                               ; preds = %26
  %41 = load i8*, i8** @input_line_pointer, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** @input_line_pointer, align 8
  %43 = load i8*, i8** %6, align 8
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @ia64_canonicalize_symbol_name(i8* %44)
  %46 = call i8* @demand_copy_C_string(i32* %7)
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 (...) @ignore_rest_of_line()
  br label %154

51:                                               ; preds = %40
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @obstack_grow(i32* @notes, i8* %55, i32 %56)
  %58 = call i8* @obstack_finish(i32* @notes)
  store i8* %58, i8** %3, align 8
  %59 = load i32, i32* %2, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  %62 = load %struct.hash_control*, %struct.hash_control** @secalias_hash, align 8
  store %struct.hash_control* %62, %struct.hash_control** %11, align 8
  %63 = load %struct.hash_control*, %struct.hash_control** @secalias_name_hash, align 8
  store %struct.hash_control* %63, %struct.hash_control** %12, align 8
  br label %67

64:                                               ; preds = %51
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  %65 = load %struct.hash_control*, %struct.hash_control** @alias_hash, align 8
  store %struct.hash_control* %65, %struct.hash_control** %11, align 8
  %66 = load %struct.hash_control*, %struct.hash_control** @alias_name_hash, align 8
  store %struct.hash_control* %66, %struct.hash_control** %12, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.hash_control*, %struct.hash_control** %11, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i64 @hash_find(%struct.hash_control* %68, i8* %69)
  %71 = inttoptr i64 %70 to %struct.alias*
  store %struct.alias* %71, %struct.alias** %9, align 8
  %72 = load %struct.alias*, %struct.alias** %9, align 8
  %73 = icmp ne %struct.alias* %72, null
  br i1 %73, label %74, label %90

74:                                               ; preds = %67
  %75 = load %struct.alias*, %struct.alias** %9, align 8
  %76 = getelementptr inbounds %struct.alias, %struct.alias* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %3, align 8
  %79 = call i64 @strcmp(i8* %77, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load %struct.alias*, %struct.alias** %9, align 8
  %86 = getelementptr inbounds %struct.alias, %struct.alias* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i32, ...) @as_bad(i32 %82, i8* %83, i8* %84, i8* %87)
  br label %89

89:                                               ; preds = %81, %74
  br label %147

90:                                               ; preds = %67
  %91 = load %struct.hash_control*, %struct.hash_control** %12, align 8
  %92 = load i8*, i8** %3, align 8
  %93 = call i64 @hash_find(%struct.hash_control* %91, i8* %92)
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** %10, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %90
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = call i64 @strcmp(i8* %98, i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i8*, i8** %13, align 8
  %105 = load i8*, i8** %3, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 (i32, ...) @as_bad(i32 %103, i8* %104, i8* %105, i8* %106)
  br label %108

108:                                              ; preds = %102, %97
  br label %147

109:                                              ; preds = %90
  %110 = call i64 @xmalloc(i32 16)
  %111 = inttoptr i64 %110 to %struct.alias*
  store %struct.alias* %111, %struct.alias** %9, align 8
  %112 = load %struct.alias*, %struct.alias** %9, align 8
  %113 = getelementptr inbounds %struct.alias, %struct.alias* %112, i32 0, i32 2
  %114 = load %struct.alias*, %struct.alias** %9, align 8
  %115 = getelementptr inbounds %struct.alias, %struct.alias* %114, i32 0, i32 1
  %116 = call i32 @as_where(i32* %113, i32* %115)
  %117 = load i8*, i8** %3, align 8
  %118 = load %struct.alias*, %struct.alias** %9, align 8
  %119 = getelementptr inbounds %struct.alias, %struct.alias* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load %struct.hash_control*, %struct.hash_control** %11, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = load %struct.alias*, %struct.alias** %9, align 8
  %123 = ptrtoint %struct.alias* %122 to i32
  %124 = call i8* @hash_jam(%struct.hash_control* %120, i8* %121, i32 %123)
  store i8* %124, i8** %8, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %109
  %128 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %129 = load i8*, i8** %4, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @as_fatal(i32 %128, i8* %129, i8* %130, i8* %131)
  br label %147

133:                                              ; preds = %109
  %134 = load %struct.hash_control*, %struct.hash_control** %12, align 8
  %135 = load i8*, i8** %3, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = ptrtoint i8* %136 to i32
  %138 = call i8* @hash_jam(%struct.hash_control* %134, i8* %135, i32 %137)
  store i8* %138, i8** %8, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %152

141:                                              ; preds = %133
  %142 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  %143 = load i8*, i8** %4, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 @as_fatal(i32 %142, i8* %143, i8* %144, i8* %145)
  br label %147

147:                                              ; preds = %141, %127, %108, %89
  %148 = load i8*, i8** %3, align 8
  %149 = call i32 @obstack_free(i32* @notes, i8* %148)
  %150 = load i8*, i8** %4, align 8
  %151 = call i32 @obstack_free(i32* @notes, i8* %150)
  br label %152

152:                                              ; preds = %147, %133
  %153 = call i32 (...) @demand_empty_rest_of_line()
  br label %154

154:                                              ; preds = %152, %49, %32, %22
  ret void
}

declare dso_local signext i8 @get_symbol_end(...) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @ia64_canonicalize_symbol_name(i8*) #1

declare dso_local i8* @demand_copy_C_string(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @obstack_grow(i32*, i8*, i32) #1

declare dso_local i8* @obstack_finish(i32*) #1

declare dso_local i64 @hash_find(%struct.hash_control*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @as_where(i32*, i32*) #1

declare dso_local i8* @hash_jam(%struct.hash_control*, i8*, i32) #1

declare dso_local i32 @as_fatal(i32, i8*, i8*, i8*) #1

declare dso_local i32 @obstack_free(i32*, i8*) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
