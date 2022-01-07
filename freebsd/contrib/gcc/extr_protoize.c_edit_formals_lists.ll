; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_edit_formals_lists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_edit_formals_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8* }

@clean_read_ptr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"%s: %d: warning: found '%s' but expected '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_11__*)* @edit_formals_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edit_formals_lists(i8* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  store i8* %18, i8** %8, align 8
  store i32 1, i32* %9, align 4
  br label %19

19:                                               ; preds = %33, %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %32 [
    i32 40, label %26
    i32 41, label %29
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %9, align 4
  br label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %22, %29, %26
  br label %33

33:                                               ; preds = %32
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** @clean_read_ptr, align 8
  %37 = icmp ugt i8* %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @check_source(i32 %38, i8* null)
  br label %19

40:                                               ; preds = %19
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %95

47:                                               ; preds = %40
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 -1
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** @clean_read_ptr, align 8
  %52 = icmp ugt i8* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @check_source(i32 %53, i8* null)
  br label %55

55:                                               ; preds = %60, %47
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @ISSPACE(i8 zeroext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** @clean_read_ptr, align 8
  %64 = icmp ugt i8* %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @check_source(i32 %65, i8* null)
  br label %55

67:                                               ; preds = %55
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 41
  %72 = zext i1 %71 to i32
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @check_source(i32 %72, i8* %73)
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** @clean_read_ptr, align 8
  %78 = icmp ugt i8* %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @check_source(i32 %79, i8* null)
  %81 = load i8*, i8** %10, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 41
  %85 = zext i1 %84 to i32
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @check_source(i32 %85, i8* %86)
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %91 = call i32 @edit_formals_lists(i8* %88, i32 %89, %struct.TYPE_11__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %67
  store i32 1, i32* %4, align 4
  br label %200

94:                                               ; preds = %67
  br label %95

95:                                               ; preds = %94, %40
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %176

98:                                               ; preds = %95
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %11, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 -1
  store i8* %105, i8** %13, align 8
  br label %106

106:                                              ; preds = %111, %98
  %107 = load i8*, i8** %13, align 8
  %108 = load i8, i8* %107, align 1
  %109 = call i64 @ISSPACE(i8 zeroext %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i8*, i8** %13, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 -1
  store i8* %113, i8** %13, align 8
  %114 = load i8*, i8** @clean_read_ptr, align 8
  %115 = icmp ugt i8* %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @check_source(i32 %116, i8* null)
  br label %106

118:                                              ; preds = %106
  %119 = load i8*, i8** %13, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %13, align 8
  store i8* %119, i8** %12, align 8
  br label %121

121:                                              ; preds = %132, %118
  %122 = load i8*, i8** %12, align 8
  %123 = load i8, i8* %122, align 1
  %124 = call i64 @is_id_char(i8 signext %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i8*, i8** %12, align 8
  %128 = load i8*, i8** @clean_read_ptr, align 8
  %129 = icmp ugt i8* %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @check_source(i32 %130, i8* null)
  br label %132

132:                                              ; preds = %126
  %133 = load i8*, i8** %12, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 -1
  store i8* %134, i8** %12, align 8
  br label %121

135:                                              ; preds = %121
  %136 = load i8*, i8** %12, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %12, align 8
  %138 = load i8*, i8** %13, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  store i64 %142, i64* %14, align 8
  %143 = load i64, i64* %14, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %135
  %146 = load i8*, i8** %12, align 8
  %147 = call i32 @check_source(i32 0, i8* %146)
  br label %148

148:                                              ; preds = %145, %135
  %149 = load i64, i64* %14, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = call i64 @strlen(i8* %150)
  %152 = icmp ne i64 %149, %151
  br i1 %152, label %159, label %153

153:                                              ; preds = %148
  %154 = load i8*, i8** %12, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = load i64, i64* %14, align 8
  %157 = call i64 @strncmp(i8* %154, i8* %155, i64 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %153, %148
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @shortpath(i32* null, i32 %166)
  %168 = load i8*, i8** %12, align 8
  %169 = call i32 @identify_lineno(i8* %168)
  %170 = load i8*, i8** %12, align 8
  %171 = load i64, i64* %14, align 8
  %172 = call i32 @dupnstr(i8* %170, i64 %171)
  %173 = load i8*, i8** %11, align 8
  %174 = call i32 @notice(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %167, i32 %169, i32 %172, i8* %173)
  store i32 1, i32* %4, align 4
  br label %200

175:                                              ; preds = %153
  br label %176

176:                                              ; preds = %175, %95
  %177 = load i8*, i8** %8, align 8
  %178 = call i32 @output_up_to(i8* %177)
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  store %struct.TYPE_10__* %181, %struct.TYPE_10__** %16, align 8
  store i32 0, i32* %15, align 4
  br label %182

182:                                              ; preds = %190, %176
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp ult i32 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  store %struct.TYPE_10__* %189, %struct.TYPE_10__** %16, align 8
  br label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %15, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %15, align 4
  br label %182

193:                                              ; preds = %182
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @output_string(i32 %196)
  %198 = load i8*, i8** %5, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 -1
  store i8* %199, i8** @clean_read_ptr, align 8
  store i32 0, i32* %4, align 4
  br label %200

200:                                              ; preds = %193, %159, %93
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i32 @check_source(i32, i8*) #1

declare dso_local i64 @ISSPACE(i8 zeroext) #1

declare dso_local i64 @is_id_char(i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @notice(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @shortpath(i32*, i32) #1

declare dso_local i32 @identify_lineno(i8*) #1

declare dso_local i32 @dupnstr(i8*, i64) #1

declare dso_local i32 @output_up_to(i8*) #1

declare dso_local i32 @output_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
