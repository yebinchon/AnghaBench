; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_fpa_immediate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_fpa_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@MAX_LITTLENUMS = common dso_local global i32 0, align 4
@fp_const = common dso_local global i64* null, align 8
@is_end_of_line = common dso_local global i64* null, align 8
@NUM_FLOAT_VALS = common dso_local global i32 0, align 4
@fp_values = common dso_local global i64** null, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@absolute_section = common dso_local global i64 0, align 8
@O_big = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"invalid FPA immediate expression\00", align 1
@inst = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @parse_fpa_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fpa_immediate(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %12 = load i32, i32* @MAX_LITTLENUMS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %67, %1
  %17 = load i64*, i64** @fp_const, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %16
  %24 = load i8**, i8*** %3, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i64*, i64** @fp_const, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** @fp_const, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @strlen(i64 %35)
  %37 = call i64 @strncmp(i8* %25, i64 %30, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %23
  %40 = load i8**, i8*** %3, align 8
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %10, align 8
  %42 = load i64*, i64** @fp_const, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @strlen(i64 %46)
  %48 = load i8**, i8*** %3, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %48, align 8
  %52 = load i64*, i64** @is_end_of_line, align 8
  %53 = load i8**, i8*** %3, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds i64, i64* %52, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %39
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 8
  store i32 %62, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %203

63:                                               ; preds = %39
  %64 = load i8*, i8** %10, align 8
  %65 = load i8**, i8*** %3, align 8
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %63, %23
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %16

70:                                               ; preds = %16
  %71 = load i32, i32* @MAX_LITTLENUMS, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memset(i64* %15, i32 0, i32 %74)
  %76 = load i8**, i8*** %3, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @atof_ieee(i8* %77, i8 signext 120, i64* %15)
  store i8* %78, i8** %6, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %132

80:                                               ; preds = %70
  %81 = load i64*, i64** @is_end_of_line, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %132

88:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %128, %88
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @NUM_FLOAT_VALS, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %131

93:                                               ; preds = %89
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %115, %93
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @MAX_LITTLENUMS, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %94
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %15, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64**, i64*** @fp_values, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64*, i64** %103, i64 %105
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %102, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %98
  br label %118

114:                                              ; preds = %98
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %94

118:                                              ; preds = %113, %94
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @MAX_LITTLENUMS, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i8*, i8** %6, align 8
  %124 = load i8**, i8*** %3, align 8
  store i8* %123, i8** %124, align 8
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 8
  store i32 %126, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %203

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %89

131:                                              ; preds = %89
  br label %132

132:                                              ; preds = %131, %80, %70
  %133 = load i8*, i8** @input_line_pointer, align 8
  store i8* %133, i8** %6, align 8
  %134 = load i8**, i8*** %3, align 8
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** @input_line_pointer, align 8
  %136 = call i64 @expression(%struct.TYPE_4__* %7)
  %137 = load i64, i64* @absolute_section, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %197

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @O_big, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %197

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %197

148:                                              ; preds = %144
  %149 = call i64 @gen_to_words(i64* %15, i32 5, i64 15)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %196

151:                                              ; preds = %148
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %192, %151
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @NUM_FLOAT_VALS, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %195

156:                                              ; preds = %152
  store i32 0, i32* %9, align 4
  br label %157

157:                                              ; preds = %178, %156
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @MAX_LITTLENUMS, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %181

161:                                              ; preds = %157
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %15, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i64**, i64*** @fp_values, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64*, i64** %166, i64 %168
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %165, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %161
  br label %181

177:                                              ; preds = %161
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %157

181:                                              ; preds = %176, %157
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @MAX_LITTLENUMS, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load i8*, i8** @input_line_pointer, align 8
  %187 = load i8**, i8*** %3, align 8
  store i8* %186, i8** %187, align 8
  %188 = load i8*, i8** %6, align 8
  store i8* %188, i8** @input_line_pointer, align 8
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 8
  store i32 %190, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %203

191:                                              ; preds = %181
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %152

195:                                              ; preds = %152
  br label %196

196:                                              ; preds = %195, %148
  br label %197

197:                                              ; preds = %196, %144, %139, %132
  %198 = load i8*, i8** @input_line_pointer, align 8
  %199 = load i8**, i8*** %3, align 8
  store i8* %198, i8** %199, align 8
  %200 = load i8*, i8** %6, align 8
  store i8* %200, i8** @input_line_pointer, align 8
  %201 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 %201, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inst, i32 0, i32 0), align 4
  %202 = load i32, i32* @FAIL, align 4
  store i32 %202, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %203

203:                                              ; preds = %197, %185, %122, %60
  %204 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strncmp(i8*, i64, i32) #2

declare dso_local i32 @strlen(i64) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i8* @atof_ieee(i8*, i8 signext, i64*) #2

declare dso_local i64 @expression(%struct.TYPE_4__*) #2

declare dso_local i64 @gen_to_words(i64*, i32, i64) #2

declare dso_local i32 @_(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
