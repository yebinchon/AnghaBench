; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_parse_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_parse_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32, i32, i32, i8* }
%struct.enums = type { i64, i8* }

@val = common dso_local global i8* null, align 8
@TOK_ENUM = common dso_local global i32 0, align 4
@TOK_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"'(' expected after ENUM\00", align 1
@TOK_EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"unexpected EOF in ENUM\00", align 1
@TOK_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"need value for ENUM/BITS\00", align 1
@TOK_STR = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"need string in ENUM/BITS\00", align 1
@link = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"unexpected EOF in ENUM/BITS\00", align 1
@TOK_DEFTYPE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"subtype expected after '|'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.type*, i8*, i8**)* @parse_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_type(i32* %0, %struct.type* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.enums*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.type* %1, %struct.type** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %11 = load i8*, i8** @val, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i8**, i8*** %8, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i8**, i8*** %8, align 8
  store i8* null, i8** %15, align 8
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TOK_ENUM, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TOK_BITS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %135

26:                                               ; preds = %21, %16
  %27 = load %struct.type*, %struct.type** %6, align 8
  %28 = icmp eq %struct.type* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = call %struct.type* @make_type(i8* %33)
  store %struct.type* %34, %struct.type** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TOK_ENUM, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load %struct.type*, %struct.type** %6, align 8
  %41 = getelementptr inbounds %struct.type, %struct.type* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TOK_BITS, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load %struct.type*, %struct.type** %6, align 8
  %48 = getelementptr inbounds %struct.type, %struct.type* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.type*, %struct.type** %6, align 8
  %51 = getelementptr inbounds %struct.type, %struct.type* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %32, %29, %26
  %53 = call signext i8 (...) @gettoken()
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 40
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @report(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  %59 = call signext i8 (...) @gettoken()
  %60 = sext i8 %59 to i32
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @TOK_EOF, align 4
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 @report(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %58
  br label %67

67:                                               ; preds = %127, %66
  store %struct.enums* null, %struct.enums** %10, align 8
  %68 = load %struct.type*, %struct.type** %6, align 8
  %69 = icmp ne %struct.type* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call %struct.enums* @xalloc(i32 16)
  store %struct.enums* %71, %struct.enums** %10, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 45
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = call signext i8 (...) @gettoken()
  %78 = sext i8 %77 to i32
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @TOK_EOF, align 4
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 @report(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %76
  %85 = load i8*, i8** @val, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = sub nsw i64 0, %86
  %88 = load %struct.enums*, %struct.enums** %10, align 8
  %89 = getelementptr inbounds %struct.enums, %struct.enums* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %95

90:                                               ; preds = %72
  %91 = load i8*, i8** @val, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = load %struct.enums*, %struct.enums** %10, align 8
  %94 = getelementptr inbounds %struct.enums, %struct.enums* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %90, %84
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @TOK_NUM, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 @report(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %95
  %103 = call signext i8 (...) @gettoken()
  %104 = sext i8 %103 to i32
  %105 = load i8, i8* @TOK_STR, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = call i32 @report(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %102
  %111 = call i8* (...) @savetok()
  %112 = load %struct.enums*, %struct.enums** %10, align 8
  %113 = getelementptr inbounds %struct.enums, %struct.enums* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.type*, %struct.type** %6, align 8
  %115 = getelementptr inbounds %struct.type, %struct.type* %114, i32 0, i32 2
  %116 = load %struct.enums*, %struct.enums** %10, align 8
  %117 = load i32, i32* @link, align 4
  %118 = call i32 @TAILQ_INSERT_TAIL(i32* %115, %struct.enums* %116, i32 %117)
  %119 = call signext i8 (...) @gettoken()
  %120 = sext i8 %119 to i32
  %121 = load i32*, i32** %5, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* @TOK_EOF, align 4
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %110
  %125 = call i32 @report(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %110
  br label %127

127:                                              ; preds = %126
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 41
  br i1 %130, label %67, label %131

131:                                              ; preds = %127
  %132 = call signext i8 (...) @gettoken()
  %133 = sext i8 %132 to i32
  %134 = load i32*, i32** %5, align 8
  store i32 %133, i32* %134, align 4
  br label %169

135:                                              ; preds = %21
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @TOK_DEFTYPE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = call signext i8 (...) @gettoken()
  %142 = sext i8 %141 to i32
  %143 = load i32*, i32** %5, align 8
  store i32 %142, i32* %143, align 4
  br label %168

144:                                              ; preds = %135
  %145 = call signext i8 (...) @gettoken()
  %146 = sext i8 %145 to i32
  %147 = load i32*, i32** %5, align 8
  store i32 %146, i32* %147, align 4
  %148 = icmp eq i32 %146, 124
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = call signext i8 (...) @gettoken()
  %151 = sext i8 %150 to i32
  %152 = load i8, i8* @TOK_STR, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %151, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = call i32 @report(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %149
  %158 = load i8**, i8*** %8, align 8
  %159 = icmp ne i8** %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = call i8* (...) @savetok()
  %162 = load i8**, i8*** %8, align 8
  store i8* %161, i8** %162, align 8
  br label %163

163:                                              ; preds = %160, %157
  %164 = call signext i8 (...) @gettoken()
  %165 = sext i8 %164 to i32
  %166 = load i32*, i32** %5, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %163, %144
  br label %168

168:                                              ; preds = %167, %140
  br label %169

169:                                              ; preds = %168, %131
  %170 = load i8*, i8** %9, align 8
  ret i8* %170
}

declare dso_local %struct.type* @make_type(i8*) #1

declare dso_local signext i8 @gettoken(...) #1

declare dso_local i32 @report(i8*) #1

declare dso_local %struct.enums* @xalloc(i32) #1

declare dso_local i8* @savetok(...) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.enums*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
