; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_guage.c_handle_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_guage.c_handle_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i8*, i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@MY_LEN = common dso_local global i32 0, align 4
@dialog_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @handle_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_input(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %3, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @MY_LEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dialog_state, i32 0, i32 0), align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  store i32 -1, i32* %6, align 4
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %5, align 4
  br label %119

21:                                               ; preds = %1
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dialog_state, i32 0, i32 0), align 8
  %23 = call i32 @read_data(i8* %16, i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %103

25:                                               ; preds = %21
  %26 = call i64 @isMarker(i8* %16)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %94

28:                                               ; preds = %25
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dialog_state, i32 0, i32 0), align 8
  %30 = call i32 @read_data(i8* %16, i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %93

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 0, i8* %36, align 1
  %37 = call i64 @decode_percent(i8* %16)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = call i8* @atoi(i8* %16)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  br label %48

43:                                               ; preds = %32
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcpy(i8* %46, i8* %16)
  br label %48

48:                                               ; preds = %43, %39
  br label %49

49:                                               ; preds = %73, %48
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dialog_state, i32 0, i32 0), align 8
  %51 = call i32 @read_data(i8* %16, i64 %50)
  store i32 %51, i32* %6, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = call i64 @isMarker(i8* %16)
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  br i1 %58, label %59, label %74

59:                                               ; preds = %57
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = call i32 @strlen(i8* %16)
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 7
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcat(i8* %71, i8* %16)
  br label %73

73:                                               ; preds = %68, %59
  br label %49

74:                                               ; preds = %57
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %77, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @free(i8* %85)
  br label %87

87:                                               ; preds = %82, %74
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %87, %28
  br label %102

94:                                               ; preds = %25
  %95 = call i64 @decode_percent(i8* %16)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = call i8* @atoi(i8* %16)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %97, %94
  br label %102

102:                                              ; preds = %101, %93
  br label %118

103:                                              ; preds = %21
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dialog_state, i32 0, i32 0), align 8
  %105 = call i64 @feof(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dialog_state, i32 0, i32 0), align 8
  %109 = call i64 @ferror(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i64, i64* @errno, align 8
  %113 = load i64, i64* @EINTR, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111, %103
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %115, %111, %107
  br label %118

118:                                              ; preds = %117, %102
  br label %119

119:                                              ; preds = %118, %19
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %121 = call i32 @repaint_text(%struct.TYPE_5__* %120)
  %122 = load i32, i32* %6, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @TRUE, align 4
  store i32 %125, i32* %4, align 4
  br label %136

126:                                              ; preds = %119
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i32*, i32** %2, align 8
  %132 = call i32 @dlg_remove_callback(i32* %131)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = call i32 @delink(%struct.TYPE_5__* %133)
  br label %135

135:                                              ; preds = %130, %126
  br label %136

136:                                              ; preds = %135, %124
  %137 = load i32, i32* %4, align 4
  %138 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %138)
  ret i32 %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_data(i8*, i64) #2

declare dso_local i64 @isMarker(i8*) #2

declare dso_local i64 @decode_percent(i8*) #2

declare dso_local i8* @atoi(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @feof(i64) #2

declare dso_local i64 @ferror(i64) #2

declare dso_local i32 @repaint_text(%struct.TYPE_5__*) #2

declare dso_local i32 @dlg_remove_callback(i32*) #2

declare dso_local i32 @delink(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
