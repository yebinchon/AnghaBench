; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_iostat.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_iostat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32* }

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"T:v\00", align 1
@optarg = common dso_local global i32* null, align 8
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"no pools available\0A\00", align 1
@refresh_iostat = common dso_local global i32 0, align 4
@get_namewidth = common dso_local global i32 0, align 4
@timestamp_fmt = common dso_local global i64 0, align 8
@NODATE = common dso_local global i64 0, align 8
@print_iostat = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_iostat(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load i64, i64* @B_FALSE, align 8
  store i64 %14, i64* %12, align 8
  br label %15

15:                                               ; preds = %35, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %35 [
    i32 84, label %22
    i32 118, label %26
    i32 63, label %28
  ]

22:                                               ; preds = %20
  %23 = load i32*, i32** @optarg, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_timestamp_arg(i32 %24)
  br label %35

26:                                               ; preds = %20
  %27 = load i64, i64* @B_TRUE, align 8
  store i64 %27, i64* %12, align 8
  br label %35

28:                                               ; preds = %20
  %29 = load i32, i32* @stderr, align 4
  %30 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @optopt, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* %30, i32 %31)
  %33 = load i64, i64* @B_FALSE, align 8
  %34 = call i32 @usage(i64 %33)
  br label %35

35:                                               ; preds = %28, %20, %26, %22
  br label %15

36:                                               ; preds = %15
  %37 = load i64, i64* @optind, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i64, i64* @optind, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42
  store i8** %44, i8*** %5, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = call i32 @get_interval_count(i32* %4, i8** %45, i64* %9, i64* %10)
  store i32 0, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = call i32* @pool_list_get(i32 %47, i8** %48, i32* null, i32* %7)
  store i32* %49, i32** %11, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %154

52:                                               ; preds = %36
  %53 = load i32*, i32** %11, align 8
  %54 = call i64 @pool_list_count(i32* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @pool_list_free(i32* %60)
  store i32 1, i32* %3, align 4
  br label %154

62:                                               ; preds = %56, %52
  %63 = load i32*, i32** %11, align 8
  %64 = call i64 @pool_list_count(i32* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i64, i64* %9, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @pool_list_free(i32* %70)
  %72 = load i32, i32* @stderr, align 4
  %73 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* %73)
  store i32 1, i32* %3, align 4
  br label %154

75:                                               ; preds = %66, %62
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i32* %76, i32** %77, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i64 %78, i64* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %147, %75
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @pool_list_update(i32* %83)
  %85 = load i32*, i32** %11, align 8
  %86 = call i64 @pool_list_count(i32* %85)
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %150

90:                                               ; preds = %82
  %91 = load i32*, i32** %11, align 8
  %92 = load i64, i64* @B_FALSE, align 8
  %93 = load i32, i32* @refresh_iostat, align 4
  %94 = call i32 @pool_list_iter(i32* %91, i64 %92, i32 %93, %struct.TYPE_5__* %13)
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load i64, i64* @B_FALSE, align 8
  %98 = load i32, i32* @get_namewidth, align 4
  %99 = call i32 @pool_list_iter(i32* %96, i64 %97, i32 %98, %struct.TYPE_5__* %13)
  %100 = load i64, i64* @timestamp_fmt, align 8
  %101 = load i64, i64* @NODATE, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %90
  %104 = load i64, i64* @timestamp_fmt, align 8
  %105 = call i32 @print_timestamp(i64 %104)
  br label %106

106:                                              ; preds = %103, %90
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i64, i64* %12, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111, %106
  %115 = call i32 @print_iostat_header(%struct.TYPE_5__* %13)
  br label %116

116:                                              ; preds = %114, %111
  %117 = load i32*, i32** %11, align 8
  %118 = load i64, i64* @B_FALSE, align 8
  %119 = load i32, i32* @print_iostat, align 4
  %120 = call i32 @pool_list_iter(i32* %117, i64 %118, i32 %119, %struct.TYPE_5__* %13)
  %121 = load i32, i32* %8, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load i64, i64* %12, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = call i32 @print_iostat_separator(%struct.TYPE_5__* %13)
  br label %128

128:                                              ; preds = %126, %123, %116
  %129 = load i64, i64* %12, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %128
  %134 = load i32, i32* @stdout, align 4
  %135 = call i32 @fflush(i32 %134)
  %136 = load i64, i64* %9, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %150

139:                                              ; preds = %133
  %140 = load i64, i64* %10, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load i64, i64* %10, align 8
  %144 = add i64 %143, -1
  store i64 %144, i64* %10, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %150

147:                                              ; preds = %142, %139
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @sleep(i64 %148)
  br label %82

150:                                              ; preds = %146, %138, %89
  %151 = load i32*, i32** %11, align 8
  %152 = call i32 @pool_list_free(i32* %151)
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %150, %69, %59, %51
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @get_timestamp_arg(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i64) #1

declare dso_local i32 @get_interval_count(i32*, i8**, i64*, i64*) #1

declare dso_local i32* @pool_list_get(i32, i8**, i32*, i32*) #1

declare dso_local i64 @pool_list_count(i32*) #1

declare dso_local i32 @pool_list_free(i32*) #1

declare dso_local i32 @pool_list_update(i32*) #1

declare dso_local i32 @pool_list_iter(i32*, i64, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @print_timestamp(i64) #1

declare dso_local i32 @print_iostat_header(%struct.TYPE_5__*) #1

declare dso_local i32 @print_iostat_separator(%struct.TYPE_5__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @sleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
