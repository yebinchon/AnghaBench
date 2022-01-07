; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_textbox.c_perform_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_textbox.c_perform_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i64, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@PAGE_LENGTH = common dso_local global i32 0, align 4
@PAGE_WIDTH = common dso_local global i32 0, align 4
@DLG_EXIT_OK = common dso_local global i32 0, align 4
@dialog_attr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BUF_SIZE = common dso_local global i32 0, align 4
@DLG_EXIT_CANCEL = common dso_local global i32 0, align 4
@KEY_RESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32, i8*)* @perform_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_search(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 110
  br label %26

26:                                               ; preds = %23, %5
  %27 = phi i1 [ true, %5 ], [ %25, %23 ]
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %189, label %42

37:                                               ; preds = %26
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %189, label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 110
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 78
  br i1 %47, label %48, label %58

48:                                               ; preds = %45, %42
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = call i32 (...) @beep()
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %6, align 4
  br label %193

57:                                               ; preds = %48
  br label %87

58:                                               ; preds = %45
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* @PAGE_LENGTH, align 4
  %64 = load i32, i32* @PAGE_WIDTH, align 4
  %65 = call i32 @get_search_term(i32 %61, i8* %62, i32 %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* @DLG_EXIT_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %58
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %68, %58
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @dialog_attr, align 4
  %79 = call i32 @dlg_attrset(i32 %77, i32 %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @back_lines(%struct.TYPE_8__* %80, i64 %83)
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %6, align 4
  br label %193

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86, %57
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %13, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %17, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %18, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = call i64 @ftell_obj(%struct.TYPE_8__* %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  store i64 %102, i64* %14, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %87
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, 1
  br label %116

111:                                              ; preds = %87
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  br label %116

116:                                              ; preds = %111, %106
  %117 = phi i64 [ %110, %106 ], [ %115, %111 ]
  %118 = call i32 @back_lines(%struct.TYPE_8__* %103, i64 %117)
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %134, %121
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @match_string(%struct.TYPE_8__* %123, i8* %124)
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* @FALSE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %135

134:                                              ; preds = %128
  br label %122

135:                                              ; preds = %133, %122
  br label %153

136:                                              ; preds = %116
  br label %137

137:                                              ; preds = %149, %136
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @match_string(%struct.TYPE_8__* %138, i8* %139)
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* @FALSE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %152

149:                                              ; preds = %143
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %151 = call i32 @back_lines(%struct.TYPE_8__* %150, i64 2)
  br label %137

152:                                              ; preds = %148, %137
  br label %153

153:                                              ; preds = %152, %135
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* @FALSE, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %179

157:                                              ; preds = %153
  %158 = call i32 (...) @beep()
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %160 = load i64, i64* %14, align 8
  %161 = call i32 @lseek_set(%struct.TYPE_8__* %159, i64 %160)
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %163 = load i32, i32* @BUF_SIZE, align 4
  %164 = call i32 @read_high(%struct.TYPE_8__* %162, i32 %163)
  %165 = load i64, i64* %13, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  store i64 %165, i64* %167, align 8
  %168 = load i32, i32* %17, align 4
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* %18, align 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @back_lines(%struct.TYPE_8__* %174, i64 %177)
  br label %182

179:                                              ; preds = %153
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %181 = call i32 @back_lines(%struct.TYPE_8__* %180, i64 1)
  br label %182

182:                                              ; preds = %179, %157
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @dialog_attr, align 4
  %187 = call i32 @dlg_attrset(i32 %185, i32 %186)
  %188 = load i32, i32* @TRUE, align 4
  store i32 %188, i32* %19, align 4
  br label %191

189:                                              ; preds = %37, %32
  %190 = call i32 (...) @beep()
  br label %191

191:                                              ; preds = %189, %182
  %192 = load i32, i32* %19, align 4
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %191, %74, %54
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local i32 @beep(...) #1

declare dso_local i32 @get_search_term(i32, i8*, i32, i32) #1

declare dso_local i32 @dlg_attrset(i32, i32) #1

declare dso_local i32 @back_lines(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @ftell_obj(%struct.TYPE_8__*) #1

declare dso_local i32 @match_string(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @lseek_set(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @read_high(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
