; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_print_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_print_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@data_buffer = common dso_local global i8* null, align 8
@LISTING_WORD_SIZE = common dso_local global i32 0, align 4
@listing_lhs_width = common dso_local global i32 0, align 4
@list_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"% 4d     \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@on_page = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"% 4d ???? \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"% 4d %04x \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"****  %s\0A\00", align 1
@listing_lhs_cont_lines = common dso_local global i64 0, align 8
@listing_lhs_width_second = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"% 4d      \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i8*, i32)* @print_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_lines(%struct.TYPE_4__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** @data_buffer, align 8
  store i8* %17, i8** %13, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = call i32 @listing_page(%struct.TYPE_4__* %18)
  %20 = load i32, i32* @LISTING_WORD_SIZE, align 4
  %21 = mul nsw i32 %20, 2
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* @listing_lhs_width, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %54

27:                                               ; preds = %4
  %28 = load i32, i32* @list_file, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %38, %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @list_file, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %31

41:                                               ; preds = %31
  %42 = load i32, i32* @list_file, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  br label %48

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i8* [ %46, %45 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %47 ]
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @on_page, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @on_page, align 4
  %53 = call i32 @listing_page(%struct.TYPE_4__* null)
  br label %234

54:                                               ; preds = %4
  %55 = call i64 (...) @had_errors()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @list_file, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  br label %66

61:                                               ; preds = %54
  %62 = load i32, i32* @list_file, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %57
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %110, %66
  %68 = load i8*, i8** %13, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ult i32 %76, %77
  br label %79

79:                                               ; preds = %75, %67
  %80 = phi i1 [ false, %67 ], [ %78, %75 ]
  br i1 %80, label %81, label %113

81:                                               ; preds = %79
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* @list_file, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8*, i8** %13, align 8
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %89, i32 %96)
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %12, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @LISTING_WORD_SIZE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %81
  %106 = load i32, i32* @list_file, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* %9, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %105, %81
  %111 = load i32, i32* %9, align 4
  %112 = add i32 %111, 2
  store i32 %112, i32* %9, align 4
  br label %67

113:                                              ; preds = %79
  br label %114

114:                                              ; preds = %121, %113
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i32, i32* @list_file, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %114

124:                                              ; preds = %114
  %125 = load i32, i32* @list_file, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i8*, i8** %7, align 8
  br label %131

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi i8* [ %129, %128 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %130 ]
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %132)
  %134 = load i32, i32* @on_page, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* @on_page, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %137 = call i32 @listing_page(%struct.TYPE_4__* %136)
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %152

142:                                              ; preds = %131
  %143 = load i32, i32* @list_file, align 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %146)
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %149 = call i32 @listing_page(%struct.TYPE_4__* %148)
  %150 = load i32, i32* @on_page, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* @on_page, align 4
  br label %152

152:                                              ; preds = %142, %131
  store i32 0, i32* %11, align 4
  br label %153

153:                                              ; preds = %231, %152
  %154 = load i32, i32* %11, align 4
  %155 = load i64, i64* @listing_lhs_cont_lines, align 8
  %156 = trunc i64 %155 to i32
  %157 = icmp ult i32 %154, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load i8*, i8** %13, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br label %166

166:                                              ; preds = %158, %153
  %167 = phi i1 [ false, %153 ], [ %165, %158 ]
  br i1 %167, label %168, label %234

168:                                              ; preds = %166
  %169 = load i32, i32* @LISTING_WORD_SIZE, align 4
  %170 = mul nsw i32 %169, 2
  %171 = add nsw i32 %170, 1
  %172 = load i32, i32* @listing_lhs_width_second, align 4
  %173 = mul nsw i32 %171, %172
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %175 = load i32, i32* @list_file, align 4
  %176 = load i32, i32* %6, align 4
  %177 = call i32 (i32, i8*, ...) @fprintf(i32 %175, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %223, %168
  %179 = load i8*, i8** %13, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %178
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp ult i32 %187, %188
  br label %190

190:                                              ; preds = %186, %178
  %191 = phi i1 [ false, %178 ], [ %189, %186 ]
  br i1 %191, label %192, label %224

192:                                              ; preds = %190
  %193 = load i32, i32* %14, align 4
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* @list_file, align 4
  %195 = load i8*, i8** %13, align 8
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = load i8*, i8** %13, align 8
  %202 = load i32, i32* %16, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %201, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %200, i32 %207)
  %209 = load i32, i32* %14, align 4
  %210 = add nsw i32 %209, 2
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %9, align 4
  %212 = add i32 %211, 2
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %12, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* @LISTING_WORD_SIZE, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %192
  %219 = load i32, i32* @list_file, align 4
  %220 = call i32 (i32, i8*, ...) @fprintf(i32 %219, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %221 = load i32, i32* %9, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %223

223:                                              ; preds = %218, %192
  br label %178

224:                                              ; preds = %190
  %225 = load i32, i32* @list_file, align 4
  %226 = call i32 (i32, i8*, ...) @fprintf(i32 %225, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %227 = load i32, i32* @on_page, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* @on_page, align 4
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %230 = call i32 @listing_page(%struct.TYPE_4__* %229)
  br label %231

231:                                              ; preds = %224
  %232 = load i32, i32* %11, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %11, align 4
  br label %153

234:                                              ; preds = %48, %166
  ret void
}

declare dso_local i32 @listing_page(%struct.TYPE_4__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @had_errors(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
