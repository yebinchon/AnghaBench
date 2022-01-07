; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_textbox.c_back_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_textbox.c_back_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i8*, i8*, i32 }

@FALSE = common dso_local global i8* null, align 8
@BUF_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Internal error in back_lines().\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64)* @back_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @back_lines(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** @FALSE, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store i8* %8, i8** %10, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %94, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %76

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = call i64 @ftell_obj(%struct.TYPE_8__* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* @BUF_SIZE, align 4
  %31 = sdiv i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = icmp slt i64 %29, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = call i32 @lseek_set(%struct.TYPE_8__* %39, i64 0)
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  store i64 %45, i64* %7, align 8
  br label %61

46:                                               ; preds = %28
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = load i32, i32* @BUF_SIZE, align 4
  %49 = sdiv i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = sub nsw i64 0, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @lseek_cur(%struct.TYPE_8__* %47, i32 %56)
  %58 = load i32, i32* @BUF_SIZE, align 4
  %59 = sdiv i32 %58, 2
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %46, %38
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = load i32, i32* @BUF_SIZE, align 4
  %64 = call i32 @read_high(%struct.TYPE_8__* %62, i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i8* @tabize(%struct.TYPE_8__* %65, i64 %66, i64* null)
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %75

71:                                               ; preds = %20
  %72 = load i8*, i8** @TRUE, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  br label %184

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %15
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 10
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = call i32 @dlg_exiterr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %76
  br label %94

94:                                               ; preds = %93, %2
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %176, %94
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %4, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %179

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %163, %100
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %162

106:                                              ; preds = %101
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = call i64 @ftell_obj(%struct.TYPE_8__* %107)
  store i64 %108, i64* %6, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %109, %112
  br i1 %113, label %114, label %157

114:                                              ; preds = %106
  %115 = load i64, i64* %6, align 8
  %116 = load i32, i32* @BUF_SIZE, align 4
  %117 = sdiv i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = icmp slt i64 %115, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %114
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = call i32 @lseek_set(%struct.TYPE_8__* %125, i64 0)
  %127 = load i64, i64* %6, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %127, %130
  store i64 %131, i64* %7, align 8
  br label %147

132:                                              ; preds = %114
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = load i32, i32* @BUF_SIZE, align 4
  %135 = sdiv i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %136, %139
  %141 = sub nsw i64 0, %140
  %142 = trunc i64 %141 to i32
  %143 = call i32 @lseek_cur(%struct.TYPE_8__* %133, i32 %142)
  %144 = load i32, i32* @BUF_SIZE, align 4
  %145 = sdiv i32 %144, 2
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %7, align 8
  br label %147

147:                                              ; preds = %132, %124
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %149 = load i32, i32* @BUF_SIZE, align 4
  %150 = call i32 @read_high(%struct.TYPE_8__* %148, i32 %149)
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %152 = load i64, i64* %7, align 8
  %153 = call i8* @tabize(%struct.TYPE_8__* %151, i64 %152, i64* null)
  %154 = ptrtoint i8* %153 to i64
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  br label %161

157:                                              ; preds = %106
  %158 = load i8*, i8** @TRUE, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  store i8* %158, i8** %160, align 8
  br label %184

161:                                              ; preds = %147
  br label %162

162:                                              ; preds = %161, %101
  br label %163

163:                                              ; preds = %162
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, -1
  store i64 %170, i64* %168, align 8
  %171 = getelementptr inbounds i8, i8* %166, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 10
  br i1 %174, label %101, label %175

175:                                              ; preds = %163
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %5, align 4
  br label %95

179:                                              ; preds = %95
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %181, align 8
  br label %184

184:                                              ; preds = %179, %157, %71
  ret void
}

declare dso_local i64 @ftell_obj(%struct.TYPE_8__*) #1

declare dso_local i32 @lseek_set(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @lseek_cur(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @read_high(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @tabize(%struct.TYPE_8__*, i64, i64*) #1

declare dso_local i32 @dlg_exiterr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
