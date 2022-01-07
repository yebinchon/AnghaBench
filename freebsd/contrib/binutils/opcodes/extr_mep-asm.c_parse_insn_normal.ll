; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-asm.c_parse_insn_normal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-asm.c_parse_insn_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* (%struct.TYPE_6__*, i32, i8**, i32*)* }

@.str = private unnamed_addr constant [25 x i8] c"unrecognized instruction\00", align 1
@parse_insn_normal.msg = internal global [80 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [46 x i8] c"syntax error (expected char `%c', found `%c')\00", align 1
@parse_insn_normal.msg.2 = internal global [80 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [60 x i8] c"syntax error (expected char `%c', found end of instruction)\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"junk at end of line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i32*, i8**, i32*)* @parse_insn_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_insn_normal(%struct.TYPE_6__* %0, i32* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32* @CGEN_INSN_SYNTAX(i32* %15)
  store i32* %16, i32** %10, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i8* @CGEN_INSN_MNEMONIC(i32* %19)
  store i8* %20, i8** %13, align 8
  br label %21

21:                                               ; preds = %36, %4
  %22 = load i8*, i8** %13, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i8*, i8** %13, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @TOLOWER(i8 signext %28)
  %30 = load i8*, i8** %11, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @TOLOWER(i8 signext %31)
  %33 = icmp eq i64 %29, %32
  br label %34

34:                                               ; preds = %26, %21
  %35 = phi i1 [ false, %21 ], [ %33, %26 ]
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %11, align 8
  br label %21

41:                                               ; preds = %34
  %42 = load i8*, i8** %13, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8* %46, i8** %5, align 8
  br label %159

47:                                               ; preds = %41
  %48 = load i8*, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @ISSPACE(i8 signext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8* %58, i8** %5, align 8
  br label %159

59:                                               ; preds = %52, %47
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = call i32 @CGEN_INIT_PARSE(%struct.TYPE_6__* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = call i32 @cgen_init_parse_operand(%struct.TYPE_6__* %62)
  %64 = load i32*, i32** %10, align 8
  %65 = call i64* @CGEN_SYNTAX_STRING(i32* %64)
  store i64* %65, i64** %14, align 8
  %66 = load i64*, i64** %14, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @CGEN_SYNTAX_MNEMONIC_P(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  %71 = call i32 (...) @abort() #3
  unreachable

72:                                               ; preds = %59
  %73 = load i64*, i64** %14, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %14, align 8
  br label %75

75:                                               ; preds = %133, %118, %72
  %76 = load i64*, i64** %14, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %136

79:                                               ; preds = %75
  %80 = load i64*, i64** %14, align 8
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @CGEN_SYNTAX_CHAR_P(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %119

84:                                               ; preds = %79
  %85 = load i8*, i8** %11, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @TOLOWER(i8 signext %86)
  %88 = load i64*, i64** %14, align 8
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @CGEN_SYNTAX_CHAR(i64 %89)
  %91 = trunc i32 %90 to i8
  %92 = call i64 @TOLOWER(i8 signext %91)
  %93 = icmp eq i64 %87, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load i64*, i64** %14, align 8
  %96 = getelementptr inbounds i64, i64* %95, i32 1
  store i64* %96, i64** %14, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %11, align 8
  br label %118

99:                                               ; preds = %84
  %100 = load i8*, i8** %11, align 8
  %101 = load i8, i8* %100, align 1
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i64*, i64** %14, align 8
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @CGEN_SYNTAX_CHAR(i64 %106)
  %108 = load i8*, i8** %11, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @parse_insn_normal.msg, i64 0, i64 0), i8* %104, i32 %107, i32 %110)
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @parse_insn_normal.msg, i64 0, i64 0), i8** %5, align 8
  br label %159

112:                                              ; preds = %99
  %113 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i64*, i64** %14, align 8
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @CGEN_SYNTAX_CHAR(i64 %115)
  %117 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @parse_insn_normal.msg.2, i64 0, i64 0), i8* %113, i32 %116)
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @parse_insn_normal.msg.2, i64 0, i64 0), i8** %5, align 8
  br label %159

118:                                              ; preds = %94
  br label %75

119:                                              ; preds = %79
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i8* (%struct.TYPE_6__*, i32, i8**, i32*)*, i8* (%struct.TYPE_6__*, i32, i8**, i32*)** %121, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = load i64*, i64** %14, align 8
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @CGEN_SYNTAX_FIELD(i64 %125)
  %127 = load i32*, i32** %9, align 8
  %128 = call i8* %122(%struct.TYPE_6__* %123, i32 %126, i8** %11, i32* %127)
  store i8* %128, i8** %12, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8
  store i8* %132, i8** %5, align 8
  br label %159

133:                                              ; preds = %119
  %134 = load i64*, i64** %14, align 8
  %135 = getelementptr inbounds i64, i64* %134, i32 1
  store i64* %135, i64** %14, align 8
  br label %75

136:                                              ; preds = %75
  %137 = load i64*, i64** %14, align 8
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %136
  br label %141

141:                                              ; preds = %146, %140
  %142 = load i8*, i8** %11, align 8
  %143 = load i8, i8* %142, align 1
  %144 = call i64 @ISSPACE(i8 signext %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i8*, i8** %11, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %11, align 8
  br label %141

149:                                              ; preds = %141
  %150 = load i8*, i8** %11, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i8* %155, i8** %5, align 8
  br label %159

156:                                              ; preds = %149
  store i8* null, i8** %5, align 8
  br label %159

157:                                              ; preds = %136
  %158 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8* %158, i8** %5, align 8
  br label %159

159:                                              ; preds = %157, %156, %154, %131, %112, %103, %57, %45
  %160 = load i8*, i8** %5, align 8
  ret i8* %160
}

declare dso_local i32* @CGEN_INSN_SYNTAX(i32*) #1

declare dso_local i8* @CGEN_INSN_MNEMONIC(i32*) #1

declare dso_local i64 @TOLOWER(i8 signext) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i32 @CGEN_INIT_PARSE(%struct.TYPE_6__*) #1

declare dso_local i32 @cgen_init_parse_operand(%struct.TYPE_6__*) #1

declare dso_local i64* @CGEN_SYNTAX_STRING(i32*) #1

declare dso_local i32 @CGEN_SYNTAX_MNEMONIC_P(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @CGEN_SYNTAX_CHAR_P(i64) #1

declare dso_local i32 @CGEN_SYNTAX_CHAR(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @CGEN_SYNTAX_FIELD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
