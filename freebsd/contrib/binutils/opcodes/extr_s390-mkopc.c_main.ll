; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_s390-mkopc.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_s390-mkopc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%15s %15s %15s \22%[^\22]\22 %15s %15s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"g5\00", align 1
@S390_OPCODE_G5 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"g6\00", align 1
@S390_OPCODE_G6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"z900\00", align 1
@S390_OPCODE_Z900 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"z990\00", align 1
@S390_OPCODE_Z990 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"z9-109\00", align 1
@S390_OPCODE_Z9_109 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"z9-ec\00", align 1
@S390_OPCODE_Z9_EC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Couldn't parse cpu string %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"esa\00", align 1
@S390_OPCODE_ESA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"zarch\00", align 1
@S390_OPCODE_ZARCH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"Couldn't parse modes string %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Couldn't scan line %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [16 x i8], align 16
  %4 = alloca [16 x i8], align 16
  %5 = alloca [16 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [16 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %12 = call i32 (...) @createTable()
  br label %13

13:                                               ; preds = %161, %23, %0
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %15 = load i32, i32* @stdin, align 4
  %16 = call i32* @fgets(i8* %14, i32 256, i32 %15)
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %162

18:                                               ; preds = %13
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %20 = load i8, i8* %19, align 16
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 35
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %13

24:                                               ; preds = %18
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %26 = call i32 @memset(i8* %25, i32 0, i32 8)
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %34 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29, i8* %30, i8* %31, i8* %32, i8* %33)
  %35 = icmp eq i32 %34, 6
  br i1 %35, label %36, label %157

36:                                               ; preds = %24
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @S390_OPCODE_G5, align 4
  store i32 %41, i32* %9, align 4
  br label %82

42:                                               ; preds = %36
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @S390_OPCODE_G6, align 4
  store i32 %47, i32* %9, align 4
  br label %81

48:                                               ; preds = %42
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @S390_OPCODE_Z900, align 4
  store i32 %53, i32* %9, align 4
  br label %80

54:                                               ; preds = %48
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @S390_OPCODE_Z990, align 4
  store i32 %59, i32* %9, align 4
  br label %79

60:                                               ; preds = %54
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @S390_OPCODE_Z9_109, align 4
  store i32 %65, i32* %9, align 4
  br label %78

66:                                               ; preds = %60
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @S390_OPCODE_Z9_EC, align 4
  store i32 %71, i32* %9, align 4
  br label %77

72:                                               ; preds = %66
  %73 = load i32, i32* @stderr, align 4
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %75 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %74)
  %76 = call i32 @exit(i32 1) #3
  unreachable

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %64
  br label %79

79:                                               ; preds = %78, %58
  br label %80

80:                                               ; preds = %79, %52
  br label %81

81:                                               ; preds = %80, %46
  br label %82

82:                                               ; preds = %81, %40
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  store i8* %83, i8** %11, align 8
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %145, %82
  %85 = load i8*, i8** %11, align 8
  %86 = call i64 @strncmp(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %84
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 3
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 44
  br i1 %99, label %100, label %107

100:                                              ; preds = %94, %88
  %101 = load i32, i32* @S390_OPCODE_ESA, align 4
  %102 = shl i32 1, %101
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 3
  store i8* %106, i8** %11, align 8
  br label %136

107:                                              ; preds = %94, %84
  %108 = load i8*, i8** %11, align 8
  %109 = call i64 @strncmp(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %107
  %112 = load i8*, i8** %11, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 5
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 5
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 44
  br i1 %122, label %123, label %130

123:                                              ; preds = %117, %111
  %124 = load i32, i32* @S390_OPCODE_ZARCH, align 4
  %125 = shl i32 1, %124
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  %128 = load i8*, i8** %11, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 5
  store i8* %129, i8** %11, align 8
  br label %135

130:                                              ; preds = %117, %107
  %131 = load i32, i32* @stderr, align 4
  %132 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %133 = call i32 @fprintf(i32 %131, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %132)
  %134 = call i32 @exit(i32 1) #3
  unreachable

135:                                              ; preds = %123
  br label %136

136:                                              ; preds = %135, %100
  %137 = load i8*, i8** %11, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 44
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i8*, i8** %11, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %11, align 8
  br label %144

144:                                              ; preds = %141, %136
  br label %145

145:                                              ; preds = %144
  %146 = load i8*, i8** %11, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %84, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %152 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %153 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @insertOpcode(i8* %151, i8* %152, i8* %153, i32 %154, i32 %155)
  br label %161

157:                                              ; preds = %24
  %158 = load i32, i32* @stderr, align 4
  %159 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %160 = call i32 @fprintf(i32 %158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %159)
  br label %161

161:                                              ; preds = %157, %150
  br label %13

162:                                              ; preds = %13
  %163 = call i32 (...) @dumpTable()
  ret i32 0
}

declare dso_local i32 @createTable(...) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @insertOpcode(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @dumpTable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
