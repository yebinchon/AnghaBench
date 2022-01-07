; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_bracket_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_bracket_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i8*, i32, i32, i64 }
%struct.TYPE_9__ = type { i64, i64, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@intel_parser = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@T_OFFSET = common dso_local global i32 0, align 4
@i = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@this_operand = common dso_local global i64 0, align 8
@T_NIL = common dso_local global i8 0, align 1
@current_templates = common dso_local global %struct.TYPE_10__* null, align 8
@Jump = common dso_local global i32 0, align 4
@JumpDword = common dso_local global i32 0, align 4
@JumpAbsolute = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@quiet_warnings = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"`[%.*s]' taken to mean just `%.*s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_bracket_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_bracket_expr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 0), align 8
  %6 = load i32, i32* @T_OFFSET, align 4
  %7 = shl i32 1, %6
  %8 = and i32 %5, %7
  store i32 %8, i32* %2, align 4
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 1), align 8
  store i8* %9, i8** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 3), align 8
  %11 = load i64, i64* @this_operand, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i8, i8* @T_NIL, align 1
  %18 = call i32 @intel_match_token(i8 signext %17)
  store i32 %18, i32* %1, align 4
  br label %125

19:                                               ; preds = %0
  %20 = call i32 @intel_match_token(i8 signext 91)
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 5), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 4), align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 4), align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current_templates, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @Jump, align 4
  %32 = load i32, i32* @JumpDword, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %23
  %37 = load i32, i32* @JumpAbsolute, align 4
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %39 = load i64, i64* @this_operand, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %23
  %44 = load i32, i32* %2, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 0), align 8
  %47 = and i32 %46, %45
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 0), align 8
  br label %51

48:                                               ; preds = %19
  %49 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 2), align 8
  %50 = call i32 @strcat(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 2), align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 2), align 8
  %58 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 2), align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 43
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 2), align 8
  %68 = call i32 @strcat(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %56, %51
  %70 = call i64 (...) @intel_expr()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %124

72:                                               ; preds = %69
  %73 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 1), align 8
  %74 = load i8*, i8** %3, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sub nsw i64 %77, 1
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  %80 = call i32 @intel_match_token(i8 signext 93)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %124

82:                                               ; preds = %72
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 5), align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 2), align 8
  %87 = call i32 @strcat(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %120

88:                                               ; preds = %82
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 4), align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 4), align 4
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 1), align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %88
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 3), align 8
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 3), align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 0), align 8
  %102 = load i32, i32* @T_OFFSET, align 4
  %103 = shl i32 1, %102
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 3), align 8
  br label %118

107:                                              ; preds = %100
  %108 = load i32, i32* @quiet_warnings, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %107
  %111 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i32, i32* %4, align 4
  %113 = load i8*, i8** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = load i8*, i8** %3, align 8
  %116 = call i32 @as_warn(i32 %111, i32 %112, i8* %113, i32 %114, i8* %115)
  br label %117

117:                                              ; preds = %110, %107
  br label %118

118:                                              ; preds = %117, %106
  br label %119

119:                                              ; preds = %118, %97
  br label %120

120:                                              ; preds = %119, %85
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 0), align 8
  %123 = or i32 %122, %121
  store i32 %123, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 0), align 8
  store i32 1, i32* %1, align 4
  br label %125

124:                                              ; preds = %72, %69
  store i32 0, i32* %1, align 4
  br label %125

125:                                              ; preds = %124, %120, %16
  %126 = load i32, i32* %1, align 4
  ret i32 %126
}

declare dso_local i32 @intel_match_token(i8 signext) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @intel_expr(...) #1

declare dso_local i32 @as_warn(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
