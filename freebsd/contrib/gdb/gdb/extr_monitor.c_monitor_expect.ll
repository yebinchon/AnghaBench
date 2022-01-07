; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_expect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@monitor_debug_p = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"MON Expecting '%s'\0A\00", align 1
@immediate_quit = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @monitor_expect(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i64, i64* @monitor_debug_p, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = mul nsw i32 %19, 4
  %21 = add nsw i32 %20, 1
  %22 = call i64 @alloca(i32 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @monitor_printable_string(i8* %24, i8* %25, i32 0)
  %27 = load i32, i32* @gdb_stdlog, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @fprintf_unfiltered(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %17, %3
  %31 = load i32, i32* @immediate_quit, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @immediate_quit, align 4
  br label %33

33:                                               ; preds = %30, %48, %137
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  store i8 0, i8* %40, align 1
  %41 = load i32, i32* @immediate_quit, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* @immediate_quit, align 4
  store i32 -1, i32* %4, align 4
  br label %138

43:                                               ; preds = %36
  %44 = load i32, i32* @timeout, align 4
  %45 = call i32 @readchar(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %33

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  store i8 %51, i8* %52, align 1
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  br label %59

56:                                               ; preds = %33
  %57 = load i32, i32* @timeout, align 4
  %58 = call i32 @readchar(i32 %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %64, %59
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load i32, i32* @immediate_quit, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* @immediate_quit, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %6, align 8
  store i8 0, i8* %83, align 1
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %4, align 4
  br label %138

88:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %138

89:                                               ; preds = %70
  br label %137

90:                                               ; preds = %64
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sub nsw i64 %95, 1
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %128, %90
  %99 = load i32, i32* %12, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %131

101:                                              ; preds = %98
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %101
  %111 = load i8*, i8** %5, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = sub i64 0, %114
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @memcmp(i8* %111, i8* %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %110
  %121 = load i8*, i8** %5, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  store i8* %125, i8** %8, align 8
  br label %131

126:                                              ; preds = %110
  br label %127

127:                                              ; preds = %126, %101
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %12, align 4
  br label %98

131:                                              ; preds = %120, %98
  %132 = load i32, i32* %12, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i8*, i8** %5, align 8
  store i8* %135, i8** %8, align 8
  br label %136

136:                                              ; preds = %134, %131
  br label %137

137:                                              ; preds = %136, %89
  br label %33

138:                                              ; preds = %88, %82, %39
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @monitor_printable_string(i8*, i8*, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i8*) #1

declare dso_local i32 @readchar(i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
