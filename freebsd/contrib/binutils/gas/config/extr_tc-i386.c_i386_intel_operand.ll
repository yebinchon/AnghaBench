; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_i386_intel_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_i386_intel_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i32, i32, i64, i8*, i32*, i64, i64 }
%struct.TYPE_10__ = type { i64, i32*, i32* }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@intel_parser = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@T_NIL = common dso_local global i64 0, align 8
@prev_token = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cur_token = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [43 x i8] c"invalid operand for '%s' ('%s' unexpected)\00", align 1
@current_templates = common dso_local global %struct.TYPE_13__* null, align 8
@i = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@IsString = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"too many memory references for '%s'\00", align 1
@quiet_warnings = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Treating `%s' as memory reference\00", align 1
@Reg16 = common dso_local global i32 0, align 4
@T_OFFSET = common dso_local global i32 0, align 4
@this_operand = common dso_local global i32 0, align 4
@MAX_OPERANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @i386_intel_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386_intel_operand(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @xstrdup(i8* %9)
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 0), align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = add nsw i32 %12, 1
  %14 = call i64 @xmalloc(i32 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 1), align 8
  br label %16

16:                                               ; preds = %163, %2
  %17 = load i64, i64* @T_NIL, align 8
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @prev_token, i32 0, i32 0), align 8
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_token, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @prev_token, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_token, i32 0, i32 2), align 4
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @prev_token, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_token, i32 0, i32 1), align 8
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 3), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 7), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 6), align 8
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 1), align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 5), align 8
  %21 = call i32 (...) @intel_get_token()
  %22 = call i32 (...) @intel_expr()
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %167

26:                                               ; preds = %16
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_token, i32 0, i32 0), align 8
  %28 = load i64, i64* @T_NIL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current_templates, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cur_token, i32 0, i32 1), align 8
  %38 = call i32 (i32, i32, ...) @as_bad(i32 %31, i32 %36, i32 %37)
  store i32 0, i32* %5, align 4
  br label %147

39:                                               ; preds = %26
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 4), align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %133

42:                                               ; preds = %39
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 0), align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current_templates, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IsString, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %45, %42
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 0), align 8
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %65

57:                                               ; preds = %54, %45
  %58 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current_templates, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i32, ...) @as_bad(i32 %58, i32 %63)
  store i32 0, i32* %5, align 4
  br label %132

65:                                               ; preds = %54
  %66 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 1), align 8
  store i8* %66, i8** %7, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 0), align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 0), align 8
  %69 = load i32, i32* @quiet_warnings, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %65
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 4), align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @as_warn(i32 %75, i8* %76)
  br label %78

78:                                               ; preds = %74, %71, %65
  %79 = load i8*, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = call i32 @i386_displacement(i8* %84, i8* %89)
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %83, %78
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %131

94:                                               ; preds = %91
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 2), align 8
  %96 = icmp ne %struct.TYPE_9__* %95, null
  br i1 %96, label %97, label %128

97:                                               ; preds = %94
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 3), align 8
  %99 = icmp ne %struct.TYPE_9__* %98, null
  br i1 %99, label %100, label %128

100:                                              ; preds = %97
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 2), align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @Reg16, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %100
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 3), align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @Reg16, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %107
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 2), align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp sge i32 %117, 6
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 3), align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %122, 6
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 3), align 8
  store %struct.TYPE_9__* %125, %struct.TYPE_9__** %8, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 2), align 8
  store %struct.TYPE_9__* %126, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 3), align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %127, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 2), align 8
  br label %128

128:                                              ; preds = %124, %119, %114, %107, %100, %97, %94
  %129 = load i8*, i8** %3, align 8
  %130 = call i32 @i386_index_check(i8* %129)
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %128, %91
  br label %132

132:                                              ; preds = %131, %57
  br label %146

133:                                              ; preds = %39
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 3), align 4
  %135 = load i32, i32* @T_OFFSET, align 4
  %136 = shl i32 1, %135
  %137 = and i32 %134, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %133
  %140 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 6), align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139, %133
  %143 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 1), align 8
  %144 = call i32 @i386_immediate(i8* %143)
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %142, %139
  br label %146

146:                                              ; preds = %145, %132
  br label %147

147:                                              ; preds = %146, %30
  %148 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 5), align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i32, i32* @this_operand, align 4
  %152 = load i32, i32* @MAX_OPERANDS, align 4
  %153 = sub nsw i32 %152, 1
  %154 = icmp sge i32 %151, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %155, %150, %147
  %157 = load i32, i32* %5, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 5), align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %159, %156
  br label %167

163:                                              ; preds = %159
  %164 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 5), align 8
  store i8* %164, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 0), align 8
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 1), align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i, i32 0, i32 1), align 4
  store i32 %165, i32* @this_operand, align 4
  br label %16

167:                                              ; preds = %162, %25
  %168 = load i8*, i8** %6, align 8
  %169 = call i32 @free(i8* %168)
  %170 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @intel_parser, i32 0, i32 1), align 8
  %171 = call i32 @free(i8* %170)
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @intel_get_token(...) #1

declare dso_local i32 @intel_expr(...) #1

declare dso_local i32 @as_bad(i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @as_warn(i32, i8*) #1

declare dso_local i32 @i386_displacement(i8*, i8*) #1

declare dso_local i32 @i386_index_check(i8*) #1

declare dso_local i32 @i386_immediate(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
