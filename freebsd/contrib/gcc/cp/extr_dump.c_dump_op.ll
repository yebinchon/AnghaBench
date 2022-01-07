; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_dump.c_dump_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_dump.c_dump_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vecnew\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"vecdelete\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"deref\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"lnot\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"preinc\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"predec\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"plusassign\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"minusassign\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"multassign\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"mult\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"divassign\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"modassign\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"andassign\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"orassign\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"xorassign\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"lshiftassign\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"lshift\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"rshiftassign\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"rshift\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"land\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"lor\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"compound\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"memref\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"subs\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"postinc\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"postdec\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"assign\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dump_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_op(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @DECL_OVERLOADED_OPERATOR_P(i32 %5)
  switch i32 %6, label %206 [
    i32 144, label %7
    i32 128, label %10
    i32 156, label %13
    i32 129, label %16
    i32 130, label %19
    i32 145, label %22
    i32 165, label %25
    i32 152, label %28
    i32 161, label %31
    i32 132, label %34
    i32 137, label %37
    i32 138, label %40
    i32 141, label %43
    i32 147, label %54
    i32 146, label %65
    i32 135, label %76
    i32 134, label %87
    i32 163, label %98
    i32 162, label %109
    i32 160, label %120
    i32 150, label %131
    i32 136, label %142
    i32 155, label %153
    i32 143, label %156
    i32 149, label %159
    i32 153, label %162
    i32 151, label %165
    i32 154, label %168
    i32 133, label %171
    i32 131, label %174
    i32 157, label %177
    i32 148, label %180
    i32 158, label %183
    i32 164, label %186
    i32 139, label %189
    i32 140, label %192
    i32 159, label %195
    i32 142, label %198
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @dump_string(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %207

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @dump_string(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %207

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @dump_string(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %207

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @dump_string(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %207

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @dump_string(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %207

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @dump_string(i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %207

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @dump_string(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %207

28:                                               ; preds = %2
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @dump_string(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %207

31:                                               ; preds = %2
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @dump_string(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %207

34:                                               ; preds = %2
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @dump_string(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %207

37:                                               ; preds = %2
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @dump_string(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %207

40:                                               ; preds = %2
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @dump_string(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %207

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @DECL_ASSIGNMENT_OPERATOR_P(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @dump_string(i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @dump_string(i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %47
  br label %207

54:                                               ; preds = %2
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @DECL_ASSIGNMENT_OPERATOR_P(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @dump_string(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @dump_string(i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %58
  br label %207

65:                                               ; preds = %2
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @DECL_ASSIGNMENT_OPERATOR_P(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @dump_string(i32 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  br label %75

72:                                               ; preds = %65
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @dump_string(i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %69
  br label %207

76:                                               ; preds = %2
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @DECL_ASSIGNMENT_OPERATOR_P(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @dump_string(i32 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  br label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @dump_string(i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  br label %207

87:                                               ; preds = %2
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @DECL_ASSIGNMENT_OPERATOR_P(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @dump_string(i32 %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  br label %97

94:                                               ; preds = %87
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @dump_string(i32 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %91
  br label %207

98:                                               ; preds = %2
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @DECL_ASSIGNMENT_OPERATOR_P(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @dump_string(i32 %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  br label %108

105:                                              ; preds = %98
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @dump_string(i32 %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %102
  br label %207

109:                                              ; preds = %2
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @DECL_ASSIGNMENT_OPERATOR_P(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @dump_string(i32 %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  br label %119

116:                                              ; preds = %109
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @dump_string(i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %113
  br label %207

120:                                              ; preds = %2
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @DECL_ASSIGNMENT_OPERATOR_P(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @dump_string(i32 %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  br label %130

127:                                              ; preds = %120
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @dump_string(i32 %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %124
  br label %207

131:                                              ; preds = %2
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @DECL_ASSIGNMENT_OPERATOR_P(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @dump_string(i32 %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  br label %141

138:                                              ; preds = %131
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @dump_string(i32 %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %135
  br label %207

142:                                              ; preds = %2
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @DECL_ASSIGNMENT_OPERATOR_P(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @dump_string(i32 %147, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  br label %152

149:                                              ; preds = %142
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @dump_string(i32 %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %146
  br label %207

153:                                              ; preds = %2
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @dump_string(i32 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  br label %207

156:                                              ; preds = %2
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @dump_string(i32 %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0))
  br label %207

159:                                              ; preds = %2
  %160 = load i32, i32* %3, align 4
  %161 = call i32 @dump_string(i32 %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  br label %207

162:                                              ; preds = %2
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @dump_string(i32 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0))
  br label %207

165:                                              ; preds = %2
  %166 = load i32, i32* %3, align 4
  %167 = call i32 @dump_string(i32 %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %207

168:                                              ; preds = %2
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @dump_string(i32 %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0))
  br label %207

171:                                              ; preds = %2
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @dump_string(i32 %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  br label %207

174:                                              ; preds = %2
  %175 = load i32, i32* %3, align 4
  %176 = call i32 @dump_string(i32 %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0))
  br label %207

177:                                              ; preds = %2
  %178 = load i32, i32* %3, align 4
  %179 = call i32 @dump_string(i32 %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0))
  br label %207

180:                                              ; preds = %2
  %181 = load i32, i32* %3, align 4
  %182 = call i32 @dump_string(i32 %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0))
  br label %207

183:                                              ; preds = %2
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @dump_string(i32 %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0))
  br label %207

186:                                              ; preds = %2
  %187 = load i32, i32* %3, align 4
  %188 = call i32 @dump_string(i32 %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  br label %207

189:                                              ; preds = %2
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @dump_string(i32 %190, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0))
  br label %207

192:                                              ; preds = %2
  %193 = load i32, i32* %3, align 4
  %194 = call i32 @dump_string(i32 %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0))
  br label %207

195:                                              ; preds = %2
  %196 = load i32, i32* %3, align 4
  %197 = call i32 @dump_string(i32 %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0))
  br label %207

198:                                              ; preds = %2
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @DECL_ASSIGNMENT_OPERATOR_P(i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i32, i32* %3, align 4
  %204 = call i32 @dump_string(i32 %203, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %198
  br label %207

206:                                              ; preds = %2
  br label %207

207:                                              ; preds = %206, %205, %195, %192, %189, %186, %183, %180, %177, %174, %171, %168, %165, %162, %159, %156, %153, %152, %141, %130, %119, %108, %97, %86, %75, %64, %53, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  ret void
}

declare dso_local i32 @DECL_OVERLOADED_OPERATOR_P(i32) #1

declare dso_local i32 @dump_string(i32, i8*) #1

declare dso_local i32 @DECL_ASSIGNMENT_OPERATOR_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
