; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_filter_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_filter_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_parse_state = type { i32 }

@OP_NONE = common dso_local global i32 0, align 4
@FILT_ERR_INVALID_OP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OP_OPEN_PAREN = common dso_local global i32 0, align 4
@FILT_ERR_UNBALANCED_PAREN = common dso_local global i32 0, align 4
@FILT_ERR_OPERAND_TOO_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filter_parse_state*)* @filter_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_parse(%struct.filter_parse_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.filter_parse_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.filter_parse_state* %0, %struct.filter_parse_state** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %148, %135, %87, %79, %27, %16, %1
  %9 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %10 = call signext i8 @infix_next(%struct.filter_parse_state* %9)
  store i8 %10, i8* %7, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %149

12:                                               ; preds = %8
  %13 = load i8, i8* %7, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 34
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = xor i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %8

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %137

23:                                               ; preds = %19
  %24 = load i8, i8* %7, align 1
  %25 = call i64 @isspace(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %8

28:                                               ; preds = %23
  %29 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %30 = load i8, i8* %7, align 1
  %31 = call i64 @is_op_char(%struct.filter_parse_state* %29, i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %28
  %34 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %35 = load i8, i8* %7, align 1
  %36 = call i32 @infix_get_op(%struct.filter_parse_state* %34, i8 signext %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @OP_NONE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %42 = load i32, i32* @FILT_ERR_INVALID_OP, align 4
  %43 = call i32 @parse_error(%struct.filter_parse_state* %41, i32 %42, i32 0)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %187

46:                                               ; preds = %33
  %47 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %48 = call i32 @curr_operand(%struct.filter_parse_state* %47)
  %49 = call i64 @strlen(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %53 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %54 = call i32 @curr_operand(%struct.filter_parse_state* %53)
  %55 = call i32 @postfix_append_operand(%struct.filter_parse_state* %52, i32 %54)
  %56 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %57 = call i32 @clear_operand_string(%struct.filter_parse_state* %56)
  br label %58

58:                                               ; preds = %51, %46
  br label %59

59:                                               ; preds = %72, %58
  %60 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %61 = call i32 @filter_opstack_empty(%struct.filter_parse_state* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %66 = call i32 @filter_opstack_top(%struct.filter_parse_state* %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @is_precedence_lower(%struct.filter_parse_state* %67, i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %64
  %73 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %74 = call i32 @filter_opstack_pop(%struct.filter_parse_state* %73)
  store i32 %74, i32* %6, align 4
  %75 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @postfix_append_op(%struct.filter_parse_state* %75, i32 %76)
  br label %59

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %59
  %80 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @filter_opstack_push(%struct.filter_parse_state* %80, i32 %81)
  br label %8

83:                                               ; preds = %28
  %84 = load i8, i8* %7, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 40
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %89 = load i32, i32* @OP_OPEN_PAREN, align 4
  %90 = call i32 @filter_opstack_push(%struct.filter_parse_state* %88, i32 %89)
  br label %8

91:                                               ; preds = %83
  %92 = load i8, i8* %7, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 41
  br i1 %94, label %95, label %136

95:                                               ; preds = %91
  %96 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %97 = call i32 @curr_operand(%struct.filter_parse_state* %96)
  %98 = call i64 @strlen(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %102 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %103 = call i32 @curr_operand(%struct.filter_parse_state* %102)
  %104 = call i32 @postfix_append_operand(%struct.filter_parse_state* %101, i32 %103)
  %105 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %106 = call i32 @clear_operand_string(%struct.filter_parse_state* %105)
  br label %107

107:                                              ; preds = %100, %95
  %108 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %109 = call i32 @filter_opstack_pop(%struct.filter_parse_state* %108)
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %119, %107
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @OP_NONE, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @OP_OPEN_PAREN, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %125

119:                                              ; preds = %114
  %120 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @postfix_append_op(%struct.filter_parse_state* %120, i32 %121)
  %123 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %124 = call i32 @filter_opstack_pop(%struct.filter_parse_state* %123)
  store i32 %124, i32* %6, align 4
  br label %110

125:                                              ; preds = %118, %110
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @OP_NONE, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %131 = load i32, i32* @FILT_ERR_UNBALANCED_PAREN, align 4
  %132 = call i32 @parse_error(%struct.filter_parse_state* %130, i32 %131, i32 0)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %187

135:                                              ; preds = %125
  br label %8

136:                                              ; preds = %91
  br label %137

137:                                              ; preds = %136, %22
  %138 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %139 = load i8, i8* %7, align 1
  %140 = call i64 @append_operand_char(%struct.filter_parse_state* %138, i8 signext %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %144 = load i32, i32* @FILT_ERR_OPERAND_TOO_LONG, align 4
  %145 = call i32 @parse_error(%struct.filter_parse_state* %143, i32 %144, i32 0)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %187

148:                                              ; preds = %137
  br label %8

149:                                              ; preds = %8
  %150 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %151 = call i32 @curr_operand(%struct.filter_parse_state* %150)
  %152 = call i64 @strlen(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %156 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %157 = call i32 @curr_operand(%struct.filter_parse_state* %156)
  %158 = call i32 @postfix_append_operand(%struct.filter_parse_state* %155, i32 %157)
  br label %159

159:                                              ; preds = %154, %149
  br label %160

160:                                              ; preds = %182, %159
  %161 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %162 = call i32 @filter_opstack_empty(%struct.filter_parse_state* %161)
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  br i1 %164, label %165, label %186

165:                                              ; preds = %160
  %166 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %167 = call i32 @filter_opstack_pop(%struct.filter_parse_state* %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @OP_NONE, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %186

172:                                              ; preds = %165
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @OP_OPEN_PAREN, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %178 = load i32, i32* @FILT_ERR_UNBALANCED_PAREN, align 4
  %179 = call i32 @parse_error(%struct.filter_parse_state* %177, i32 %178, i32 0)
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %187

182:                                              ; preds = %172
  %183 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @postfix_append_op(%struct.filter_parse_state* %183, i32 %184)
  br label %160

186:                                              ; preds = %171, %160
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %186, %176, %142, %129, %40
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local signext i8 @infix_next(%struct.filter_parse_state*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @is_op_char(%struct.filter_parse_state*, i8 signext) #1

declare dso_local i32 @infix_get_op(%struct.filter_parse_state*, i8 signext) #1

declare dso_local i32 @parse_error(%struct.filter_parse_state*, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @curr_operand(%struct.filter_parse_state*) #1

declare dso_local i32 @postfix_append_operand(%struct.filter_parse_state*, i32) #1

declare dso_local i32 @clear_operand_string(%struct.filter_parse_state*) #1

declare dso_local i32 @filter_opstack_empty(%struct.filter_parse_state*) #1

declare dso_local i32 @filter_opstack_top(%struct.filter_parse_state*) #1

declare dso_local i32 @is_precedence_lower(%struct.filter_parse_state*, i32, i32) #1

declare dso_local i32 @filter_opstack_pop(%struct.filter_parse_state*) #1

declare dso_local i32 @postfix_append_op(%struct.filter_parse_state*, i32) #1

declare dso_local i32 @filter_opstack_push(%struct.filter_parse_state*, i32) #1

declare dso_local i64 @append_operand_char(%struct.filter_parse_state*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
