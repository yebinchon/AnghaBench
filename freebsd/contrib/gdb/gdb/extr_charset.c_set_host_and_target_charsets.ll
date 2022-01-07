; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_charset.c_set_host_and_target_charsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_charset.c_set_host_and_target_charsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charset = type { i8* }
%struct.translation = type { i32*, i8*, i32, i64, i32, i64 }

@current_host_charset = common dso_local global %struct.charset* null, align 8
@current_target_charset = common dso_local global %struct.charset* null, align 8
@cached_iconv_host_to_target = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"GDB can't convert from the `%s' character set to `%s'.\00", align 1
@cached_iconv_target_to_host = common dso_local global i32 0, align 4
@c_target_char_has_backslash_escape_func = common dso_local global i64 0, align 8
@c_target_char_has_backslash_escape_baton = common dso_local global i32 0, align 4
@default_c_target_char_has_backslash_escape = common dso_local global i64 0, align 8
@c_parse_backslash_func = common dso_local global i64 0, align 8
@c_parse_backslash_baton = common dso_local global i32 0, align 4
@default_c_parse_backslash = common dso_local global i64 0, align 8
@host_char_to_target_func = common dso_local global i8* null, align 8
@host_char_to_target_baton = common dso_local global i32* null, align 8
@identity_either_char_to_other = common dso_local global i8* null, align 8
@iconv_convert = common dso_local global i8* null, align 8
@target_char_to_host_func = common dso_local global i8* null, align 8
@target_char_to_host_baton = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charset*, %struct.charset*)* @set_host_and_target_charsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_host_and_target_charsets(%struct.charset* %0, %struct.charset* %1) #0 {
  %3 = alloca %struct.charset*, align 8
  %4 = alloca %struct.charset*, align 8
  %5 = alloca %struct.translation*, align 8
  %6 = alloca %struct.translation*, align 8
  store %struct.charset* %0, %struct.charset** %3, align 8
  store %struct.charset* %1, %struct.charset** %4, align 8
  %7 = load %struct.charset*, %struct.charset** %3, align 8
  %8 = icmp ne %struct.charset* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.charset*, %struct.charset** %4, align 8
  %11 = icmp ne %struct.charset* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.charset*, %struct.charset** %3, align 8
  store %struct.charset* %13, %struct.charset** @current_host_charset, align 8
  %14 = load %struct.charset*, %struct.charset** %4, align 8
  store %struct.charset* %14, %struct.charset** @current_target_charset, align 8
  br label %163

15:                                               ; preds = %9
  %16 = load %struct.charset*, %struct.charset** %3, align 8
  %17 = getelementptr inbounds %struct.charset, %struct.charset* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.charset*, %struct.charset** %4, align 8
  %20 = getelementptr inbounds %struct.charset, %struct.charset* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call %struct.translation* @lookup_translation(i8* %18, i8* %21)
  store %struct.translation* %22, %struct.translation** %5, align 8
  %23 = load %struct.charset*, %struct.charset** %4, align 8
  %24 = getelementptr inbounds %struct.charset, %struct.charset* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.charset*, %struct.charset** %3, align 8
  %27 = getelementptr inbounds %struct.charset, %struct.charset* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call %struct.translation* @lookup_translation(i8* %25, i8* %28)
  store %struct.translation* %29, %struct.translation** %6, align 8
  %30 = load %struct.charset*, %struct.charset** %3, align 8
  %31 = load %struct.charset*, %struct.charset** %4, align 8
  %32 = icmp ne %struct.charset* %30, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %15
  %34 = load %struct.translation*, %struct.translation** %5, align 8
  %35 = icmp ne %struct.translation* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.translation*, %struct.translation** %5, align 8
  %38 = getelementptr inbounds %struct.translation, %struct.translation* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.charset*, %struct.charset** %3, align 8
  %43 = load %struct.charset*, %struct.charset** %4, align 8
  %44 = call i64 @check_iconv_cache(i32* @cached_iconv_host_to_target, %struct.charset* %42, %struct.charset* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.charset*, %struct.charset** %3, align 8
  %48 = getelementptr inbounds %struct.charset, %struct.charset* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.charset*, %struct.charset** %4, align 8
  %51 = getelementptr inbounds %struct.charset, %struct.charset* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %52)
  br label %54

54:                                               ; preds = %46, %41
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.translation*, %struct.translation** %6, align 8
  %57 = icmp ne %struct.translation* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.translation*, %struct.translation** %6, align 8
  %60 = getelementptr inbounds %struct.translation, %struct.translation* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %77, label %63

63:                                               ; preds = %58, %55
  %64 = load %struct.charset*, %struct.charset** %4, align 8
  %65 = load %struct.charset*, %struct.charset** %3, align 8
  %66 = call i64 @check_iconv_cache(i32* @cached_iconv_target_to_host, %struct.charset* %64, %struct.charset* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.charset*, %struct.charset** %4, align 8
  %70 = getelementptr inbounds %struct.charset, %struct.charset* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.charset*, %struct.charset** %3, align 8
  %73 = getelementptr inbounds %struct.charset, %struct.charset* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %71, i8* %74)
  br label %76

76:                                               ; preds = %68, %63
  br label %77

77:                                               ; preds = %76, %58
  br label %78

78:                                               ; preds = %77, %15
  %79 = load %struct.translation*, %struct.translation** %6, align 8
  %80 = icmp ne %struct.translation* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.translation*, %struct.translation** %6, align 8
  %83 = getelementptr inbounds %struct.translation, %struct.translation* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.translation*, %struct.translation** %6, align 8
  %88 = getelementptr inbounds %struct.translation, %struct.translation* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* @c_target_char_has_backslash_escape_func, align 8
  %90 = load %struct.translation*, %struct.translation** %6, align 8
  %91 = getelementptr inbounds %struct.translation, %struct.translation* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* @c_target_char_has_backslash_escape_baton, align 4
  br label %95

93:                                               ; preds = %81, %78
  %94 = load i64, i64* @default_c_target_char_has_backslash_escape, align 8
  store i64 %94, i64* @c_target_char_has_backslash_escape_func, align 8
  br label %95

95:                                               ; preds = %93, %86
  %96 = load %struct.translation*, %struct.translation** %5, align 8
  %97 = icmp ne %struct.translation* %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load %struct.translation*, %struct.translation** %5, align 8
  %100 = getelementptr inbounds %struct.translation, %struct.translation* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.translation*, %struct.translation** %5, align 8
  %105 = getelementptr inbounds %struct.translation, %struct.translation* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* @c_parse_backslash_func, align 8
  %107 = load %struct.translation*, %struct.translation** %5, align 8
  %108 = getelementptr inbounds %struct.translation, %struct.translation* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* @c_parse_backslash_baton, align 4
  br label %112

110:                                              ; preds = %98, %95
  %111 = load i64, i64* @default_c_parse_backslash, align 8
  store i64 %111, i64* @c_parse_backslash_func, align 8
  br label %112

112:                                              ; preds = %110, %103
  %113 = load %struct.translation*, %struct.translation** %5, align 8
  %114 = icmp ne %struct.translation* %113, null
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load %struct.translation*, %struct.translation** %5, align 8
  %117 = getelementptr inbounds %struct.translation, %struct.translation* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.translation*, %struct.translation** %5, align 8
  %122 = getelementptr inbounds %struct.translation, %struct.translation* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** @host_char_to_target_func, align 8
  %124 = load %struct.translation*, %struct.translation** %5, align 8
  %125 = getelementptr inbounds %struct.translation, %struct.translation* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** @host_char_to_target_baton, align 8
  br label %136

127:                                              ; preds = %115, %112
  %128 = load %struct.charset*, %struct.charset** %3, align 8
  %129 = load %struct.charset*, %struct.charset** %4, align 8
  %130 = icmp eq %struct.charset* %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i8*, i8** @identity_either_char_to_other, align 8
  store i8* %132, i8** @host_char_to_target_func, align 8
  br label %135

133:                                              ; preds = %127
  %134 = load i8*, i8** @iconv_convert, align 8
  store i8* %134, i8** @host_char_to_target_func, align 8
  store i32* @cached_iconv_host_to_target, i32** @host_char_to_target_baton, align 8
  br label %135

135:                                              ; preds = %133, %131
  br label %136

136:                                              ; preds = %135, %120
  %137 = load %struct.translation*, %struct.translation** %6, align 8
  %138 = icmp ne %struct.translation* %137, null
  br i1 %138, label %139, label %151

139:                                              ; preds = %136
  %140 = load %struct.translation*, %struct.translation** %6, align 8
  %141 = getelementptr inbounds %struct.translation, %struct.translation* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = load %struct.translation*, %struct.translation** %6, align 8
  %146 = getelementptr inbounds %struct.translation, %struct.translation* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** @target_char_to_host_func, align 8
  %148 = load %struct.translation*, %struct.translation** %6, align 8
  %149 = getelementptr inbounds %struct.translation, %struct.translation* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  store i32* %150, i32** @target_char_to_host_baton, align 8
  br label %160

151:                                              ; preds = %139, %136
  %152 = load %struct.charset*, %struct.charset** %3, align 8
  %153 = load %struct.charset*, %struct.charset** %4, align 8
  %154 = icmp eq %struct.charset* %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i8*, i8** @identity_either_char_to_other, align 8
  store i8* %156, i8** @target_char_to_host_func, align 8
  br label %159

157:                                              ; preds = %151
  %158 = load i8*, i8** @iconv_convert, align 8
  store i8* %158, i8** @target_char_to_host_func, align 8
  store i32* @cached_iconv_target_to_host, i32** @target_char_to_host_baton, align 8
  br label %159

159:                                              ; preds = %157, %155
  br label %160

160:                                              ; preds = %159, %144
  %161 = load %struct.charset*, %struct.charset** %3, align 8
  store %struct.charset* %161, %struct.charset** @current_host_charset, align 8
  %162 = load %struct.charset*, %struct.charset** %4, align 8
  store %struct.charset* %162, %struct.charset** @current_target_charset, align 8
  br label %163

163:                                              ; preds = %160, %12
  ret void
}

declare dso_local %struct.translation* @lookup_translation(i8*, i8*) #1

declare dso_local i64 @check_iconv_cache(i32*, %struct.charset*, %struct.charset*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
