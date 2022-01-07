; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_print_ifdef_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_print_ifdef_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i64, i64, %struct.file_data* }
%struct.file_data = type { i8** }

@expand_tabs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.group*)* @print_ifdef_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ifdef_lines(i32* %0, i8* %1, %struct.group* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.group*, align 8
  %7 = alloca %struct.file_data*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.group* %2, %struct.group** %6, align 8
  %14 = load %struct.group*, %struct.group** %6, align 8
  %15 = getelementptr inbounds %struct.group, %struct.group* %14, i32 0, i32 2
  %16 = load %struct.file_data*, %struct.file_data** %15, align 8
  store %struct.file_data* %16, %struct.file_data** %7, align 8
  %17 = load %struct.file_data*, %struct.file_data** %7, align 8
  %18 = getelementptr inbounds %struct.file_data, %struct.file_data* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  store i8** %19, i8*** %8, align 8
  %20 = load %struct.group*, %struct.group** %6, align 8
  %21 = getelementptr inbounds %struct.group, %struct.group* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.group*, %struct.group** %6, align 8
  %24 = getelementptr inbounds %struct.group, %struct.group* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %200

29:                                               ; preds = %3
  %30 = load i32, i32* @expand_tabs, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %120, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 37
  br i1 %37, label %38, label %120

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 108
  br i1 %43, label %44, label %89

44:                                               ; preds = %38
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %89

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %89, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %55
  %60 = load i8**, i8*** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %8, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** %8, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 -1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 10
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %67, i64 %77
  %79 = load i8**, i8*** %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i8*, i8** %79, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = ptrtoint i8* %78 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @fwrite(i8* %63, i32 1, i32 %86, i32* %87)
  br label %200

89:                                               ; preds = %55, %50, %44, %38
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 76
  br i1 %94, label %95, label %119

95:                                               ; preds = %89
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = load i8, i8* %97, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %95
  %101 = load i8**, i8*** %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds i8*, i8** %101, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load i8**, i8*** %8, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = load i8**, i8*** %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds i8*, i8** %109, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %108 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @fwrite(i8* %104, i32 1, i32 %116, i32* %117)
  br label %200

119:                                              ; preds = %95, %89
  br label %120

120:                                              ; preds = %119, %32, %29
  br label %121

121:                                              ; preds = %197, %120
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %10, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %200

125:                                              ; preds = %121
  %126 = load i8*, i8** %5, align 8
  store i8* %126, i8** %12, align 8
  br label %127

127:                                              ; preds = %192, %188, %168, %144, %125
  %128 = load i8*, i8** %12, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %12, align 8
  %130 = load i8, i8* %128, align 1
  store i8 %130, i8* %11, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %196

133:                                              ; preds = %127
  %134 = load i8*, i8** %12, align 8
  store i8* %134, i8** %13, align 8
  %135 = load i8, i8* %11, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 37
  br i1 %137, label %138, label %192

138:                                              ; preds = %133
  %139 = load i8*, i8** %12, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %12, align 8
  %141 = load i8, i8* %139, align 1
  store i8 %141, i8* %11, align 1
  %142 = sext i8 %141 to i32
  switch i32 %142, label %179 [
    i32 37, label %143
    i32 108, label %144
    i32 76, label %168
  ]

143:                                              ; preds = %138
  br label %191

144:                                              ; preds = %138
  %145 = load i8**, i8*** %8, align 8
  %146 = load i64, i64* %9, align 8
  %147 = getelementptr inbounds i8*, i8** %145, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = load i8**, i8*** %8, align 8
  %150 = load i64, i64* %9, align 8
  %151 = add i64 %150, 1
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = load i8**, i8*** %8, align 8
  %155 = load i64, i64* %9, align 8
  %156 = add i64 %155, 1
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 -1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 10
  %163 = zext i1 %162 to i32
  %164 = sext i32 %163 to i64
  %165 = sub i64 0, %164
  %166 = getelementptr inbounds i8, i8* %153, i64 %165
  %167 = call i32 @output_1_line(i8* %148, i8* %166, i32 0, i32 0)
  br label %127

168:                                              ; preds = %138
  %169 = load i8**, i8*** %8, align 8
  %170 = load i64, i64* %9, align 8
  %171 = getelementptr inbounds i8*, i8** %169, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = load i8**, i8*** %8, align 8
  %174 = load i64, i64* %9, align 8
  %175 = add i64 %174, 1
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @output_1_line(i8* %172, i8* %177, i32 0, i32 0)
  br label %127

179:                                              ; preds = %138
  %180 = load i32*, i32** %4, align 8
  %181 = load i8*, i8** %12, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 -2
  %183 = load %struct.file_data*, %struct.file_data** %7, align 8
  %184 = load i64, i64* %9, align 8
  %185 = call i8* @do_printf_spec(i32* %180, i8* %182, %struct.file_data* %183, i64 %184, i32 0)
  store i8* %185, i8** %12, align 8
  %186 = load i8*, i8** %12, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  br label %127

189:                                              ; preds = %179
  store i8 37, i8* %11, align 1
  %190 = load i8*, i8** %13, align 8
  store i8* %190, i8** %12, align 8
  br label %191

191:                                              ; preds = %189, %143
  br label %192

192:                                              ; preds = %191, %133
  %193 = load i8, i8* %11, align 1
  %194 = load i32*, i32** %4, align 8
  %195 = call i32 @putc(i8 signext %193, i32* %194)
  br label %127

196:                                              ; preds = %127
  br label %197

197:                                              ; preds = %196
  %198 = load i64, i64* %9, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %9, align 8
  br label %121

200:                                              ; preds = %28, %59, %100, %121
  ret void
}

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @output_1_line(i8*, i8*, i32, i32) #1

declare dso_local i8* @do_printf_spec(i32*, i8*, %struct.file_data*, i64, i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
