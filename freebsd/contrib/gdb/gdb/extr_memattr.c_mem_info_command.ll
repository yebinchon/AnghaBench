; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c_mem_info_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c_mem_info_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i64, %struct.mem_attrib, i64, i64, i32, %struct.mem_region* }
%struct.mem_attrib = type { i32, i32, i64, i64, i64 }

@mem_region_chain = common dso_local global %struct.mem_region* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"There are no memory regions defined.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Num \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Enb \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Low Addr   \00", align 1
@TARGET_ADDR_BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"High Addr  \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Attrs \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%-3d %-3c\09\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"08l\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"016l\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"0x100000000\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"0x10000000000000000\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"rw \00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ro \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"wo \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"8 \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"16 \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"32 \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"64 \00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"cache \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"nocache \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @mem_info_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_info_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_region*, align 8
  %6 = alloca %struct.mem_attrib*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mem_region*, %struct.mem_region** @mem_region_chain, align 8
  %9 = icmp ne %struct.mem_region* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %129

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32, i32* @TARGET_ADDR_BIT, align 4
  %17 = icmp sgt i32 %16, 32
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %12
  %21 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %22 = load i32, i32* @TARGET_ADDR_BIT, align 4
  %23 = icmp sgt i32 %22, 32
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %29 = load %struct.mem_region*, %struct.mem_region** @mem_region_chain, align 8
  store %struct.mem_region* %29, %struct.mem_region** %5, align 8
  br label %30

30:                                               ; preds = %125, %26
  %31 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %32 = icmp ne %struct.mem_region* %31, null
  br i1 %32, label %33, label %129

33:                                               ; preds = %30
  %34 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %35 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %38 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 121, i32 110
  %43 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %36, i32 %42)
  %44 = load i32, i32* @TARGET_ADDR_BIT, align 4
  %45 = icmp sle i32 %44, 32
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %48 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @local_hex_string_custom(i64 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store i8* %50, i8** %7, align 8
  br label %56

51:                                               ; preds = %33
  %52 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %53 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @local_hex_string_custom(i64 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* @TARGET_ADDR_BIT, align 4
  %60 = icmp sle i32 %59, 32
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %63 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %7, align 8
  br label %72

67:                                               ; preds = %61
  %68 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %69 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i8* @local_hex_string_custom(i64 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store i8* %71, i8** %7, align 8
  br label %72

72:                                               ; preds = %67, %66
  br label %85

73:                                               ; preds = %56
  %74 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %75 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8** %7, align 8
  br label %84

79:                                               ; preds = %73
  %80 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %81 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i8* @local_hex_string_custom(i64 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %83, i8** %7, align 8
  br label %84

84:                                               ; preds = %79, %78
  br label %85

85:                                               ; preds = %84, %72
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %86)
  %88 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %89 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %88, i32 0, i32 1
  store %struct.mem_attrib* %89, %struct.mem_attrib** %6, align 8
  %90 = load %struct.mem_attrib*, %struct.mem_attrib** %6, align 8
  %91 = getelementptr inbounds %struct.mem_attrib, %struct.mem_attrib* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %99 [
    i32 134, label %93
    i32 135, label %95
    i32 128, label %97
  ]

93:                                               ; preds = %85
  %94 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  br label %99

95:                                               ; preds = %85
  %96 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %99

97:                                               ; preds = %85
  %98 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %99

99:                                               ; preds = %85, %97, %95, %93
  %100 = load %struct.mem_attrib*, %struct.mem_attrib** %6, align 8
  %101 = getelementptr inbounds %struct.mem_attrib, %struct.mem_attrib* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %112 [
    i32 130, label %103
    i32 133, label %105
    i32 132, label %107
    i32 131, label %109
    i32 129, label %111
  ]

103:                                              ; preds = %99
  %104 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  br label %112

105:                                              ; preds = %99
  %106 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  br label %112

107:                                              ; preds = %99
  %108 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  br label %112

109:                                              ; preds = %99
  %110 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  br label %112

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %99, %111, %109, %107, %105, %103
  %113 = load %struct.mem_attrib*, %struct.mem_attrib** %6, align 8
  %114 = getelementptr inbounds %struct.mem_attrib, %struct.mem_attrib* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  br label %121

119:                                              ; preds = %112
  %120 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %117
  %122 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %123 = load i32, i32* @gdb_stdout, align 4
  %124 = call i32 @gdb_flush(i32 %123)
  br label %125

125:                                              ; preds = %121
  %126 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %127 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %126, i32 0, i32 5
  %128 = load %struct.mem_region*, %struct.mem_region** %127, align 8
  store %struct.mem_region* %128, %struct.mem_region** %5, align 8
  br label %30

129:                                              ; preds = %10, %30
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i8* @local_hex_string_custom(i64, i8*) #1

declare dso_local i32 @gdb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
