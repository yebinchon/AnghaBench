; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_output_v9branch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_output_v9branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_v9branch.string = internal global [64 x i8] zeroinitializer, align 16
@DImode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"brnz\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"brz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"brgez\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"brlz\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"brlez\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"brgz\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c",a\00", align 1
@REG_BR_PROB = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@REG_BR_PROB_BASE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c",pt\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c",pn\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c".+12\0A\09 nop\0A\09\00", align 1
@final_sequence = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"b\09\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"ba,pt\09%%xcc, \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @output_v9branch(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @GET_CODE(i64 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @XEXP(i64 %24, i32 0)
  %26 = call i32 @GET_MODE(i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i64, i64* %14, align 8
  %28 = call i32 @get_attr_length(i64 %27)
  %29 = icmp sge i32 %28, 3
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %18, align 4
  %33 = xor i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %7
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @reverse_condition(i32 %36)
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %35, %7
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @DImode, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @gcc_assert(i32 %42)
  %44 = load i32, i32* %15, align 4
  switch i32 %44, label %57 [
    i32 128, label %45
    i32 133, label %47
    i32 132, label %49
    i32 129, label %51
    i32 130, label %53
    i32 131, label %55
  ]

45:                                               ; preds = %38
  %46 = call i32 @strcpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_v9branch.string, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %59

47:                                               ; preds = %38
  %48 = call i32 @strcpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_v9branch.string, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %59

49:                                               ; preds = %38
  %50 = call i32 @strcpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_v9branch.string, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %59

51:                                               ; preds = %38
  %52 = call i32 @strcpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_v9branch.string, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %59

53:                                               ; preds = %38
  %54 = call i32 @strcpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_v9branch.string, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %59

55:                                               ; preds = %38
  %56 = call i32 @strcpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_v9branch.string, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %59

57:                                               ; preds = %38
  %58 = call i32 (...) @gcc_unreachable()
  br label %59

59:                                               ; preds = %57, %55, %53, %51, %49, %47, %45
  %60 = call i8* @strchr(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_v9branch.string, i64 0, i64 0), i8 signext 0)
  store i8* %60, i8** %19, align 8
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* %18, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %19, align 8
  %68 = call i32 @strcpy(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i8*, i8** %19, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  store i8* %70, i8** %19, align 8
  br label %71

71:                                               ; preds = %66, %63, %59
  %72 = load i64, i64* %14, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %71
  %75 = load i64, i64* %14, align 8
  %76 = load i32, i32* @REG_BR_PROB, align 4
  %77 = load i32, i32* @NULL_RTX, align 4
  %78 = call i64 @find_reg_note(i64 %75, i32 %76, i32 %77)
  store i64 %78, i64* %17, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load i8*, i8** %19, align 8
  %82 = load i64, i64* %17, align 8
  %83 = call i32 @XEXP(i64 %82, i32 0)
  %84 = call i32 @INTVAL(i32 %83)
  %85 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %86 = sdiv i32 %85, 2
  %87 = icmp sge i32 %84, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %18, align 4
  %90 = xor i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %94 = call i32 @strcpy(i8* %81, i8* %93)
  %95 = load i8*, i8** %19, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  store i8* %96, i8** %19, align 8
  br label %97

97:                                               ; preds = %80, %74, %71
  %98 = load i8*, i8** %19, align 8
  %99 = icmp ult i8* %98, getelementptr inbounds ([64 x i8], [64 x i8]* @output_v9branch.string, i64 0, i64 8)
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 9, i32 32
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %19, align 8
  store i8 %102, i8* %103, align 1
  %104 = load i8*, i8** %19, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %19, align 8
  %106 = load i8*, i8** %19, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %19, align 8
  store i8 37, i8* %106, align 1
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 48, %108
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %19, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %19, align 8
  store i8 %110, i8* %111, align 1
  %113 = load i8*, i8** %19, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %19, align 8
  store i8 44, i8* %113, align 1
  %115 = load i8*, i8** %19, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %19, align 8
  store i8 32, i8* %115, align 1
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %164

119:                                              ; preds = %97
  store i32 1, i32* %20, align 4
  %120 = call i64 (...) @INSN_ADDRESSES_SET_P()
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %119
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @INSN_UID(i64 %123)
  %125 = call i32 @INSN_ADDRESSES(i32 %124)
  %126 = load i64, i64* %14, align 8
  %127 = call i32 @INSN_UID(i64 %126)
  %128 = call i32 @INSN_ADDRESSES(i32 %127)
  %129 = sub nsw i32 %125, %128
  store i32 %129, i32* %21, align 4
  %130 = load i32, i32* %21, align 4
  %131 = icmp sge i32 %130, -260000
  br i1 %131, label %132, label %136

132:                                              ; preds = %122
  %133 = load i32, i32* %21, align 4
  %134 = icmp slt i32 %133, 260000
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 0, i32* %20, align 4
  br label %136

136:                                              ; preds = %135, %132, %122
  br label %137

137:                                              ; preds = %136, %119
  %138 = load i8*, i8** %19, align 8
  %139 = call i32 @strcpy(i8* %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @final_sequence, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142, %137
  %146 = load i8*, i8** %19, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 3
  store i8 54, i8* %147, align 1
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i8*, i8** %19, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 12
  store i8* %150, i8** %19, align 8
  %151 = load i32, i32* %20, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i8*, i8** %19, align 8
  %155 = call i32 @strcpy(i8* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %156 = load i8*, i8** %19, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 2
  store i8* %157, i8** %19, align 8
  br label %163

158:                                              ; preds = %148
  %159 = load i8*, i8** %19, align 8
  %160 = call i32 @strcpy(i8* %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %161 = load i8*, i8** %19, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 13
  store i8* %162, i8** %19, align 8
  br label %163

163:                                              ; preds = %158, %153
  br label %164

164:                                              ; preds = %163, %97
  %165 = load i8*, i8** %19, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %19, align 8
  store i8 37, i8* %165, align 1
  %167 = load i8*, i8** %19, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %19, align 8
  store i8 108, i8* %167, align 1
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 48, %169
  %171 = trunc i32 %170 to i8
  %172 = load i8*, i8** %19, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %19, align 8
  store i8 %171, i8* %172, align 1
  %174 = load i8*, i8** %19, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %19, align 8
  store i8 37, i8* %174, align 1
  %176 = load i8*, i8** %19, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %19, align 8
  store i8 35, i8* %176, align 1
  %178 = load i8*, i8** %19, align 8
  store i8 0, i8* %178, align 1
  ret i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_v9branch.string, i64 0, i64 0)
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i32 @get_attr_length(i64) #1

declare dso_local i32 @reverse_condition(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @find_reg_note(i64, i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i64 @INSN_ADDRESSES_SET_P(...) #1

declare dso_local i32 @INSN_ADDRESSES(i32) #1

declare dso_local i32 @INSN_UID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
