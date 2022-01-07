; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_next_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_next_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_addr = common dso_local global i32 0, align 4
@ibufp = common dso_local global i32* null, align 8
@addr_last = common dso_local global i32 0, align 4
@ERR = common dso_local global i64 0, align 8
@addr_cnt = common dso_local global i32 0, align 4
@second_addr = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"invalid address\00", align 1
@errmsg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @next_addr() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @current_addr, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %3, align 8
  store i32 1, i32* %5, align 4
  %9 = call i32 (...) @SKIP_BLANKS()
  %10 = load i32*, i32** @ibufp, align 8
  %11 = bitcast i32* %10 to i8*
  store i8* %11, i8** %2, align 8
  br label %12

12:                                               ; preds = %154, %0
  %13 = load i32*, i32** @ibufp, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  switch i32 %14, label %134 [
    i32 43, label %15
    i32 9, label %15
    i32 32, label %15
    i32 45, label %15
    i32 94, label %15
    i32 48, label %62
    i32 49, label %62
    i32 50, label %62
    i32 51, label %62
    i32 52, label %62
    i32 53, label %62
    i32 54, label %62
    i32 55, label %62
    i32 56, label %62
    i32 57, label %62
    i32 46, label %67
    i32 36, label %67
    i32 47, label %80
    i32 63, label %80
    i32 39, label %100
    i32 37, label %112
    i32 44, label %112
    i32 59, label %112
  ]

15:                                               ; preds = %12, %12, %12, %12, %12
  %16 = load i32*, i32** @ibufp, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** @ibufp, align 8
  %18 = call i32 (...) @SKIP_BLANKS()
  %19 = load i32*, i32** @ibufp, align 8
  %20 = load i32, i32* %19, align 4
  %21 = trunc i32 %20 to i8
  %22 = call i32 @isdigit(i8 zeroext %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %15
  %25 = load i64, i64* %4, align 8
  %26 = load i32*, i32** @ibufp, align 8
  %27 = call i32 @STRTOL(i64 %25, i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 94
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %24
  %34 = load i64, i64* %4, align 8
  %35 = sub nsw i64 0, %34
  br label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %4, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i64 [ %35, %33 ], [ %37, %36 ]
  %40 = load i64, i64* %3, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %3, align 8
  br label %61

42:                                               ; preds = %15
  %43 = load i32, i32* %6, align 4
  %44 = trunc i32 %43 to i8
  %45 = call i32 @isspace(i8 zeroext %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 94
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i1 [ true, %47 ], [ %52, %50 ]
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 -1, i32 1
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %3, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %53, %42
  br label %61

61:                                               ; preds = %60, %38
  br label %153

62:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %63 = call i32 (...) @MUST_BE_FIRST()
  %64 = load i64, i64* %3, align 8
  %65 = load i32*, i32** @ibufp, align 8
  %66 = call i32 @STRTOL(i64 %64, i32* %65)
  br label %153

67:                                               ; preds = %12, %12
  %68 = call i32 (...) @MUST_BE_FIRST()
  %69 = load i32*, i32** @ibufp, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** @ibufp, align 8
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 46
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @current_addr, align 4
  br label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @addr_last, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %3, align 8
  br label %153

80:                                               ; preds = %12, %12
  %81 = call i32 (...) @MUST_BE_FIRST()
  %82 = call i32 (...) @get_compiled_pattern()
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 47
  %85 = zext i1 %84 to i32
  %86 = call i64 @get_matching_node_addr(i32 %82, i32 %85)
  store i64 %86, i64* %3, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i64, i64* @ERR, align 8
  store i64 %89, i64* %1, align 8
  br label %155

90:                                               ; preds = %80
  %91 = load i32, i32* %6, align 4
  %92 = load i32*, i32** @ibufp, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32*, i32** @ibufp, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** @ibufp, align 8
  br label %98

98:                                               ; preds = %95, %90
  br label %99

99:                                               ; preds = %98
  br label %153

100:                                              ; preds = %12
  %101 = call i32 (...) @MUST_BE_FIRST()
  %102 = load i32*, i32** @ibufp, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** @ibufp, align 8
  %104 = load i32*, i32** @ibufp, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** @ibufp, align 8
  %106 = load i32, i32* %104, align 4
  %107 = call i64 @get_marked_node_addr(i32 %106)
  store i64 %107, i64* %3, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i64, i64* @ERR, align 8
  store i64 %110, i64* %1, align 8
  br label %155

111:                                              ; preds = %100
  br label %153

112:                                              ; preds = %12, %12, %12
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %112
  %116 = load i32*, i32** @ibufp, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** @ibufp, align 8
  %118 = load i32, i32* @addr_cnt, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @addr_cnt, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %120, 59
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @current_addr, align 4
  br label %125

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %122
  %126 = phi i32 [ %123, %122 ], [ 1, %124 ]
  store i32 %126, i32* @second_addr, align 4
  %127 = call i64 @next_addr()
  store i64 %127, i64* %3, align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* @addr_last, align 4
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %3, align 8
  br label %132

132:                                              ; preds = %129, %125
  br label %153

133:                                              ; preds = %112
  br label %134

134:                                              ; preds = %12, %133
  %135 = load i32*, i32** @ibufp, align 8
  %136 = load i8*, i8** %2, align 8
  %137 = bitcast i8* %136 to i32*
  %138 = icmp eq i32* %135, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i64, i64* @EOF, align 8
  store i64 %140, i64* %1, align 8
  br label %155

141:                                              ; preds = %134
  %142 = load i64, i64* %3, align 8
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* @addr_last, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %3, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %144, %141
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** @errmsg, align 8
  %150 = load i64, i64* @ERR, align 8
  store i64 %150, i64* %1, align 8
  br label %155

151:                                              ; preds = %144
  %152 = load i64, i64* %3, align 8
  store i64 %152, i64* %1, align 8
  br label %155

153:                                              ; preds = %132, %111, %99, %77, %62, %61
  br label %154

154:                                              ; preds = %153
  store i32 0, i32* %5, align 4
  br label %12

155:                                              ; preds = %151, %149, %139, %109, %88
  %156 = load i64, i64* %1, align 8
  ret i64 %156
}

declare dso_local i32 @SKIP_BLANKS(...) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i32 @STRTOL(i64, i32*) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i32 @MUST_BE_FIRST(...) #1

declare dso_local i64 @get_matching_node_addr(i32, i32) #1

declare dso_local i32 @get_compiled_pattern(...) #1

declare dso_local i64 @get_marked_node_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
