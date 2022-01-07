; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_validate_insn_alternatives.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_validate_insn_alternatives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [19 x i8] c",#*+=&%!0123456789\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"invalid length %d for char '%c' in alternative %d of operand %d\00", align 1
@have_error = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"NUL in alternative %d of operand %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c",#*\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"'%c' in alternative %d of operand %d\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"wrong number of alternatives in operand %d\00", align 1
@indep_constraints = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data*)* @validate_insn_alternatives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_insn_alternatives(%struct.data* %0) #0 {
  %2 = alloca %struct.data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.data* %0, %struct.data** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %161, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.data*, %struct.data** %2, align 8
  %14 = getelementptr inbounds %struct.data, %struct.data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %164

17:                                               ; preds = %11
  %18 = load %struct.data*, %struct.data** %2, align 8
  %19 = getelementptr inbounds %struct.data, %struct.data* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %160

27:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %28 = load %struct.data*, %struct.data** %2, align 8
  %29 = getelementptr inbounds %struct.data, %struct.data* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %7, align 8
  br label %36

36:                                               ; preds = %118, %27
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %8, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %123

40:                                               ; preds = %36
  %41 = load i8, i8* %8, align 1
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @CONSTRAINT_LEN(i8 signext %41, i8* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load i8, i8* %8, align 1
  %51 = call i64 @strchr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49, %40
  %54 = load %struct.data*, %struct.data** %2, align 8
  %55 = getelementptr inbounds %struct.data, %struct.data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = trunc i32 %57 to i8
  %59 = load i8, i8* %8, align 1
  %60 = sext i8 %59 to i32
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (i32, i8*, i8, ...) @message_with_line(i32 %56, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8 signext %58, i32 %60, i32 %61, i32 %62)
  store i32 1, i32* %5, align 4
  store i32 1, i32* @have_error, align 4
  br label %64

64:                                               ; preds = %53, %49, %46
  %65 = load i8, i8* %8, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 44
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %118

71:                                               ; preds = %64
  store i32 1, i32* %6, align 4
  br label %72

72:                                               ; preds = %114, %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %117

76:                                               ; preds = %72
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = load %struct.data*, %struct.data** %2, align 8
  %86 = getelementptr inbounds %struct.data, %struct.data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = trunc i32 %88 to i8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (i32, i8*, i8, ...) @message_with_line(i32 %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8 signext %89, i32 %90)
  store i32 1, i32* %10, align 4
  br label %117

92:                                               ; preds = %76
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = call i64 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8 signext %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %92
  %101 = load %struct.data*, %struct.data** %2, align 8
  %102 = getelementptr inbounds %struct.data, %struct.data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 (i32, i8*, i8, ...) @message_with_line(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8 signext %108, i32 %109, i32 %110)
  store i32 1, i32* %10, align 4
  br label %112

112:                                              ; preds = %100, %92
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %72

117:                                              ; preds = %84, %72
  br label %118

118:                                              ; preds = %117, %68
  %119 = load i32, i32* %5, align 4
  %120 = load i8*, i8** %7, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %7, align 8
  br label %36

123:                                              ; preds = %36
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 1, i32* @have_error, align 4
  br label %159

127:                                              ; preds = %123
  %128 = load i32, i32* %3, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load %struct.data*, %struct.data** %2, align 8
  %132 = getelementptr inbounds %struct.data, %struct.data* %131, i32 0, i32 3
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %3, align 4
  br label %158

139:                                              ; preds = %127
  %140 = load i32, i32* %3, align 4
  %141 = load %struct.data*, %struct.data** %2, align 8
  %142 = getelementptr inbounds %struct.data, %struct.data* %141, i32 0, i32 3
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %140, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %139
  %151 = load %struct.data*, %struct.data** %2, align 8
  %152 = getelementptr inbounds %struct.data, %struct.data* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = trunc i32 %154 to i8
  %156 = call i32 (i32, i8*, i8, ...) @message_with_line(i32 %153, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8 signext %155)
  store i32 1, i32* @have_error, align 4
  br label %157

157:                                              ; preds = %150, %139
  br label %158

158:                                              ; preds = %157, %130
  br label %159

159:                                              ; preds = %158, %126
  br label %160

160:                                              ; preds = %159, %17
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %4, align 4
  br label %11

164:                                              ; preds = %11
  %165 = load i32, i32* %3, align 4
  %166 = load %struct.data*, %struct.data** %2, align 8
  %167 = getelementptr inbounds %struct.data, %struct.data* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  ret void
}

declare dso_local i32 @CONSTRAINT_LEN(i8 signext, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @message_with_line(i32, i8*, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
