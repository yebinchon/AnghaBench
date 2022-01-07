; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_get_font.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_get_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8**, i32, i32 }
%struct.console_font = type { i8**, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, %struct.console_font*)* @fbcon_get_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_get_font(%struct.vc_data* %0, %struct.console_font* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.console_font*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.console_font* %1, %struct.console_font** %5, align 8
  %10 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  store i8** %13, i8*** %6, align 8
  %14 = load %struct.console_font*, %struct.console_font** %5, align 8
  %15 = getelementptr inbounds %struct.console_font, %struct.console_font* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  store i8** %16, i8*** %7, align 8
  %17 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.console_font*, %struct.console_font** %5, align 8
  %22 = getelementptr inbounds %struct.console_font, %struct.console_font* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.console_font*, %struct.console_font** %5, align 8
  %28 = getelementptr inbounds %struct.console_font, %struct.console_font* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 512, i32 256
  %35 = load %struct.console_font*, %struct.console_font** %5, align 8
  %36 = getelementptr inbounds %struct.console_font, %struct.console_font* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.console_font*, %struct.console_font** %5, align 8
  %38 = getelementptr inbounds %struct.console_font, %struct.console_font* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %213

42:                                               ; preds = %2
  %43 = load %struct.console_font*, %struct.console_font** %5, align 8
  %44 = getelementptr inbounds %struct.console_font, %struct.console_font* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp sle i32 %45, 8
  br i1 %46, label %47, label %80

47:                                               ; preds = %42
  %48 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %76, %47
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.console_font*, %struct.console_font** %5, align 8
  %55 = getelementptr inbounds %struct.console_font, %struct.console_font* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = load i8**, i8*** %7, align 8
  %60 = load i8**, i8*** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @memcpy(i8** %59, i8** %60, i32 %61)
  %63 = load i8**, i8*** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 32, %67
  %69 = call i32 @memset(i8** %66, i32 0, i32 %68)
  %70 = load i8**, i8*** %7, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 32
  store i8** %71, i8*** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i8**, i8*** %6, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  store i8** %75, i8*** %6, align 8
  br label %76

76:                                               ; preds = %58
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %52

79:                                               ; preds = %52
  br label %212

80:                                               ; preds = %42
  %81 = load %struct.console_font*, %struct.console_font** %5, align 8
  %82 = getelementptr inbounds %struct.console_font, %struct.console_font* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp sle i32 %83, 16
  br i1 %84, label %85, label %119

85:                                               ; preds = %80
  %86 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %87 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %89, 2
  store i32 %90, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %115, %85
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.console_font*, %struct.console_font** %5, align 8
  %94 = getelementptr inbounds %struct.console_font, %struct.console_font* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %91
  %98 = load i8**, i8*** %7, align 8
  %99 = load i8**, i8*** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @memcpy(i8** %98, i8** %99, i32 %100)
  %102 = load i8**, i8*** %7, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 64, %106
  %108 = call i32 @memset(i8** %105, i32 0, i32 %107)
  %109 = load i8**, i8*** %7, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 64
  store i8** %110, i8*** %7, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i8**, i8*** %6, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8*, i8** %112, i64 %113
  store i8** %114, i8*** %6, align 8
  br label %115

115:                                              ; preds = %97
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %91

118:                                              ; preds = %91
  br label %211

119:                                              ; preds = %80
  %120 = load %struct.console_font*, %struct.console_font** %5, align 8
  %121 = getelementptr inbounds %struct.console_font, %struct.console_font* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp sle i32 %122, 24
  br i1 %123, label %124, label %176

124:                                              ; preds = %119
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %172, %124
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.console_font*, %struct.console_font** %5, align 8
  %128 = getelementptr inbounds %struct.console_font, %struct.console_font* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %175

131:                                              ; preds = %125
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %157, %131
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %135 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %133, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %132
  %140 = load i8**, i8*** %6, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 0
  %142 = load i8*, i8** %141, align 8
  %143 = load i8**, i8*** %7, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i32 1
  store i8** %144, i8*** %7, align 8
  store i8* %142, i8** %143, align 8
  %145 = load i8**, i8*** %6, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 1
  %147 = load i8*, i8** %146, align 8
  %148 = load i8**, i8*** %7, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i32 1
  store i8** %149, i8*** %7, align 8
  store i8* %147, i8** %148, align 8
  %150 = load i8**, i8*** %6, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 2
  %152 = load i8*, i8** %151, align 8
  %153 = load i8**, i8*** %7, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i32 1
  store i8** %154, i8*** %7, align 8
  store i8* %152, i8** %153, align 8
  %155 = load i8**, i8*** %6, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 4
  store i8** %156, i8*** %6, align 8
  br label %157

157:                                              ; preds = %139
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  br label %132

160:                                              ; preds = %132
  %161 = load i8**, i8*** %7, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sub nsw i32 32, %162
  %164 = mul nsw i32 3, %163
  %165 = call i32 @memset(i8** %161, i32 0, i32 %164)
  %166 = load i32, i32* %9, align 4
  %167 = sub nsw i32 32, %166
  %168 = mul nsw i32 3, %167
  %169 = load i8**, i8*** %7, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8*, i8** %169, i64 %170
  store i8** %171, i8*** %7, align 8
  br label %172

172:                                              ; preds = %160
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %125

175:                                              ; preds = %125
  br label %210

176:                                              ; preds = %119
  %177 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %178 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %180, 4
  store i32 %181, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %182

182:                                              ; preds = %206, %176
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.console_font*, %struct.console_font** %5, align 8
  %185 = getelementptr inbounds %struct.console_font, %struct.console_font* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %209

188:                                              ; preds = %182
  %189 = load i8**, i8*** %7, align 8
  %190 = load i8**, i8*** %6, align 8
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @memcpy(i8** %189, i8** %190, i32 %191)
  %193 = load i8**, i8*** %7, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i32, i32* %9, align 4
  %198 = sub nsw i32 128, %197
  %199 = call i32 @memset(i8** %196, i32 0, i32 %198)
  %200 = load i8**, i8*** %7, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 128
  store i8** %201, i8*** %7, align 8
  %202 = load i32, i32* %9, align 4
  %203 = load i8**, i8*** %6, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8*, i8** %203, i64 %204
  store i8** %205, i8*** %6, align 8
  br label %206

206:                                              ; preds = %188
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  br label %182

209:                                              ; preds = %182
  br label %210

210:                                              ; preds = %209, %175
  br label %211

211:                                              ; preds = %210, %118
  br label %212

212:                                              ; preds = %211, %79
  store i32 0, i32* %3, align 4
  br label %213

213:                                              ; preds = %212, %41
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
