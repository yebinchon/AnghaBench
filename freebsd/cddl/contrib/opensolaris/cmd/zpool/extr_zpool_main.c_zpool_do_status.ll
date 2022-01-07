; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"vxDT:\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@optarg = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@timestamp_fmt = common dso_local global i64 0, align 8
@NODATE = common dso_local global i64 0, align 8
@status_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"no pools available\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"all pools are healthy\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_status(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = bitcast %struct.TYPE_3__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 56, i1 false)
  br label %12

12:                                               ; preds = %39, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %39 [
    i32 118, label %19
    i32 120, label %22
    i32 68, label %25
    i32 84, label %28
    i32 63, label %32
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** @B_TRUE, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 5
  store i8* %20, i8** %21, align 8
  br label %39

22:                                               ; preds = %17
  %23 = load i8*, i8** @B_TRUE, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  br label %39

25:                                               ; preds = %17
  %26 = load i8*, i8** @B_TRUE, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  store i8* %26, i8** %27, align 8
  br label %39

28:                                               ; preds = %17
  %29 = load i32*, i32** @optarg, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_timestamp_arg(i32 %30)
  br label %39

32:                                               ; preds = %17
  %33 = load i32, i32* @stderr, align 4
  %34 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @optopt, align 4
  %36 = call i32 @fprintf(i32 %33, i8* %34, i32 %35)
  %37 = load i32, i32* @B_FALSE, align 4
  %38 = call i32 @usage(i32 %37)
  br label %39

39:                                               ; preds = %32, %17, %28, %25, %22, %19
  br label %12

40:                                               ; preds = %12
  %41 = load i64, i64* @optind, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load i64, i64* @optind, align 8
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 %46
  store i8** %48, i8*** %5, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = call i32 @get_interval_count(i32* %4, i8** %49, i64* %8, i64* %9)
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load i8*, i8** @B_TRUE, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  br label %56

56:                                               ; preds = %53, %40
  %57 = load i8*, i8** @B_TRUE, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  store i8* %57, i8** %58, align 8
  br label %59

59:                                               ; preds = %114, %56
  %60 = load i64, i64* @timestamp_fmt, align 8
  %61 = load i64, i64* @NODATE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* @timestamp_fmt, align 8
  %65 = call i32 @print_timestamp(i64 %64)
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* %4, align 4
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** @B_TRUE, align 8
  %70 = load i32, i32* @status_callback, align 4
  %71 = call i32 @for_each_pool(i32 %67, i8** %68, i8* %69, i32* null, i32 %70, %struct.TYPE_3__* %10)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %80 = call i32 @printf(i8* %79)
  br label %97

81:                                               ; preds = %74, %66
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %95 = call i32 @printf(i8* %94)
  br label %96

96:                                               ; preds = %93, %89, %85, %81
  br label %97

97:                                               ; preds = %96, %78
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %118

102:                                              ; preds = %97
  %103 = load i64, i64* %8, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %117

106:                                              ; preds = %102
  %107 = load i64, i64* %9, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, -1
  store i64 %111, i64* %9, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %117

114:                                              ; preds = %109, %106
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @sleep(i64 %115)
  br label %59

117:                                              ; preds = %113, %105
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %100
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @get_timestamp_arg(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @get_interval_count(i32*, i8**, i64*, i64*) #2

declare dso_local i32 @print_timestamp(i64) #2

declare dso_local i32 @for_each_pool(i32, i8**, i8*, i32*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @sleep(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
