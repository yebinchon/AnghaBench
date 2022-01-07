; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_program.c_dt_header_provider.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_program.c_dt_header_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_8__ = type { i32, i8*, i8*, i32*, i32* }

@DT_PROVIDER_IMPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"#if _DTRACE_VERSION\0A\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@dt_header_probe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@dt_header_decl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"\0A#else\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\0A#endif\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32*)* @dt_header_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_header_provider(i32* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DT_PROVIDER_IMPL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %129

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %30, %18
  %24 = load i8*, i8** %9, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 45)
  store i8* %25, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %9, align 8
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %23

33:                                               ; preds = %23
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  store i32* %34, i32** %35, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i32* %36, i32** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = add nsw i64 %43, 1
  %45 = call i8* @alloca(i64 %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @dt_header_fmt_macro(i8* %48, i8* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = add nsw i64 %58, 1
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i8* @alloca(i64 %62)
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i8* %63, i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @dt_header_fmt_func(i8* %66, i8* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i64 @fprintf(i32* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %33
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @errno, align 4
  %78 = call i32 @dt_set_errno(i32* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %129

79:                                               ; preds = %33
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @dt_header_probe, align 4
  %84 = call i64 @dt_idhash_iter(i32 %82, i32 %83, %struct.TYPE_8__* %8)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 -1, i32* %4, align 4
  br label %129

87:                                               ; preds = %79
  %88 = load i32*, i32** %7, align 8
  %89 = call i64 @fprintf(i32* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* @errno, align 4
  %94 = call i32 @dt_set_errno(i32* %92, i32 %93)
  store i32 %94, i32* %4, align 4
  br label %129

95:                                               ; preds = %87
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @dt_header_decl, align 4
  %100 = call i64 @dt_idhash_iter(i32 %98, i32 %99, %struct.TYPE_8__* %8)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 -1, i32* %4, align 4
  br label %129

103:                                              ; preds = %95
  %104 = load i32*, i32** %7, align 8
  %105 = call i64 @fprintf(i32* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* @errno, align 4
  %110 = call i32 @dt_set_errno(i32* %108, i32 %109)
  store i32 %110, i32* %4, align 4
  br label %129

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @dt_header_probe, align 4
  %117 = call i64 @dt_idhash_iter(i32 %115, i32 %116, %struct.TYPE_8__* %8)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  store i32 -1, i32* %4, align 4
  br label %129

120:                                              ; preds = %111
  %121 = load i32*, i32** %7, align 8
  %122 = call i64 @fprintf(i32* %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* @errno, align 4
  %127 = call i32 @dt_set_errno(i32* %125, i32 %126)
  store i32 %127, i32* %4, align 4
  br label %129

128:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %124, %119, %107, %102, %91, %86, %75, %17
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dt_header_fmt_macro(i8*, i8*) #1

declare dso_local i32 @dt_header_fmt_func(i8*, i8*) #1

declare dso_local i64 @fprintf(i32*, i8*) #1

declare dso_local i32 @dt_set_errno(i32*, i32) #1

declare dso_local i64 @dt_idhash_iter(i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
