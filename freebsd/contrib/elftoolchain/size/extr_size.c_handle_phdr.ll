; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/size/extr_size.c_handle_phdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/size/extr_size.c_handle_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32 }

@BUF_SIZE = common dso_local global i32 0, align 4
@style = common dso_local global i64 0, align 8
@STYLE_SYSV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s%d%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@radix = common dso_local global i32 0, align 4
@text_size_total = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@PT_LOAD = common dso_local global i64 0, align 8
@PF_W = common dso_local global i32 0, align 4
@PF_X = common dso_local global i32 0, align 4
@data_size = common dso_local global i32 0, align 4
@text_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*, i8*, i8*)* @handle_phdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_phdr(i32* %0, i32* %1, %struct.TYPE_3__* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = load i32, i32* @BUF_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = icmp eq %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %5
  store i32 1, i32* %16, align 4
  br label %192

30:                                               ; preds = %26
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br label %48

48:                                               ; preds = %40, %35, %30
  %49 = phi i1 [ false, %35 ], [ false, %30 ], [ %47, %40 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = load i64, i64* @style, align 8
  %52 = load i64, i64* @STYLE_SYSV, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %123

54:                                               ; preds = %48
  %55 = load i32, i32* @BUF_SIZE, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %62 = call i32 @snprintf(i8* %20, i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %56, i8* %57, i8* %61)
  %63 = call i32 (...) @tbl_append()
  %64 = call i32 @tbl_print(i8* %20, i32 0)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @radix, align 4
  %69 = call i32 @tbl_print_num(i64 %67, i32 %68, i32 1)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @radix, align 4
  %74 = call i32 @tbl_print_num(i64 %72, i32 %73, i32 2)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @text_size_total, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* @text_size_total, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %122

84:                                               ; preds = %54
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  store i64 %91, i64* %12, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  store i64 %98, i64* %11, align 8
  %99 = load i32, i32* @BUF_SIZE, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @snprintf(i8* %20, i32 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %100, i8* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  %110 = load i32, i32* @text_size_total, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* @text_size_total, align 4
  %114 = call i32 (...) @tbl_append()
  %115 = call i32 @tbl_print(i8* %20, i32 0)
  %116 = load i64, i64* %12, align 8
  %117 = load i32, i32* @radix, align 4
  %118 = call i32 @tbl_print_num(i64 %116, i32 %117, i32 1)
  %119 = load i64, i64* %11, align 8
  %120 = load i32, i32* @radix, align 4
  %121 = call i32 @tbl_print_num(i64 %119, i32 %120, i32 2)
  br label %122

122:                                              ; preds = %84, %54
  br label %191

123:                                              ; preds = %48
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @PT_LOAD, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i32 1, i32* %16, align 4
  br label %192

130:                                              ; preds = %123
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PF_W, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %167

137:                                              ; preds = %130
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @PF_X, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %167, label %144

144:                                              ; preds = %137
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @data_size, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* @data_size, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %144
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %157, %160
  %162 = load i32, i32* @data_size, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* @data_size, align 4
  br label %166

166:                                              ; preds = %154, %144
  br label %190

167:                                              ; preds = %137, %130
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* @text_size, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* @text_size, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %167
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %180, %183
  %185 = load i32, i32* @text_size, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %186, %184
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* @text_size, align 4
  br label %189

189:                                              ; preds = %177, %167
  br label %190

190:                                              ; preds = %189, %166
  br label %191

191:                                              ; preds = %190, %122
  store i32 0, i32* %16, align 4
  br label %192

192:                                              ; preds = %191, %129, %29
  %193 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %193)
  %194 = load i32, i32* %16, align 4
  switch i32 %194, label %196 [
    i32 0, label %195
    i32 1, label %195
  ]

195:                                              ; preds = %192, %192
  ret void

196:                                              ; preds = %192
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @tbl_append(...) #2

declare dso_local i32 @tbl_print(i8*, i32) #2

declare dso_local i32 @tbl_print_num(i64, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
