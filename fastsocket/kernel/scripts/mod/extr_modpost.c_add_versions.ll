; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_add_versions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_add_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.module = type { i32, %struct.symbol* }
%struct.symbol = type { i32, i32, i32, %struct.module*, %struct.symbol*, i32 }

@have_vmlinux = common dso_local global i64 0, align 8
@warn_unresolved = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"\22%s\22 [%s.ko] undefined!\0A\00", align 1
@modversions = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"static const struct modversion_info ____versions[]\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"__used\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"__attribute__((section(\22__versions\22))) = {\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\22%s\22 [%s.ko] has no CRC!\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\09{ %#8x, \22%s\22 },\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer*, %struct.module*)* @add_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_versions(%struct.buffer* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca i32, align 4
  store %struct.buffer* %0, %struct.buffer** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.module*, %struct.module** %5, align 8
  %10 = getelementptr inbounds %struct.module, %struct.module* %9, i32 0, i32 1
  %11 = load %struct.symbol*, %struct.symbol** %10, align 8
  store %struct.symbol* %11, %struct.symbol** %6, align 8
  br label %12

12:                                               ; preds = %73, %2
  %13 = load %struct.symbol*, %struct.symbol** %6, align 8
  %14 = icmp ne %struct.symbol* %13, null
  br i1 %14, label %15, label %77

15:                                               ; preds = %12
  %16 = load %struct.symbol*, %struct.symbol** %6, align 8
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.symbol* @find_symbol(i32 %18)
  store %struct.symbol* %19, %struct.symbol** %7, align 8
  %20 = load %struct.symbol*, %struct.symbol** %7, align 8
  %21 = icmp ne %struct.symbol* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.symbol*, %struct.symbol** %7, align 8
  %24 = getelementptr inbounds %struct.symbol, %struct.symbol* %23, i32 0, i32 3
  %25 = load %struct.module*, %struct.module** %24, align 8
  %26 = load %struct.module*, %struct.module** %5, align 8
  %27 = icmp eq %struct.module* %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %22, %15
  %29 = load i64, i64* @have_vmlinux, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  %32 = load %struct.symbol*, %struct.symbol** %6, align 8
  %33 = getelementptr inbounds %struct.symbol, %struct.symbol* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* @warn_unresolved, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.symbol*, %struct.symbol** %6, align 8
  %41 = getelementptr inbounds %struct.symbol, %struct.symbol* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.module*, %struct.module** %5, align 8
  %44 = getelementptr inbounds %struct.module, %struct.module* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  br label %55

47:                                               ; preds = %36
  %48 = load %struct.symbol*, %struct.symbol** %6, align 8
  %49 = getelementptr inbounds %struct.symbol, %struct.symbol* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.module*, %struct.module** %5, align 8
  %52 = getelementptr inbounds %struct.module, %struct.module* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @merror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  store i32 1, i32* %8, align 4
  br label %55

55:                                               ; preds = %47, %39
  br label %56

56:                                               ; preds = %55, %31, %28
  br label %73

57:                                               ; preds = %22
  %58 = load %struct.symbol*, %struct.symbol** %7, align 8
  %59 = getelementptr inbounds %struct.symbol, %struct.symbol* %58, i32 0, i32 3
  %60 = load %struct.module*, %struct.module** %59, align 8
  %61 = load %struct.symbol*, %struct.symbol** %6, align 8
  %62 = getelementptr inbounds %struct.symbol, %struct.symbol* %61, i32 0, i32 3
  store %struct.module* %60, %struct.module** %62, align 8
  %63 = load %struct.symbol*, %struct.symbol** %7, align 8
  %64 = getelementptr inbounds %struct.symbol, %struct.symbol* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.symbol*, %struct.symbol** %6, align 8
  %67 = getelementptr inbounds %struct.symbol, %struct.symbol* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.symbol*, %struct.symbol** %7, align 8
  %69 = getelementptr inbounds %struct.symbol, %struct.symbol* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.symbol*, %struct.symbol** %6, align 8
  %72 = getelementptr inbounds %struct.symbol, %struct.symbol* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %57, %56
  %74 = load %struct.symbol*, %struct.symbol** %6, align 8
  %75 = getelementptr inbounds %struct.symbol, %struct.symbol* %74, i32 0, i32 4
  %76 = load %struct.symbol*, %struct.symbol** %75, align 8
  store %struct.symbol* %76, %struct.symbol** %6, align 8
  br label %12

77:                                               ; preds = %12
  %78 = load i32, i32* @modversions, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %133

82:                                               ; preds = %77
  %83 = load %struct.buffer*, %struct.buffer** %4, align 8
  %84 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.buffer*, %struct.buffer** %4, align 8
  %86 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %85, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.buffer*, %struct.buffer** %4, align 8
  %88 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.buffer*, %struct.buffer** %4, align 8
  %90 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.module*, %struct.module** %5, align 8
  %92 = getelementptr inbounds %struct.module, %struct.module* %91, i32 0, i32 1
  %93 = load %struct.symbol*, %struct.symbol** %92, align 8
  store %struct.symbol* %93, %struct.symbol** %6, align 8
  br label %94

94:                                               ; preds = %125, %82
  %95 = load %struct.symbol*, %struct.symbol** %6, align 8
  %96 = icmp ne %struct.symbol* %95, null
  br i1 %96, label %97, label %129

97:                                               ; preds = %94
  %98 = load %struct.symbol*, %struct.symbol** %6, align 8
  %99 = getelementptr inbounds %struct.symbol, %struct.symbol* %98, i32 0, i32 3
  %100 = load %struct.module*, %struct.module** %99, align 8
  %101 = icmp ne %struct.module* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %125

103:                                              ; preds = %97
  %104 = load %struct.symbol*, %struct.symbol** %6, align 8
  %105 = getelementptr inbounds %struct.symbol, %struct.symbol* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %103
  %109 = load %struct.symbol*, %struct.symbol** %6, align 8
  %110 = getelementptr inbounds %struct.symbol, %struct.symbol* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.module*, %struct.module** %5, align 8
  %113 = getelementptr inbounds %struct.module, %struct.module* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %111, i32 %114)
  br label %125

116:                                              ; preds = %103
  %117 = load %struct.buffer*, %struct.buffer** %4, align 8
  %118 = load %struct.symbol*, %struct.symbol** %6, align 8
  %119 = getelementptr inbounds %struct.symbol, %struct.symbol* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.symbol*, %struct.symbol** %6, align 8
  %122 = getelementptr inbounds %struct.symbol, %struct.symbol* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %116, %108, %102
  %126 = load %struct.symbol*, %struct.symbol** %6, align 8
  %127 = getelementptr inbounds %struct.symbol, %struct.symbol* %126, i32 0, i32 4
  %128 = load %struct.symbol*, %struct.symbol** %127, align 8
  store %struct.symbol* %128, %struct.symbol** %6, align 8
  br label %94

129:                                              ; preds = %94
  %130 = load %struct.buffer*, %struct.buffer** %4, align 8
  %131 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %129, %80
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.symbol* @find_symbol(i32) #1

declare dso_local i32 @warn(i8*, i32, i32) #1

declare dso_local i32 @merror(i8*, i32, i32) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
