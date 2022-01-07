; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_check_protection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_check_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64* }

@EOF = common dso_local global i32 0, align 4
@lineno = common dso_local global i32 0, align 4
@buf = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ifdef\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @check_protection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_protection(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %21, %2
  %11 = call i32 @inf_skip_spaces(i8 signext 32)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @EOF, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %186

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 10
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %24

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* @lineno, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @lineno, align 4
  br label %10

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 35
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %186

28:                                               ; preds = %24
  %29 = call i32 @inf_skip_spaces(i8 signext 32)
  %30 = call i32 @inf_scan_ident(%struct.TYPE_5__* @buf, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = call i64 @SSTRING_LENGTH(%struct.TYPE_5__* @buf)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @buf, i32 0, i32 0), align 8
  %35 = call i64 @strcmp(i64* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %28
  store i32 0, i32* %3, align 4
  br label %186

38:                                               ; preds = %33
  %39 = load i32, i32* @lineno, align 4
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = trunc i32 %41 to i8
  %43 = call i32 @inf_skip_spaces(i8 signext %42)
  %44 = call i32 @inf_scan_ident(%struct.TYPE_5__* @buf, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = call i64 @SSTRING_LENGTH(%struct.TYPE_5__* @buf)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @EOF, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %38
  store i32 0, i32* %3, align 4
  br label %186

52:                                               ; preds = %47
  %53 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @buf, i32 0, i32 0), align 8
  %54 = call i8* @xstrdup(i64* %53)
  store i8* %54, i8** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @INF_UNGET(i32 %55)
  %57 = call i32 @inf_read_upto(%struct.TYPE_5__* @buf, i8 signext 10)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @EOF, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %186

62:                                               ; preds = %52
  %63 = load i32, i32* @lineno, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @lineno, align 4
  br label %65

65:                                               ; preds = %164, %74, %62
  %66 = call i32 @inf_skip_spaces(i8 signext 32)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @EOF, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %186

71:                                               ; preds = %65
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @lineno, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @lineno, align 4
  br label %65

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 35
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %148

81:                                               ; preds = %77
  %82 = call i32 @inf_skip_spaces(i8 signext 32)
  %83 = call i32 @inf_scan_ident(%struct.TYPE_5__* @buf, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = call i64 @SSTRING_LENGTH(%struct.TYPE_5__* @buf)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %147

87:                                               ; preds = %81
  %88 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @buf, i32 0, i32 0), align 8
  %89 = call i64 @strcmp(i64* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @buf, i32 0, i32 0), align 8
  %93 = call i64 @strcmp(i64* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @buf, i32 0, i32 0), align 8
  %97 = call i64 @strcmp(i64* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95, %91, %87
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %146

102:                                              ; preds = %95
  %103 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @buf, i32 0, i32 0), align 8
  %104 = call i64 @strcmp(i64* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %167

112:                                              ; preds = %106
  br label %145

113:                                              ; preds = %102
  %114 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @buf, i32 0, i32 0), align 8
  %115 = call i64 @strcmp(i64* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %186

121:                                              ; preds = %117
  br label %144

122:                                              ; preds = %113
  %123 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @buf, i32 0, i32 0), align 8
  %124 = call i64 @strcmp(i64* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %143, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = trunc i32 %127 to i8
  %129 = call i32 @inf_skip_spaces(i8 signext %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @inf_scan_ident(%struct.TYPE_5__* @buf, i32 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @buf, i32 0, i32 0), align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %126
  %137 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @buf, i32 0, i32 0), align 8
  %138 = load i8*, i8** %8, align 8
  %139 = call i64 @strcmp(i64* %137, i8* %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 1, i32* %9, align 4
  br label %142

142:                                              ; preds = %141, %136, %126
  br label %143

143:                                              ; preds = %142, %122
  br label %144

144:                                              ; preds = %143, %121
  br label %145

145:                                              ; preds = %144, %112
  br label %146

146:                                              ; preds = %145, %99
  br label %147

147:                                              ; preds = %146, %86
  br label %148

148:                                              ; preds = %147, %80
  br label %149

149:                                              ; preds = %157, %148
  %150 = load i32, i32* %6, align 4
  %151 = icmp eq i32 %150, 10
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @EOF, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152, %149
  br label %159

157:                                              ; preds = %152
  %158 = call i32 (...) @INF_GET()
  store i32 %158, i32* %6, align 4
  br label %149

159:                                              ; preds = %156
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @EOF, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %186

164:                                              ; preds = %159
  %165 = load i32, i32* @lineno, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* @lineno, align 4
  br label %65

167:                                              ; preds = %111
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  br label %186

171:                                              ; preds = %167
  %172 = load i32, i32* @lineno, align 4
  %173 = load i32*, i32** %5, align 8
  store i32 %172, i32* %173, align 4
  br label %174

174:                                              ; preds = %184, %171
  %175 = call i32 @inf_skip_spaces(i8 signext 32)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @EOF, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %185

180:                                              ; preds = %174
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 10
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store i32 0, i32* %3, align 4
  br label %186

184:                                              ; preds = %180
  br label %174

185:                                              ; preds = %179
  store i32 1, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %183, %170, %163, %120, %70, %61, %51, %37, %27, %15
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @inf_skip_spaces(i8 signext) #1

declare dso_local i32 @inf_scan_ident(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @SSTRING_LENGTH(%struct.TYPE_5__*) #1

declare dso_local i64 @strcmp(i64*, i8*) #1

declare dso_local i8* @xstrdup(i64*) #1

declare dso_local i32 @INF_UNGET(i32) #1

declare dso_local i32 @inf_read_upto(%struct.TYPE_5__*, i8 signext) #1

declare dso_local i32 @INF_GET(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
