; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_reg_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_reg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@REG_TYPE_RN = common dso_local global i64 0, align 8
@FAIL = common dso_local global i32 0, align 4
@reg_expected_msgs = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [27 x i8] c"bad range in register list\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Warning: duplicated register (r%d) in register list\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Warning: register range not in ascending order\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"missing `}'\00", align 1
@GE_NO_PREFIX = common dso_local global i32 0, align 4
@O_constant = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid register mask\00", align 1
@inst = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"expression too complex\00", align 1
@BFD_RELOC_ARM_MULTI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**)* @parse_reg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_reg_list(i8** %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %13 = load i8**, i8*** %3, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %208, %1
  store i32 0, i32* %6, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 123
  br i1 %19, label %20, label %130

20:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  br label %23

23:                                               ; preds = %114, %20
  %24 = load i64, i64* @REG_TYPE_RN, align 8
  %25 = call i32 @arm_reg_parse(i8** %4, i64 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @FAIL, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i8**, i8*** @reg_expected_msgs, align 8
  %30 = load i64, i64* @REG_TYPE_RN, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @_(i8* %32)
  %34 = call i32 @first_error(i8* %33)
  %35 = load i32, i32* @FAIL, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %2, align 8
  br label %215

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @first_error(i8* %45)
  %47 = load i32, i32* @FAIL, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %2, align 8
  br label %215

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %74, %49
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load i64, i64* %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = shl i32 1, %58
  %60 = sext i32 %59 to i64
  %61 = and i64 %57, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (i8*, ...) @as_tsktsk(i8* %64, i32 %65)
  br label %73

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  %69 = shl i32 1, %68
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %5, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %67, %63
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %52

77:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %77, %37
  %79 = load i64, i64* %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 1, %80
  %82 = sext i32 %81 to i64
  %83 = and i64 %79, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i8*, ...) @as_tsktsk(i8* %86, i32 %87)
  br label %97

89:                                               ; preds = %78
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %95 = call i32 (i8*, ...) @as_tsktsk(i8* %94)
  br label %96

96:                                               ; preds = %93, %89
  br label %97

97:                                               ; preds = %96, %85
  %98 = load i32, i32* %9, align 4
  %99 = shl i32 1, %98
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %5, align 8
  %102 = or i64 %101, %100
  store i64 %102, i64* %5, align 8
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %97
  %105 = call i32 @skip_past_comma(i8** %4)
  %106 = load i32, i32* @FAIL, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  store i32 1, i32* %7, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %4, align 8
  %111 = load i8, i8* %109, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 45
  br label %114

114:                                              ; preds = %108, %104
  %115 = phi i1 [ true, %104 ], [ %113, %108 ]
  br i1 %115, label %23, label %116

116:                                              ; preds = %114
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 -1
  store i8* %118, i8** %4, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %4, align 8
  %121 = load i8, i8* %119, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 125
  br i1 %123, label %124, label %129

124:                                              ; preds = %116
  %125 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %126 = call i32 @first_error(i8* %125)
  %127 = load i32, i32* @FAIL, align 4
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %2, align 8
  br label %215

129:                                              ; preds = %116
  br label %194

130:                                              ; preds = %15
  %131 = load i32, i32* @GE_NO_PREFIX, align 4
  %132 = call i64 @my_get_expression(%struct.TYPE_7__* %11, i8** %4, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* @FAIL, align 4
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %2, align 8
  br label %215

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @O_constant, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %183

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, 65535
  %148 = icmp ne i32 %144, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  %150 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i8* %150, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 8
  %151 = load i32, i32* @FAIL, align 4
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %2, align 8
  br label %215

153:                                              ; preds = %142
  %154 = load i64, i64* %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = and i64 %154, %157
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %153
  %161 = load i64, i64* %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = and i64 %161, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = sub nsw i32 0, %167
  %169 = load i32, i32* %12, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = shl i32 1, %171
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  %174 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %175 = load i32, i32* %12, align 4
  %176 = call i32 (i8*, ...) @as_tsktsk(i8* %174, i32 %175)
  br label %177

177:                                              ; preds = %160, %153
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %5, align 8
  %182 = or i64 %181, %180
  store i64 %182, i64* %5, align 8
  br label %193

183:                                              ; preds = %137
  %184 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0, i32 0), align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i8* %187, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 8
  %188 = load i32, i32* @FAIL, align 4
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %2, align 8
  br label %215

190:                                              ; preds = %183
  %191 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0, i32 2), %struct.TYPE_7__* %11, i32 16)
  %192 = load i64, i64* @BFD_RELOC_ARM_MULTI, align 8
  store i64 %192, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0, i32 1), align 8
  br label %193

193:                                              ; preds = %190, %177
  br label %194

194:                                              ; preds = %193, %129
  %195 = load i8*, i8** %4, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 124
  br i1 %198, label %204, label %199

199:                                              ; preds = %194
  %200 = load i8*, i8** %4, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 43
  br i1 %203, label %204, label %207

204:                                              ; preds = %199, %194
  %205 = load i8*, i8** %4, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %4, align 8
  store i32 1, i32* %6, align 4
  br label %207

207:                                              ; preds = %204, %199
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %6, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %15, label %211

211:                                              ; preds = %208
  %212 = load i8*, i8** %4, align 8
  %213 = load i8**, i8*** %3, align 8
  store i8* %212, i8** %213, align 8
  %214 = load i64, i64* %5, align 8
  store i64 %214, i64* %2, align 8
  br label %215

215:                                              ; preds = %211, %186, %149, %134, %124, %44, %28
  %216 = load i64, i64* %2, align 8
  ret i64 %216
}

declare dso_local i32 @arm_reg_parse(i8**, i64) #1

declare dso_local i32 @first_error(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @as_tsktsk(i8*, ...) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i64 @my_get_expression(%struct.TYPE_7__*, i8**, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
