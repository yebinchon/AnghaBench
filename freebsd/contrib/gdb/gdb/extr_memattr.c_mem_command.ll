; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c_mem_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c_mem_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_attrib = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"No mem\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"no lo address\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"no hi address\00", align 1
@default_mem_attrib = common dso_local global %struct.mem_attrib zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@MEM_RW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@MEM_RO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"wo\00", align 1
@MEM_WO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@MEM_WIDTH_8 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"region bounds not 16 bit aligned\00", align 1
@MEM_WIDTH_16 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"region bounds not 32 bit aligned\00", align 1
@MEM_WIDTH_32 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"region bounds not 64 bit aligned\00", align 1
@MEM_WIDTH_64 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"nocache\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"unknown attribute: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @mem_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mem_attrib, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @error_no_arg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @strtok(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @parse_and_eval_address(i8* %21)
  store i32 %22, i32* %5, align 4
  %23 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @parse_and_eval_address(i8* %29)
  store i32 %30, i32* %6, align 4
  %31 = bitcast %struct.mem_attrib* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 bitcast (%struct.mem_attrib* @default_mem_attrib to i8*), i64 20, i1 false)
  br label %32

32:                                               ; preds = %137, %28
  %33 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %33, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %138

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @MEM_RW, align 4
  %41 = getelementptr inbounds %struct.mem_attrib, %struct.mem_attrib* %8, i32 0, i32 4
  store i32 %40, i32* %41, align 4
  br label %137

42:                                               ; preds = %35
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @MEM_RO, align 4
  %48 = getelementptr inbounds %struct.mem_attrib, %struct.mem_attrib* %8, i32 0, i32 4
  store i32 %47, i32* %48, align 4
  br label %136

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @MEM_WO, align 4
  %55 = getelementptr inbounds %struct.mem_attrib, %struct.mem_attrib* %8, i32 0, i32 4
  store i32 %54, i32* %55, align 4
  br label %135

56:                                               ; preds = %49
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @MEM_WIDTH_8, align 4
  %62 = getelementptr inbounds %struct.mem_attrib, %struct.mem_attrib* %8, i32 0, i32 3
  store i32 %61, i32* %62, align 4
  br label %134

63:                                               ; preds = %56
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = srem i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = srem i32 %72, 2
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %67
  %76 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i32, i32* @MEM_WIDTH_16, align 4
  %79 = getelementptr inbounds %struct.mem_attrib, %struct.mem_attrib* %8, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  br label %133

80:                                               ; preds = %63
  %81 = load i8*, i8** %7, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i32, i32* %5, align 4
  %86 = srem i32 %85, 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = srem i32 %89, 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88, %84
  %93 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i32, i32* @MEM_WIDTH_32, align 4
  %96 = getelementptr inbounds %struct.mem_attrib, %struct.mem_attrib* %8, i32 0, i32 3
  store i32 %95, i32* %96, align 4
  br label %132

97:                                               ; preds = %80
  %98 = load i8*, i8** %7, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load i32, i32* %5, align 4
  %103 = srem i32 %102, 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %6, align 4
  %107 = srem i32 %106, 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105, %101
  %110 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %105
  %112 = load i32, i32* @MEM_WIDTH_64, align 4
  %113 = getelementptr inbounds %struct.mem_attrib, %struct.mem_attrib* %8, i32 0, i32 3
  store i32 %112, i32* %113, align 4
  br label %131

114:                                              ; preds = %97
  %115 = load i8*, i8** %7, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.mem_attrib, %struct.mem_attrib* %8, i32 0, i32 1
  store i32 1, i32* %119, align 4
  br label %130

120:                                              ; preds = %114
  %121 = load i8*, i8** %7, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.mem_attrib, %struct.mem_attrib* %8, i32 0, i32 1
  store i32 0, i32* %125, align 4
  br label %129

126:                                              ; preds = %120
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %126, %124
  br label %130

130:                                              ; preds = %129, %118
  br label %131

131:                                              ; preds = %130, %111
  br label %132

132:                                              ; preds = %131, %94
  br label %133

133:                                              ; preds = %132, %77
  br label %134

134:                                              ; preds = %133, %60
  br label %135

135:                                              ; preds = %134, %53
  br label %136

136:                                              ; preds = %135, %46
  br label %137

137:                                              ; preds = %136, %39
  br label %32

138:                                              ; preds = %32
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @create_mem_region(i32 %139, i32 %140, %struct.mem_attrib* %8)
  ret void
}

declare dso_local i32 @error_no_arg(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @parse_and_eval_address(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @create_mem_region(i32, i32, %struct.mem_attrib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
