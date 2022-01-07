; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_display_arm_attribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_display_arm_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i8** }

@arm_attr_public_tags = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"  Tag_%s: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"None\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Application\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Realtime\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Microcontroller\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"??? (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"flag = %d, vendor = %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"  Tag_unknown_%d: \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%d (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @display_arm_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @display_arm_attribute(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @read_uleb128(i8* %10, i32* %5)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %36, %1
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arm_attr_public_tags, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %18)
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arm_attr_public_tags, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arm_attr_public_tags, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %7, align 8
  br label %39

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %16

39:                                               ; preds = %30, %16
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %129

42:                                               ; preds = %39
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %95 [
    i32 0, label %50
    i32 1, label %91
    i32 2, label %91
  ]

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  switch i32 %51, label %87 [
    i32 7, label %52
    i32 32, label %72
  ]

52:                                               ; preds = %50
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @read_uleb128(i8* %53, i32* %5)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i8*, i8** %3, align 8
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %3, align 8
  %59 = load i32, i32* %6, align 4
  switch i32 %59, label %68 [
    i32 0, label %60
    i32 65, label %62
    i32 82, label %64
    i32 77, label %66
  ]

60:                                               ; preds = %52
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %71

62:                                               ; preds = %52
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %71

64:                                               ; preds = %52
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %71

66:                                               ; preds = %52
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %71

68:                                               ; preds = %52
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %66, %64, %62, %60
  br label %89

72:                                               ; preds = %50
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @read_uleb128(i8* %73, i32* %5)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i8*, i8** %3, align 8
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %79, i8* %80)
  %82 = load i8*, i8** %3, align 8
  %83 = call i64 @strlen(i8* %82)
  %84 = add nsw i64 %83, 1
  %85 = load i8*, i8** %3, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 %84
  store i8* %86, i8** %3, align 8
  br label %89

87:                                               ; preds = %50
  %88 = call i32 (...) @abort() #3
  unreachable

89:                                               ; preds = %72, %71
  %90 = load i8*, i8** %3, align 8
  store i8* %90, i8** %2, align 8
  br label %161

91:                                               ; preds = %42, %42
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %9, align 4
  br label %128

95:                                               ; preds = %42
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, 128
  %100 = call i32 @assert(i32 %99)
  %101 = load i8*, i8** %3, align 8
  %102 = call i32 @read_uleb128(i8* %101, i32* %5)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i8*, i8** %3, align 8
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %3, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 127
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %95
  %115 = load i32, i32* %6, align 4
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  br label %126

117:                                              ; preds = %95
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i8**, i8*** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %117, %114
  %127 = load i8*, i8** %3, align 8
  store i8* %127, i8** %2, align 8
  br label %161

128:                                              ; preds = %91
  br label %138

129:                                              ; preds = %39
  %130 = load i32, i32* %4, align 4
  %131 = and i32 %130, 1
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 1, i32* %9, align 4
  br label %135

134:                                              ; preds = %129
  store i32 2, i32* %9, align 4
  br label %135

135:                                              ; preds = %134, %133
  %136 = load i32, i32* %4, align 4
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %135, %128
  %139 = load i32, i32* %9, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i8*, i8** %3, align 8
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %142)
  %144 = load i8*, i8** %3, align 8
  %145 = call i64 @strlen(i8* %144)
  %146 = add nsw i64 %145, 1
  %147 = load i8*, i8** %3, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 %146
  store i8* %148, i8** %3, align 8
  br label %159

149:                                              ; preds = %138
  %150 = load i8*, i8** %3, align 8
  %151 = call i32 @read_uleb128(i8* %150, i32* %5)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i8*, i8** %3, align 8
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %3, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %149, %141
  %160 = load i8*, i8** %3, align 8
  store i8* %160, i8** %2, align 8
  br label %161

161:                                              ; preds = %159, %126, %89
  %162 = load i8*, i8** %2, align 8
  ret i8* %162
}

declare dso_local i32 @read_uleb128(i8*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
