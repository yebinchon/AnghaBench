; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_parse_operands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_parse_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MAX_OPERANDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Illegal operands (whitespace): `%s'\00", align 1
@ins_parse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Missing matching brackets : `%s'\00", align 1
@cur_arg_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @parse_operands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_operands(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @MAX_OPERANDS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8*, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %7, align 8
  store i8* %18, i8** %6, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %115, %35, %2
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %118

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 44
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  store i8 0, i8* %36, align 1
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @strdup(i8* %38)
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8*, i8** %17, i64 %42
  store i8* %39, i8** %43, align 8
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** %6, align 8
  br label %19

45:                                               ; preds = %32, %29, %24
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ins_parse, align 4
  %53 = call i32 @as_bad(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 40
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %12, align 4
  br label %67

60:                                               ; preds = %54
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 91
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %13, align 4
  br label %66

66:                                               ; preds = %65, %60
  br label %67

67:                                               ; preds = %66, %59
  %68 = load i8*, i8** %7, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 41
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %12, align 4
  br label %80

76:                                               ; preds = %72
  %77 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @ins_parse, align 4
  %79 = call i32 @as_fatal(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %75
  br label %96

81:                                               ; preds = %67
  %82 = load i8*, i8** %7, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 93
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %13, align 4
  br label %94

90:                                               ; preds = %86
  %91 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @ins_parse, align 4
  %93 = call i32 @as_fatal(i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %89
  br label %95

95:                                               ; preds = %94, %81
  br label %96

96:                                               ; preds = %95, %80
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i8*, i8** %7, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 41
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 0, i32* %12, align 4
  br label %115

105:                                              ; preds = %99, %96
  %106 = load i32, i32* %13, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i8*, i8** %7, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 93
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %113, %108, %105
  br label %115

115:                                              ; preds = %114, %104
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %7, align 8
  br label %19

118:                                              ; preds = %19
  %119 = load i8*, i8** %6, align 8
  %120 = call i8* @strdup(i8* %119)
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8*, i8** %17, i64 %123
  store i8* %120, i8** %124, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %118
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130, %118
  %134 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i32, i32* @ins_parse, align 4
  %136 = call i32 @as_fatal(i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %130
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %157, %137
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %138
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* @cur_arg_num, align 4
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %17, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %151 = call i32 @parse_operand(i8* %149, %struct.TYPE_4__* %150)
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %17, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @free(i8* %155)
  br label %157

157:                                              ; preds = %144
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %138

160:                                              ; preds = %138
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i8*, i8** %5, align 8
  %165 = call i32 @free(i8* %164)
  br label %166

166:                                              ; preds = %163, %160
  %167 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %167)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @as_bad(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @as_fatal(i32, i32) #2

declare dso_local i32 @parse_operand(i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
