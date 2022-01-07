; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_dump_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_dump_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@SHT_NOBITS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"\0ASection '%s' has no data to dump.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"\0AHex dump of section '%s':\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"section data\00", align 1
@section_headers = common dso_local global %struct.TYPE_7__* null, align 8
@elf_header = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SHT_RELA = common dso_local global i64 0, align 8
@SHT_REL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [95 x i8] c" NOTE: This section has relocations against it, but these have NOT been applied to this dump.\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"  0x%8.8lx \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%2.2x\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @dump_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_section(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SHT_NOBITS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %2
  %26 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = call i8* @SECTION_NAME(%struct.TYPE_7__* %27)
  %29 = call i32 (i8*, ...) @printf(i8* %26, i8* %28)
  store i32 0, i32* %3, align 4
  br label %190

30:                                               ; preds = %19
  %31 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = call i8* @SECTION_NAME(%struct.TYPE_7__* %32)
  %34 = call i32 (i8*, ...) @printf(i8* %31, i8* %33)
  br label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i8* @get_data(i32* null, i32* %39, i32 %42, i32 1, i32 %43, i8* %44)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %190

49:                                               ; preds = %35
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @section_headers, align 8
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %6, align 8
  br label %51

51:                                               ; preds = %102, %49
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @section_headers, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @elf_header, i32 0, i32 0), align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = icmp ult %struct.TYPE_7__* %52, %56
  br i1 %57, label %58, label %105

58:                                               ; preds = %51
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SHT_RELA, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SHT_REL, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %98, label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @SECTION_HEADER_INDEX(i32 %73)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @elf_header, i32 0, i32 0), align 4
  %76 = sext i32 %75 to i64
  %77 = icmp sge i64 %74, %76
  br i1 %77, label %98, label %78

78:                                               ; preds = %70
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.TYPE_7__* @SECTION_HEADER(i32 %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = icmp ne %struct.TYPE_7__* %82, %83
  br i1 %84, label %98, label %85

85:                                               ; preds = %78
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @SECTION_HEADER_INDEX(i32 %93)
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @elf_header, i32 0, i32 0), align 4
  %96 = sext i32 %95 to i64
  %97 = icmp sge i64 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %90, %85, %78, %70, %64
  br label %102

99:                                               ; preds = %90
  %100 = call i8* @_(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.3, i64 0, i64 0))
  %101 = call i32 (i8*, ...) @printf(i8* %100)
  br label %105

102:                                              ; preds = %98
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 1
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %6, align 8
  br label %51

105:                                              ; preds = %99, %51
  %106 = load i8*, i8** %10, align 8
  store i8* %106, i8** %9, align 8
  br label %107

107:                                              ; preds = %173, %105
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %186

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  %112 = icmp sgt i32 %111, 16
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %116

114:                                              ; preds = %110
  %115 = load i32, i32* %7, align 4
  br label %116

116:                                              ; preds = %114, %113
  %117 = phi i32 [ 16, %113 ], [ %115, %114 ]
  store i32 %117, i32* %13, align 4
  %118 = load i64, i64* %8, align 8
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %118)
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %144, %116
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 16
  br i1 %122, label %123, label %147

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  br label %137

135:                                              ; preds = %123
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %127
  %138 = load i32, i32* %11, align 4
  %139 = and i32 %138, 3
  %140 = icmp eq i32 %139, 3
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %137
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %120

147:                                              ; preds = %120
  store i32 0, i32* %11, align 4
  br label %148

148:                                              ; preds = %170, %147
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %173

152:                                              ; preds = %148
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp sge i32 %159, 32
  br i1 %160, label %161, label %167

161:                                              ; preds = %152
  %162 = load i32, i32* %12, align 4
  %163 = icmp slt i32 %162, 127
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* %12, align 4
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %165)
  br label %169

167:                                              ; preds = %161, %152
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %164
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  br label %148

173:                                              ; preds = %148
  %174 = call i32 @putchar(i8 signext 10)
  %175 = load i32, i32* %13, align 4
  %176 = load i8*, i8** %9, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8* %178, i8** %9, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %8, align 8
  %182 = add nsw i64 %181, %180
  store i64 %182, i64* %8, align 8
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %7, align 4
  %185 = sub nsw i32 %184, %183
  store i32 %185, i32* %7, align 4
  br label %107

186:                                              ; preds = %107
  %187 = load i8*, i8** %10, align 8
  %188 = call i32 @free(i8* %187)
  %189 = call i32 @putchar(i8 signext 10)
  store i32 1, i32* %3, align 4
  br label %190

190:                                              ; preds = %186, %48, %25
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @SECTION_NAME(%struct.TYPE_7__*) #1

declare dso_local i8* @get_data(i32*, i32*, i32, i32, i32, i8*) #1

declare dso_local i64 @SECTION_HEADER_INDEX(i32) #1

declare dso_local %struct.TYPE_7__* @SECTION_HEADER(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
