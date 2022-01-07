; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@tokens = common dso_local global i32 0, align 4
@CONV_BINARY = common dso_local global i32 0, align 4
@CONV_TEXT = common dso_local global i32 0, align 4
@CONV_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opts(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  store i8* %0, i8** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %11
  store i32 1, i32* %12, align 4
  br label %160

35:                                               ; preds = %11
  br label %36

36:                                               ; preds = %158, %155, %35
  %37 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %24, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %159

39:                                               ; preds = %36
  %40 = load i32, i32* @MAX_OPT_ARGS, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %26, align 8
  %43 = alloca %struct.TYPE_5__, i64 %41, align 16
  store i64 %41, i64* %27, align 8
  %44 = load i8*, i8** %24, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store i32 2, i32* %29, align 4
  br label %155

48:                                               ; preds = %39
  %49 = load i8*, i8** %24, align 8
  %50 = load i32, i32* @tokens, align 4
  %51 = call i32 @match_token(i8* %49, i32 %50, %struct.TYPE_5__* %43)
  store i32 %51, i32* %28, align 4
  %52 = load i32, i32* %28, align 4
  switch i32 %52, label %153 [
    i32 131, label %53
    i32 129, label %54
    i32 132, label %61
    i32 128, label %68
    i32 148, label %75
    i32 149, label %77
    i32 140, label %79
    i32 139, label %82
    i32 141, label %85
    i32 147, label %88
    i32 146, label %90
    i32 145, label %92
    i32 135, label %94
    i32 133, label %96
    i32 134, label %98
    i32 138, label %100
    i32 137, label %102
    i32 136, label %104
    i32 142, label %106
    i32 143, label %108
    i32 144, label %110
    i32 130, label %112
  ]

53:                                               ; preds = %48
  store i32 2, i32* %12, align 4
  store i32 1, i32* %29, align 4
  br label %155

54:                                               ; preds = %48
  %55 = call i32 @match_int(%struct.TYPE_5__* %43, i32* %25)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  store i32 1, i32* %29, align 4
  br label %155

58:                                               ; preds = %54
  %59 = load i32, i32* %25, align 4
  %60 = load i32*, i32** %14, align 8
  store i32 %59, i32* %60, align 4
  br label %154

61:                                               ; preds = %48
  %62 = call i32 @match_int(%struct.TYPE_5__* %43, i32* %25)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  store i32 1, i32* %29, align 4
  br label %155

65:                                               ; preds = %61
  %66 = load i32, i32* %25, align 4
  %67 = load i32*, i32** %15, align 8
  store i32 %66, i32* %67, align 4
  br label %154

68:                                               ; preds = %48
  %69 = call i32 @match_octal(%struct.TYPE_5__* %43, i32* %25)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  store i32 1, i32* %29, align 4
  br label %155

72:                                               ; preds = %68
  %73 = load i32, i32* %25, align 4
  %74 = load i32*, i32** %16, align 8
  store i32 %73, i32* %74, align 4
  br label %154

75:                                               ; preds = %48
  %76 = load i32*, i32** %17, align 8
  store i32 1, i32* %76, align 4
  br label %154

77:                                               ; preds = %48
  %78 = load i32*, i32** %17, align 8
  store i32 0, i32* %78, align 4
  br label %154

79:                                               ; preds = %48
  %80 = load i32, i32* @CONV_BINARY, align 4
  %81 = load i32*, i32** %18, align 8
  store i32 %80, i32* %81, align 4
  br label %154

82:                                               ; preds = %48
  %83 = load i32, i32* @CONV_TEXT, align 4
  %84 = load i32*, i32** %18, align 8
  store i32 %83, i32* %84, align 4
  br label %154

85:                                               ; preds = %48
  %86 = load i32, i32* @CONV_AUTO, align 4
  %87 = load i32*, i32** %18, align 8
  store i32 %86, i32* %87, align 4
  br label %154

88:                                               ; preds = %48
  %89 = load i32*, i32** %20, align 8
  store i32 0, i32* %89, align 4
  br label %154

90:                                               ; preds = %48
  %91 = load i32*, i32** %20, align 8
  store i32 1, i32* %91, align 4
  br label %154

92:                                               ; preds = %48
  %93 = load i32*, i32** %20, align 8
  store i32 2, i32* %93, align 4
  br label %154

94:                                               ; preds = %48
  %95 = load i32*, i32** %21, align 8
  store i32 0, i32* %95, align 4
  br label %154

96:                                               ; preds = %48
  %97 = load i32*, i32** %21, align 8
  store i32 1, i32* %97, align 4
  br label %154

98:                                               ; preds = %48
  %99 = load i32*, i32** %21, align 8
  store i32 2, i32* %99, align 4
  br label %154

100:                                              ; preds = %48
  %101 = load i32*, i32** %19, align 8
  store i32 0, i32* %101, align 4
  br label %154

102:                                              ; preds = %48
  %103 = load i32*, i32** %19, align 8
  store i32 1, i32* %103, align 4
  br label %154

104:                                              ; preds = %48
  %105 = load i32*, i32** %19, align 8
  store i32 2, i32* %105, align 4
  br label %154

106:                                              ; preds = %48
  %107 = load i32*, i32** %22, align 8
  store i32 0, i32* %107, align 4
  br label %154

108:                                              ; preds = %48
  %109 = load i32*, i32** %22, align 8
  store i32 1, i32* %109, align 4
  br label %154

110:                                              ; preds = %48
  %111 = load i32*, i32** %22, align 8
  store i32 2, i32* %111, align 4
  br label %154

112:                                              ; preds = %48
  store i32 1, i32* %30, align 4
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 16
  store i8* %115, i8** %31, align 8
  %116 = load i8*, i8** %31, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i8*, i8** %31, align 8
  %120 = load i8, i8* %119, align 1
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118, %112
  store i32 0, i32* %12, align 4
  store i32 1, i32* %29, align 4
  br label %155

123:                                              ; preds = %118
  %124 = load i8*, i8** %31, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 45
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 -1, i32* %30, align 4
  br label %129

129:                                              ; preds = %128, %123
  %130 = load i8*, i8** %31, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 43
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load i8*, i8** %31, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 45
  br i1 %138, label %139, label %142

139:                                              ; preds = %134, %129
  %140 = load i8*, i8** %31, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %31, align 8
  br label %142

142:                                              ; preds = %139, %134
  %143 = load i8*, i8** %31, align 8
  %144 = call i32 @simple_strtoul(i8* %143, i8** %31, i32 0)
  %145 = load i32, i32* %30, align 4
  %146 = mul nsw i32 %144, %145
  %147 = load i32*, i32** %23, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i8*, i8** %31, align 8
  %149 = load i8, i8* %148, align 1
  %150 = icmp ne i8 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  store i32 0, i32* %12, align 4
  store i32 1, i32* %29, align 4
  br label %155

152:                                              ; preds = %142
  br label %154

153:                                              ; preds = %48
  store i32 0, i32* %12, align 4
  store i32 1, i32* %29, align 4
  br label %155

154:                                              ; preds = %152, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %85, %82, %79, %77, %75, %72, %65, %58
  store i32 0, i32* %29, align 4
  br label %155

155:                                              ; preds = %154, %153, %151, %122, %71, %64, %57, %53, %47
  %156 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %29, align 4
  switch i32 %157, label %162 [
    i32 0, label %158
    i32 2, label %36
    i32 1, label %160
  ]

158:                                              ; preds = %155
  br label %36

159:                                              ; preds = %36
  store i32 1, i32* %12, align 4
  br label %160

160:                                              ; preds = %159, %155, %34
  %161 = load i32, i32* %12, align 4
  ret i32 %161

162:                                              ; preds = %155
  unreachable
}

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @match_int(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @match_octal(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
