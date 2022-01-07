; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_scan_for_missed_items.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_scan_for_missed_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_7__* }

@scan_for_missed_items.scan_p = internal global i8* null, align 8
@clean_text_limit = common dso_local global i8* null, align 8
@scan_for_missed_items.backup_limit = internal global i8* null, align 8
@clean_text_base = common dso_local global i8* null, align 8
@scan_for_missed_items.last_r_paren = internal global i8* null, align 8
@source_confusion_recovery = common dso_local global i32 0, align 4
@scan_for_missed_items.stmt_keywords = internal constant [9 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"%s: %d: warning: '%s' excluded by preprocessing\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"%s: function definition not converted\0A\00", align 1
@pname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @scan_for_missed_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_for_missed_items(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %13 = load i8*, i8** @clean_text_limit, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 -3
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** @clean_text_base, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  store i8* %16, i8** @scan_for_missed_items.backup_limit, align 8
  %17 = load i8*, i8** @clean_text_base, align 8
  store i8* %17, i8** @scan_for_missed_items.scan_p, align 8
  br label %18

18:                                               ; preds = %189, %1
  %19 = load i8*, i8** @scan_for_missed_items.scan_p, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %192

22:                                               ; preds = %18
  %23 = load i8*, i8** @scan_for_missed_items.scan_p, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 41
  br i1 %26, label %27, label %188

27:                                               ; preds = %22
  %28 = load i8*, i8** @scan_for_missed_items.scan_p, align 8
  store i8* %28, i8** @scan_for_missed_items.last_r_paren, align 8
  %29 = load i8*, i8** @scan_for_missed_items.scan_p, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %30, i8** %4, align 8
  br label %31

31:                                               ; preds = %36, %27
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @ISSPACE(i8 zeroext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = icmp ult i8* %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @check_source(i32 %41, i8* %42)
  br label %31

44:                                               ; preds = %31
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 -1
  store i8* %46, i8** @scan_for_missed_items.scan_p, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @ISALPHA(i8 zeroext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %44
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 123
  br i1 %55, label %56, label %187

56:                                               ; preds = %51, %44
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @identify_lineno(i8* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @source_confusion_recovery, align 4
  %60 = call i64 @setjmp(i32 %59) #3
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %189

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %83, %63
  %65 = load i8*, i8** @scan_for_missed_items.last_r_paren, align 8
  %66 = call i8* @careful_find_l_paren(i8* %65)
  store i8* %66, i8** %5, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -1
  store i8* %68, i8** @scan_for_missed_items.last_r_paren, align 8
  br label %69

69:                                               ; preds = %74, %64
  %70 = load i8*, i8** @scan_for_missed_items.last_r_paren, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @ISSPACE(i8 zeroext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i8*, i8** @scan_for_missed_items.last_r_paren, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %76, i8** @scan_for_missed_items.last_r_paren, align 8
  %77 = load i8*, i8** @scan_for_missed_items.backup_limit, align 8
  %78 = icmp uge i8* %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i8*, i8** @scan_for_missed_items.backup_limit, align 8
  %81 = call i32 @check_source(i32 %79, i8* %80)
  br label %69

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82
  %84 = load i8*, i8** @scan_for_missed_items.last_r_paren, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 41
  br i1 %87, label %64, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** @scan_for_missed_items.last_r_paren, align 8
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @is_id_char(i8 signext %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %186

93:                                               ; preds = %88
  %94 = load i8*, i8** @scan_for_missed_items.last_r_paren, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  store i8* %95, i8** %7, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 -1
  store i8* %97, i8** %8, align 8
  br label %98

98:                                               ; preds = %103, %93
  %99 = load i8*, i8** %8, align 8
  %100 = load i8, i8* %99, align 1
  %101 = call i64 @is_id_char(i8 signext %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 -1
  store i8* %105, i8** %8, align 8
  %106 = load i8*, i8** @scan_for_missed_items.backup_limit, align 8
  %107 = icmp uge i8* %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i8*, i8** @scan_for_missed_items.backup_limit, align 8
  %110 = call i32 @check_source(i32 %108, i8* %109)
  br label %98

111:                                              ; preds = %98
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  %114 = load i8*, i8** %8, align 8
  store i8* %114, i8** @scan_for_missed_items.backup_limit, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  store i64 %119, i64* %9, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %185

122:                                              ; preds = %111
  %123 = load i64, i64* %9, align 8
  %124 = add i64 %123, 1
  %125 = call i8* @alloca(i64 %124)
  store i8* %125, i8** %11, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load i64, i64* %9, align 8
  %129 = call i32 @strncpy(i8* %126, i8* %127, i64 %128)
  %130 = load i8*, i8** %11, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8 0, i8* %132, align 1
  store i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @scan_for_missed_items.stmt_keywords, i64 0, i64 0), i8*** %12, align 8
  br label %133

133:                                              ; preds = %145, %122
  %134 = load i8**, i8*** %12, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load i8*, i8** %11, align 8
  %139 = load i8**, i8*** %12, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @strcmp(i8* %138, i8* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %137
  br label %185

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144
  %146 = load i8**, i8*** %12, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i32 1
  store i8** %147, i8*** %12, align 8
  br label %133

148:                                              ; preds = %133
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  store %struct.TYPE_7__* %151, %struct.TYPE_7__** %10, align 8
  br label %152

152:                                              ; preds = %168, %148
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %154 = icmp ne %struct.TYPE_7__* %153, null
  br i1 %154, label %155, label %172

155:                                              ; preds = %152
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %185

167:                                              ; preds = %160, %155
  br label %168

168:                                              ; preds = %167
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  store %struct.TYPE_7__* %171, %struct.TYPE_7__** %10, align 8
  br label %152

172:                                              ; preds = %152
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @shortpath(i32* null, i32 %177)
  %179 = load i8*, i8** %8, align 8
  %180 = call i32 @identify_lineno(i8* %179)
  %181 = load i8*, i8** %11, align 8
  %182 = call i32 (i8*, i32, ...) @notice(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %178, i32 %180, i8* %181)
  %183 = load i32, i32* @pname, align 4
  %184 = call i32 (i8*, i32, ...) @notice(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %172, %166, %143, %121
  br label %186

186:                                              ; preds = %185, %88
  br label %187

187:                                              ; preds = %186, %51
  br label %188

188:                                              ; preds = %187, %22
  br label %189

189:                                              ; preds = %188, %62
  %190 = load i8*, i8** @scan_for_missed_items.scan_p, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** @scan_for_missed_items.scan_p, align 8
  br label %18

192:                                              ; preds = %18
  ret void
}

declare dso_local i64 @ISSPACE(i8 zeroext) #1

declare dso_local i32 @check_source(i32, i8*) #1

declare dso_local i64 @ISALPHA(i8 zeroext) #1

declare dso_local i32 @identify_lineno(i8*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i8* @careful_find_l_paren(i8*) #1

declare dso_local i64 @is_id_char(i8 signext) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @notice(i8*, i32, ...) #1

declare dso_local i32 @shortpath(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
