; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_perf.c_handle_alias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_perf.c_handle_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }

@errno = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to run '%s' when expanding alias '%s'\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Bad alias.%s string\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"alias '%s' changes environment variables\0AYou can use '!perf' in the alias to do this.\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"empty alias for %s\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"recursive alias: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8***)* @handle_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_alias(i32* %0, i8*** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.strbuf, align 8
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* @errno, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i8***, i8**** %4, align 8
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = call i8* @alias_lookup(i8* %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %155

23:                                               ; preds = %2
  %24 = load i8*, i8** %12, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 33
  br i1 %28, label %29, label %70

29:                                               ; preds = %23
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i32, i32* @PATH_MAX, align 4
  %35 = call i32 @strbuf_init(%struct.strbuf* %13, i32 %34)
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @strbuf_addstr(%struct.strbuf* %13, i8* %36)
  %38 = load i8***, i8**** %4, align 8
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i32, i32* @PATH_MAX, align 4
  %42 = call i32 @sq_quote_argv(%struct.strbuf* %13, i8** %40, i32 %41)
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @free(i8* %43)
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %12, align 8
  br label %47

47:                                               ; preds = %33, %29
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i32 @system(i8* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @WIFEXITED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @WEXITSTATUS(i32 %58)
  %60 = icmp ne i32 %59, 127
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @WEXITSTATUS(i32 %62)
  %64 = call i32 @exit(i32 %63) #3
  unreachable

65:                                               ; preds = %57, %53, %47
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %65, %23
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @split_cmdline(i8* %71, i8*** %10)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = call i32 @handle_options(i8*** %10, i32* %8, i32* %5)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i8**, i8*** %10, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 0, %88
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  %91 = load i8**, i8*** %10, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @memmove(i8** %90, i8** %91, i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = load i8**, i8*** %10, align 8
  %99 = sext i32 %97 to i64
  %100 = sub i64 0, %99
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  store i8** %101, i8*** %10, align 8
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %104, label %107

104:                                              ; preds = %85
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %104, %85
  %108 = load i8*, i8** %11, align 8
  %109 = load i8**, i8*** %10, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @strcmp(i8* %108, i8* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %114, %107
  %118 = load i8**, i8*** %10, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32*, i32** %3, align 8
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %119, %121
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = mul i64 8, %124
  %126 = trunc i64 %125 to i32
  %127 = call i8** @realloc(i8** %118, i32 %126)
  store i8** %127, i8*** %10, align 8
  %128 = load i8**, i8*** %10, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8***, i8**** %4, align 8
  %133 = load i8**, i8*** %132, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 1
  %135 = load i32*, i32** %3, align 8
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 8, %137
  %139 = trunc i64 %138 to i32
  %140 = call i32 @memcpy(i8** %131, i8** %134, i32 %139)
  %141 = load i8**, i8*** %10, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32*, i32** %3, align 8
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %142, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %141, i64 %146
  store i8* null, i8** %147, align 8
  %148 = load i8**, i8*** %10, align 8
  %149 = load i8***, i8**** %4, align 8
  store i8** %148, i8*** %149, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sub nsw i32 %150, 1
  %152 = load i32*, i32** %3, align 8
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %151
  store i32 %154, i32* %152, align 4
  store i32 1, i32* %6, align 4
  br label %155

155:                                              ; preds = %117, %2
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* @errno, align 4
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i8* @alias_lookup(i8*) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @sq_quote_argv(%struct.strbuf*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @die(i8*, i8*, ...) #1

declare dso_local i32 @split_cmdline(i8*, i8***) #1

declare dso_local i32 @handle_options(i8***, i32*, i32*) #1

declare dso_local i32 @memmove(i8**, i8**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
