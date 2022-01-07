; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_type = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.coff_type* }
%struct.TYPE_16__ = type { i32, %struct.coff_type* }
%struct.TYPE_15__ = type { %struct.coff_type* }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"size %d \00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"section definition at %x size %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"pointer to\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"array [%d] of\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"function returning\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"arguments\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"structure definition\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"structure ref to UNKNOWN struct\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"structure ref to %s\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"enum ref to %s\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"enum definition\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"VOID\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"SHORT\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"INT \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LONG\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"FLOAT\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"DOUBLE\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"STRUCT\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"UNION\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"ENUM\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"MOE \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"UCHAR\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"USHORT\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"UINT\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"ULONG\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"LNGDBL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_type*)* @dump_coff_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_coff_type(%struct.coff_type* %0) #0 {
  %2 = alloca %struct.coff_type*, align 8
  store %struct.coff_type* %0, %struct.coff_type** %2, align 8
  %3 = call i32 @tab(i32 1)
  %4 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %5 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %9 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %165 [
    i32 130, label %11
    i32 131, label %24
    i32 136, label %32
    i32 132, label %45
    i32 129, label %77
    i32 128, label %86
    i32 133, label %105
    i32 134, label %114
    i32 135, label %123
  ]

11:                                               ; preds = %1
  %12 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %13 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %18 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %21)
  %23 = call i32 (...) @nl()
  br label %165

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 (...) @nl()
  %27 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %28 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load %struct.coff_type*, %struct.coff_type** %30, align 8
  call void @dump_coff_type(%struct.coff_type* %31)
  br label %165

32:                                               ; preds = %1
  %33 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %34 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = call i32 (...) @nl()
  %40 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %41 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load %struct.coff_type*, %struct.coff_type** %43, align 8
  call void @dump_coff_type(%struct.coff_type* %44)
  br label %165

45:                                               ; preds = %1
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %47 = call i32 (...) @nl()
  %48 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %49 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 3
  %52 = load %struct.coff_type*, %struct.coff_type** %51, align 8
  call void @dump_coff_type(%struct.coff_type* %52)
  %53 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %54 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dump_coff_lines(i32 %57)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %60 = call i32 (...) @nl()
  %61 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %62 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dump_coff_scope(i32 %65)
  %67 = call i32 @tab(i32 0)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %69 = call i32 (...) @nl()
  %70 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %71 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dump_coff_scope(i32 %74)
  %76 = call i32 @tab(i32 0)
  br label %165

77:                                               ; preds = %1
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %79 = call i32 (...) @nl()
  %80 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %81 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dump_coff_scope(i32 %84)
  br label %165

86:                                               ; preds = %1
  %87 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %88 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = icmp ne %struct.TYPE_19__* %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %86
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %104

95:                                               ; preds = %86
  %96 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %97 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %95, %93
  br label %165

105:                                              ; preds = %1
  %106 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %107 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %112)
  br label %165

114:                                              ; preds = %1
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %116 = call i32 (...) @nl()
  %117 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %118 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dump_coff_scope(i32 %121)
  br label %165

123:                                              ; preds = %1
  %124 = load %struct.coff_type*, %struct.coff_type** %2, align 8
  %125 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %162 [
    i32 145, label %128
    i32 137, label %130
    i32 153, label %132
    i32 144, label %134
    i32 149, label %136
    i32 147, label %138
    i32 150, label %140
    i32 152, label %142
    i32 143, label %144
    i32 139, label %146
    i32 151, label %148
    i32 146, label %150
    i32 142, label %152
    i32 138, label %154
    i32 141, label %156
    i32 140, label %158
    i32 148, label %160
  ]

128:                                              ; preds = %123
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %164

130:                                              ; preds = %123
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %164

132:                                              ; preds = %123
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %164

134:                                              ; preds = %123
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %164

136:                                              ; preds = %123
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %164

138:                                              ; preds = %123
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %164

140:                                              ; preds = %123
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %164

142:                                              ; preds = %123
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  br label %164

144:                                              ; preds = %123
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  br label %164

146:                                              ; preds = %123
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  br label %164

148:                                              ; preds = %123
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  br label %164

150:                                              ; preds = %123
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  br label %164

152:                                              ; preds = %123
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  br label %164

154:                                              ; preds = %123
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  br label %164

156:                                              ; preds = %123
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  br label %164

158:                                              ; preds = %123
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  br label %164

160:                                              ; preds = %123
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  br label %164

162:                                              ; preds = %123
  %163 = call i32 (...) @abort() #3
  unreachable

164:                                              ; preds = %160, %158, %156, %154, %152, %150, %148, %146, %144, %142, %140, %138, %136, %134, %132, %130, %128
  br label %165

165:                                              ; preds = %164, %1, %114, %105, %104, %77, %45, %32, %24, %11
  %166 = call i32 (...) @nl()
  %167 = call i32 @tab(i32 -1)
  ret void
}

declare dso_local i32 @tab(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nl(...) #1

declare dso_local i32 @dump_coff_lines(i32) #1

declare dso_local i32 @dump_coff_scope(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
