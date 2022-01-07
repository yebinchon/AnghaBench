; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_get_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_get_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_buffer = type { i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macro_buffer*, %struct.macro_buffer*)* @get_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_token(%struct.macro_buffer* %0, %struct.macro_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.macro_buffer*, align 8
  %5 = alloca %struct.macro_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.macro_buffer* %0, %struct.macro_buffer** %4, align 8
  store %struct.macro_buffer* %1, %struct.macro_buffer** %5, align 8
  %10 = load %struct.macro_buffer*, %struct.macro_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.macro_buffer*, %struct.macro_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  store i8* %18, i8** %7, align 8
  %19 = load %struct.macro_buffer*, %struct.macro_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gdb_assert(i32 %21)
  br label %23

23:                                               ; preds = %134, %2
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %135

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @is_whitespace(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  br label %134

35:                                               ; preds = %27
  %36 = load %struct.macro_buffer*, %struct.macro_buffer** %4, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @get_comment(%struct.macro_buffer* %36, i8* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.macro_buffer*, %struct.macro_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %6, align 8
  br label %133

48:                                               ; preds = %35
  %49 = load %struct.macro_buffer*, %struct.macro_buffer** %4, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @get_pp_number(%struct.macro_buffer* %49, i8* %50, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %48
  %55 = load %struct.macro_buffer*, %struct.macro_buffer** %4, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @get_character_constant(%struct.macro_buffer* %55, i8* %56, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %78, label %60

60:                                               ; preds = %54
  %61 = load %struct.macro_buffer*, %struct.macro_buffer** %4, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i64 @get_string_literal(%struct.macro_buffer* %61, i8* %62, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %60
  %67 = load %struct.macro_buffer*, %struct.macro_buffer** %4, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @get_identifier(%struct.macro_buffer* %67, i8* %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.macro_buffer*, %struct.macro_buffer** %4, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i64 @get_punctuator(%struct.macro_buffer* %73, i8* %74, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %72, %66, %60, %54, %48
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.macro_buffer*, %struct.macro_buffer** %5, align 8
  %81 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = ptrtoint i8* %79 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = load %struct.macro_buffer*, %struct.macro_buffer** %4, align 8
  %87 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %85, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.macro_buffer*, %struct.macro_buffer** %5, align 8
  %94 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = sext i32 %92 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %94, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.macro_buffer*, %struct.macro_buffer** %5, align 8
  %100 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, %98
  store i32 %102, i32* %100, align 8
  store i32 1, i32* %3, align 4
  br label %136

103:                                              ; preds = %72
  %104 = load %struct.macro_buffer*, %struct.macro_buffer** %4, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = call i32 @set_token(%struct.macro_buffer* %104, i8* %105, i8* %107)
  %109 = load i8*, i8** %6, align 8
  %110 = load %struct.macro_buffer*, %struct.macro_buffer** %5, align 8
  %111 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %109 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = load %struct.macro_buffer*, %struct.macro_buffer** %4, align 8
  %117 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %115, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.macro_buffer*, %struct.macro_buffer** %5, align 8
  %124 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = sext i32 %122 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %124, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.macro_buffer*, %struct.macro_buffer** %5, align 8
  %130 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, %128
  store i32 %132, i32* %130, align 8
  store i32 1, i32* %3, align 4
  br label %136

133:                                              ; preds = %41
  br label %134

134:                                              ; preds = %133, %32
  br label %23

135:                                              ; preds = %23
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %103, %78
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @is_whitespace(i8 signext) #1

declare dso_local i64 @get_comment(%struct.macro_buffer*, i8*, i8*) #1

declare dso_local i64 @get_pp_number(%struct.macro_buffer*, i8*, i8*) #1

declare dso_local i64 @get_character_constant(%struct.macro_buffer*, i8*, i8*) #1

declare dso_local i64 @get_string_literal(%struct.macro_buffer*, i8*, i8*) #1

declare dso_local i64 @get_identifier(%struct.macro_buffer*, i8*, i8*) #1

declare dso_local i64 @get_punctuator(%struct.macro_buffer*, i8*, i8*) #1

declare dso_local i32 @set_token(%struct.macro_buffer*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
