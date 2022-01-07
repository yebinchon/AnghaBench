; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_print.c_dtrace_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_print.c_dtrace_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i64, i64, i32, i32* }
%struct.TYPE_8__ = type { i64, i32, i32** }

@CTF_ERR = common dso_local global i64 0, align 8
@dt_print_member = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_print(i32* %0, i32* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %12, align 8
  br label %20

20:                                               ; preds = %33, %5
  %21 = load i8*, i8** %12, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %12, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 96
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ false, %20 ], [ %29, %25 ]
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %12, align 8
  br label %20

36:                                               ; preds = %30
  %37 = load i8*, i8** %12, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 96
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %139

42:                                               ; preds = %36
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = add nsw i64 %47, 1
  %49 = trunc i64 %48 to i32
  %50 = call i8* @alloca(i32 %49)
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @bcopy(i8* %51, i8* %52, i32 %58)
  %60 = load i8*, i8** %13, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = getelementptr inbounds i8, i8* %60, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load i32*, i32** %7, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call %struct.TYPE_8__* @dt_module_lookup_by_name(i32* %67, i8* %68)
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %16, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %71 = icmp eq %struct.TYPE_8__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %139

73:                                               ; preds = %42
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %73
  %79 = load i8*, i8** %12, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = call i8* @atoi(i8* %80)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %18, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = call i8* @strchr(i8* %84, i8 signext 96)
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %18, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88, %78
  store i32 0, i32* %6, align 4
  br label %139

95:                                               ; preds = %88
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %17, align 8
  br label %107

103:                                              ; preds = %73
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %106 = call i32* @dt_module_getctf(i32* %104, %struct.TYPE_8__* %105)
  store i32* %106, i32** %17, align 8
  br label %107

107:                                              ; preds = %103, %95
  %108 = load i8*, i8** %12, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = call i8* @atoi(i8* %109)
  store i8* %110, i8** %15, align 8
  %111 = load i32*, i32** %17, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load i32*, i32** %17, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = call i64 @ctf_type_kind(i32* %114, i8* %115)
  %117 = load i64, i64* @CTF_ERR, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113, %107
  store i32 0, i32* %6, align 4
  br label %139

120:                                              ; preds = %113
  %121 = load i32*, i32** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 5
  store i32* %121, i32** %122, align 8
  %123 = load i32, i32* %10, align 4
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  store i32 %123, i32* %124, align 8
  %125 = load i32*, i32** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32* %125, i32** %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i64 0, i64* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i64 0, i64* %128, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32* %129, i32** %130, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = load i32, i32* @dt_print_member, align 4
  %135 = call i32 @ctf_type_visit(i32* %132, i8* %133, i32 %134, %struct.TYPE_7__* %14)
  %136 = call i32 @dt_print_trailing_braces(%struct.TYPE_7__* %14, i32 0)
  %137 = load i64, i64* %11, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %120, %119, %94, %72, %41
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @dt_module_lookup_by_name(i32*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @dt_module_getctf(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @ctf_type_kind(i32*, i8*) #1

declare dso_local i32 @ctf_type_visit(i32*, i8*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @dt_print_trailing_braces(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
