; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_finish_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_finish_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i64, i32 }
%struct.deferred_opt = type { i64, i8* }

@cpp_opts = common dso_local global %struct.TYPE_2__* null, align 8
@parse_in = common dso_local global i32 0, align 4
@line_table = common dso_local global i32 0, align 4
@LC_RENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"<built-in>\00", align 1
@flag_hosted = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"<command-line>\00", align 1
@deferred_count = common dso_local global i64 0, align 8
@deferred_opts = common dso_local global %struct.deferred_opt* null, align 8
@OPT_D = common dso_local global i64 0, align 8
@OPT_U = common dso_local global i64 0, align 8
@OPT_A = common dso_local global i64 0, align 8
@OPT_imacros = common dso_local global i64 0, align 8
@include_cursor = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @finish_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_options() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.deferred_opt*, align 8
  %3 = alloca %struct.deferred_opt*, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpp_opts, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %135, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @parse_in, align 4
  %10 = load i32, i32* @LC_RENAME, align 4
  %11 = call i32 @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @linemap_add(i32* @line_table, i32 %10, i32 0, i32 %11, i32 0)
  %13 = call i32 @cb_file_change(i32 %9, i32 %12)
  %14 = load i32, i32* @parse_in, align 4
  %15 = load i32, i32* @flag_hosted, align 4
  %16 = call i32 @cpp_init_builtins(i32 %14, i32 %15)
  %17 = load i32, i32* @parse_in, align 4
  %18 = call i32 @c_cpp_builtins(i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpp_opts, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpp_opts, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %23, %8
  %30 = phi i1 [ false, %8 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpp_opts, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @parse_in, align 4
  %35 = load i32, i32* @LC_RENAME, align 4
  %36 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @linemap_add(i32* @line_table, i32 %35, i32 0, i32 %36, i32 0)
  %38 = call i32 @cb_file_change(i32 %34, i32 %37)
  store i64 0, i64* %1, align 8
  br label %39

39:                                               ; preds = %101, %29
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* @deferred_count, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %104

43:                                               ; preds = %39
  %44 = load %struct.deferred_opt*, %struct.deferred_opt** @deferred_opts, align 8
  %45 = load i64, i64* %1, align 8
  %46 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %44, i64 %45
  store %struct.deferred_opt* %46, %struct.deferred_opt** %2, align 8
  %47 = load %struct.deferred_opt*, %struct.deferred_opt** %2, align 8
  %48 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @OPT_D, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load i32, i32* @parse_in, align 4
  %54 = load %struct.deferred_opt*, %struct.deferred_opt** %2, align 8
  %55 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @cpp_define(i32 %53, i8* %56)
  br label %100

58:                                               ; preds = %43
  %59 = load %struct.deferred_opt*, %struct.deferred_opt** %2, align 8
  %60 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @OPT_U, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* @parse_in, align 4
  %66 = load %struct.deferred_opt*, %struct.deferred_opt** %2, align 8
  %67 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @cpp_undef(i32 %65, i8* %68)
  br label %99

70:                                               ; preds = %58
  %71 = load %struct.deferred_opt*, %struct.deferred_opt** %2, align 8
  %72 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @OPT_A, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %70
  %77 = load %struct.deferred_opt*, %struct.deferred_opt** %2, align 8
  %78 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 45
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load i32, i32* @parse_in, align 4
  %86 = load %struct.deferred_opt*, %struct.deferred_opt** %2, align 8
  %87 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = call i32 @cpp_unassert(i32 %85, i8* %89)
  br label %97

91:                                               ; preds = %76
  %92 = load i32, i32* @parse_in, align 4
  %93 = load %struct.deferred_opt*, %struct.deferred_opt** %2, align 8
  %94 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @cpp_assert(i32 %92, i8* %95)
  br label %97

97:                                               ; preds = %91, %84
  br label %98

98:                                               ; preds = %97, %70
  br label %99

99:                                               ; preds = %98, %64
  br label %100

100:                                              ; preds = %99, %52
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %1, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %1, align 8
  br label %39

104:                                              ; preds = %39
  store i64 0, i64* %1, align 8
  br label %105

105:                                              ; preds = %131, %104
  %106 = load i64, i64* %1, align 8
  %107 = load i64, i64* @deferred_count, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %105
  %110 = load %struct.deferred_opt*, %struct.deferred_opt** @deferred_opts, align 8
  %111 = load i64, i64* %1, align 8
  %112 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %110, i64 %111
  store %struct.deferred_opt* %112, %struct.deferred_opt** %3, align 8
  %113 = load %struct.deferred_opt*, %struct.deferred_opt** %3, align 8
  %114 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @OPT_imacros, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %109
  %119 = load i32, i32* @parse_in, align 4
  %120 = load %struct.deferred_opt*, %struct.deferred_opt** %3, align 8
  %121 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @cpp_push_include(i32 %119, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load i64, i64* @deferred_count, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* @include_cursor, align 8
  %128 = load i32, i32* @parse_in, align 4
  %129 = call i32 @cpp_scan_nooutput(i32 %128)
  br label %130

130:                                              ; preds = %125, %118, %109
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %1, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %1, align 8
  br label %105

134:                                              ; preds = %105
  br label %144

135:                                              ; preds = %0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpp_opts, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* @parse_in, align 4
  %142 = call i32 @cpp_init_special_builtins(i32 %141)
  br label %143

143:                                              ; preds = %140, %135
  br label %144

144:                                              ; preds = %143, %134
  store i64 0, i64* @include_cursor, align 8
  %145 = call i32 (...) @push_command_line_include()
  ret void
}

declare dso_local i32 @cb_file_change(i32, i32) #1

declare dso_local i32 @linemap_add(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @cpp_init_builtins(i32, i32) #1

declare dso_local i32 @c_cpp_builtins(i32) #1

declare dso_local i32 @cpp_define(i32, i8*) #1

declare dso_local i32 @cpp_undef(i32, i8*) #1

declare dso_local i32 @cpp_unassert(i32, i8*) #1

declare dso_local i32 @cpp_assert(i32, i8*) #1

declare dso_local i64 @cpp_push_include(i32, i8*) #1

declare dso_local i32 @cpp_scan_nooutput(i32) #1

declare dso_local i32 @cpp_init_special_builtins(i32) #1

declare dso_local i32 @push_command_line_include(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
