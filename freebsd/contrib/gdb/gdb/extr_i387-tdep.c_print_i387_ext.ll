; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_print_i387_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_print_i387_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c" %cInf\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" Real Indefinite (QNaN)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" QNaN\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" SNaN\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" Pseudo-denormal\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" Denormal\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" Unsupported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ui_file*)* @print_i387_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_i387_ext(i8* %0, %struct.ui_file* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i64], align 16
  store i8* %0, i8** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 128
  store i32 %13, i32* %5, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 7
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 128
  store i32 %18, i32* %6, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 9
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 127
  %24 = shl i32 %23, 8
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 8
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %24, %28
  store i32 %29, i32* %7, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 24
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 16
  %40 = or i32 %34, %39
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 8
  %46 = or i32 %40, %45
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %46, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %52, i64* %53, align 16
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 7
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 127
  %59 = shl i32 %58, 24
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 6
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 %63, 16
  %65 = or i32 %59, %64
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 5
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 8
  %71 = or i32 %65, %70
  %72 = load i8*, i8** %3, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %71, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 %77, i64* %78, align 8
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 32767
  br i1 %80, label %81, label %128

81:                                               ; preds = %2
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %128

84:                                               ; preds = %81
  %85 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %86 = load i64, i64* %85, align 16
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 45, i32 43
  %98 = trunc i32 %97 to i8
  %99 = call i32 @fprintf_filtered(%struct.ui_file* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 signext %98)
  br label %127

100:                                              ; preds = %88, %84
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %105 = load i64, i64* %104, align 16
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 1073741824
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %113 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %112)
  br label %126

114:                                              ; preds = %107, %103, %100
  %115 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %116 = load i64, i64* %115, align 8
  %117 = and i64 %116, 1073741824
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %121 = call i32 @fputs_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %120)
  br label %125

122:                                              ; preds = %114
  %123 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %124 = call i32 @fputs_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %123)
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %111
  br label %127

127:                                              ; preds = %126, %92
  br label %171

128:                                              ; preds = %81, %2
  %129 = load i32, i32* %7, align 4
  %130 = icmp ult i32 %129, 32767
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load i32, i32* %7, align 4
  %133 = icmp ugt i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i8*, i8** %3, align 8
  %139 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %140 = call i32 @print_i387_value(i8* %138, %struct.ui_file* %139)
  br label %170

141:                                              ; preds = %134, %131, %128
  %142 = load i32, i32* %7, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %166

144:                                              ; preds = %141
  %145 = load i8*, i8** %3, align 8
  %146 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %147 = call i32 @print_i387_value(i8* %145, %struct.ui_file* %146)
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %152 = call i32 @fputs_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %151)
  br label %165

153:                                              ; preds = %144
  %154 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %155 = load i64, i64* %154, align 16
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %157, %153
  %162 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %163 = call i32 @fputs_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %162)
  br label %164

164:                                              ; preds = %161, %157
  br label %165

165:                                              ; preds = %164, %150
  br label %169

166:                                              ; preds = %141
  %167 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %168 = call i32 @fputs_filtered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %167)
  br label %169

169:                                              ; preds = %166, %165
  br label %170

170:                                              ; preds = %169, %137
  br label %171

171:                                              ; preds = %170, %127
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i8 signext) #1

declare dso_local i32 @fputs_unfiltered(i8*, %struct.ui_file*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @print_i387_value(i8*, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
