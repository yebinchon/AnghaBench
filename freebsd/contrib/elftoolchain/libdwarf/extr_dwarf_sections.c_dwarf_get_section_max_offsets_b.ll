; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_sections.c_dwarf_get_section_max_offsets_b.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_sections.c_dwarf_get_section_max_offsets_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i64 }

@DW_DLV_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c".debug_info\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c".debug_abbrev\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c".debug_line\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c".debug_loc\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c".debug_aranges\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c".debug_macinfo\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c".debug_pubnames\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c".debug_str\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c".debug_frame\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c".debug_ranges\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c".debug_pubtypes\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c".debug_types\00", align 1
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_section_max_offsets_b(%struct.TYPE_5__* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i64* %7, i64* %8, i64* %9, i64* %10, i64* %11, i64* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %15, align 8
  store i64* %1, i64** %16, align 8
  store i64* %2, i64** %17, align 8
  store i64* %3, i64** %18, align 8
  store i64* %4, i64** %19, align 8
  store i64* %5, i64** %20, align 8
  store i64* %6, i64** %21, align 8
  store i64* %7, i64** %22, align 8
  store i64* %8, i64** %23, align 8
  store i64* %9, i64** %24, align 8
  store i64* %10, i64** %25, align 8
  store i64* %11, i64** %26, align 8
  store i64* %12, i64** %27, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %32 = icmp eq %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %13
  %34 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %34, i32* %14, align 4
  br label %196

35:                                               ; preds = %13
  %36 = load i64*, i64** %16, align 8
  %37 = call i32 @SET(i64* %36, i64 0)
  %38 = load i64*, i64** %17, align 8
  %39 = call i32 @SET(i64* %38, i64 0)
  %40 = load i64*, i64** %18, align 8
  %41 = call i32 @SET(i64* %40, i64 0)
  %42 = load i64*, i64** %19, align 8
  %43 = call i32 @SET(i64* %42, i64 0)
  %44 = load i64*, i64** %20, align 8
  %45 = call i32 @SET(i64* %44, i64 0)
  %46 = load i64*, i64** %21, align 8
  %47 = call i32 @SET(i64* %46, i64 0)
  %48 = load i64*, i64** %22, align 8
  %49 = call i32 @SET(i64* %48, i64 0)
  %50 = load i64*, i64** %23, align 8
  %51 = call i32 @SET(i64* %50, i64 0)
  %52 = load i64*, i64** %24, align 8
  %53 = call i32 @SET(i64* %52, i64 0)
  %54 = load i64*, i64** %25, align 8
  %55 = call i32 @SET(i64* %54, i64 0)
  %56 = load i64*, i64** %26, align 8
  %57 = call i32 @SET(i64* %56, i64 0)
  %58 = load i64*, i64** %27, align 8
  %59 = call i32 @SET(i64* %58, i64 0)
  store i32 0, i32* %30, align 4
  br label %60

60:                                               ; preds = %191, %35
  %61 = load i32, i32* %30, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %194

67:                                               ; preds = %60
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %30, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %28, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %30, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %29, align 8
  %84 = load i8*, i8** %28, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %67
  %88 = load i64*, i64** %16, align 8
  %89 = load i64, i64* %29, align 8
  %90 = call i32 @SET(i64* %88, i64 %89)
  br label %190

91:                                               ; preds = %67
  %92 = load i8*, i8** %28, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i64*, i64** %17, align 8
  %97 = load i64, i64* %29, align 8
  %98 = call i32 @SET(i64* %96, i64 %97)
  br label %189

99:                                               ; preds = %91
  %100 = load i8*, i8** %28, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i64*, i64** %18, align 8
  %105 = load i64, i64* %29, align 8
  %106 = call i32 @SET(i64* %104, i64 %105)
  br label %188

107:                                              ; preds = %99
  %108 = load i8*, i8** %28, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i64*, i64** %19, align 8
  %113 = load i64, i64* %29, align 8
  %114 = call i32 @SET(i64* %112, i64 %113)
  br label %187

115:                                              ; preds = %107
  %116 = load i8*, i8** %28, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i64*, i64** %20, align 8
  %121 = load i64, i64* %29, align 8
  %122 = call i32 @SET(i64* %120, i64 %121)
  br label %186

123:                                              ; preds = %115
  %124 = load i8*, i8** %28, align 8
  %125 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i64*, i64** %21, align 8
  %129 = load i64, i64* %29, align 8
  %130 = call i32 @SET(i64* %128, i64 %129)
  br label %185

131:                                              ; preds = %123
  %132 = load i8*, i8** %28, align 8
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i64*, i64** %22, align 8
  %137 = load i64, i64* %29, align 8
  %138 = call i32 @SET(i64* %136, i64 %137)
  br label %184

139:                                              ; preds = %131
  %140 = load i8*, i8** %28, align 8
  %141 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load i64*, i64** %23, align 8
  %145 = load i64, i64* %29, align 8
  %146 = call i32 @SET(i64* %144, i64 %145)
  br label %183

147:                                              ; preds = %139
  %148 = load i8*, i8** %28, align 8
  %149 = call i32 @strcmp(i8* %148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i64*, i64** %24, align 8
  %153 = load i64, i64* %29, align 8
  %154 = call i32 @SET(i64* %152, i64 %153)
  br label %182

155:                                              ; preds = %147
  %156 = load i8*, i8** %28, align 8
  %157 = call i32 @strcmp(i8* %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i64*, i64** %25, align 8
  %161 = load i64, i64* %29, align 8
  %162 = call i32 @SET(i64* %160, i64 %161)
  br label %181

163:                                              ; preds = %155
  %164 = load i8*, i8** %28, align 8
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = load i64*, i64** %26, align 8
  %169 = load i64, i64* %29, align 8
  %170 = call i32 @SET(i64* %168, i64 %169)
  br label %180

171:                                              ; preds = %163
  %172 = load i8*, i8** %28, align 8
  %173 = call i32 @strcmp(i8* %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i64*, i64** %27, align 8
  %177 = load i64, i64* %29, align 8
  %178 = call i32 @SET(i64* %176, i64 %177)
  br label %179

179:                                              ; preds = %175, %171
  br label %180

180:                                              ; preds = %179, %167
  br label %181

181:                                              ; preds = %180, %159
  br label %182

182:                                              ; preds = %181, %151
  br label %183

183:                                              ; preds = %182, %143
  br label %184

184:                                              ; preds = %183, %135
  br label %185

185:                                              ; preds = %184, %127
  br label %186

186:                                              ; preds = %185, %119
  br label %187

187:                                              ; preds = %186, %111
  br label %188

188:                                              ; preds = %187, %103
  br label %189

189:                                              ; preds = %188, %95
  br label %190

190:                                              ; preds = %189, %87
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %30, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %30, align 4
  br label %60

194:                                              ; preds = %60
  %195 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %195, i32* %14, align 4
  br label %196

196:                                              ; preds = %194, %33
  %197 = load i32, i32* %14, align 4
  ret i32 %197
}

declare dso_local i32 @SET(i64*, i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
