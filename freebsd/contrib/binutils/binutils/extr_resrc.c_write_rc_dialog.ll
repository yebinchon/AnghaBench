; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_dialog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i64, %struct.TYPE_14__, i32*, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"STYLE 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"EXSTYLE 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CLASS \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"CAPTION \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"MENU \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"FONT %d, \00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c", %d, %d, %d\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"BEGIN\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*)* @write_rc_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rc_dialog(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %28, %22
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36, %28
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 8
  %49 = call i32 @res_id_print(i32* %46, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %48, i32 1)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %43, %36
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 7
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @unicode_print_quoted(i32* %60, i32* %63, i32 -1)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %57, %52
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %73, %67
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %81, %73
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 6
  %94 = call i32 @res_id_print(i32* %91, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %93, i32 0)
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %88, %81
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %162

102:                                              ; preds = %97
  %103 = load i32*, i32** %3, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @unicode_print_quoted(i32* %109, i32* %112, i32 -1)
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = icmp ne %struct.TYPE_11__* %116, null
  br i1 %117, label %118, label %159

118:                                              ; preds = %102
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %118
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %125
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 1
  br i1 %138, label %139, label %159

139:                                              ; preds = %132, %125, %118
  %140 = load i32*, i32** %3, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (i32*, i8*, ...) @fprintf(i32* %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %146, i32 %152, i32 %157)
  br label %159

159:                                              ; preds = %139, %132, %102
  %160 = load i32*, i32** %3, align 8
  %161 = call i32 (i32*, i8*, ...) @fprintf(i32* %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %97
  %163 = load i32*, i32** %3, align 8
  %164 = call i32 (i32*, i8*, ...) @fprintf(i32* %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  store %struct.TYPE_12__* %167, %struct.TYPE_12__** %5, align 8
  br label %168

168:                                              ; preds = %175, %162
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = icmp ne %struct.TYPE_12__* %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %168
  %172 = load i32*, i32** %3, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %174 = call i32 @write_rc_dialog_control(i32* %172, %struct.TYPE_12__* %173)
  br label %175

175:                                              ; preds = %171
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  store %struct.TYPE_12__* %178, %struct.TYPE_12__** %5, align 8
  br label %168

179:                                              ; preds = %168
  %180 = load i32*, i32** %3, align 8
  %181 = call i32 (i32*, i8*, ...) @fprintf(i32* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @res_id_print(i32*, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8, i32) #1

declare dso_local i32 @unicode_print_quoted(i32*, i32*, i32) #1

declare dso_local i32 @write_rc_dialog_control(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
