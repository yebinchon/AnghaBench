; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_unexpand_if_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_unexpand_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@unexpand_if_needed.line_buf = internal global i8* null, align 8
@unexpand_if_needed.line_buf_size = internal global i32 0, align 4
@unexpansions = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @unexpand_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unexpand_if_needed(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %13 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  store i32 1024, i32* @unexpand_if_needed.line_buf_size, align 4
  %17 = load i32, i32* @unexpand_if_needed.line_buf_size, align 4
  %18 = call i8* @xmalloc(i32 %17)
  store i8* %18, i8** @unexpand_if_needed.line_buf, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %2, align 8
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %145, %19
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 10
  br i1 %26, label %27, label %146

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @unexpansions, align 8
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %3, align 8
  br label %29

29:                                               ; preds = %111, %27
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %114

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @strlen(i8* %38)
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* %8, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %110

48:                                               ; preds = %34
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @strncmp(i8* %49, i8* %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %110, label %54

54:                                               ; preds = %48
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @is_id_char(i8 signext %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %110, label %61

61:                                               ; preds = %54
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @strlen(i8* %64)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %9, align 4
  store i32 1, i32* %4, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = load i32, i32* @unexpand_if_needed.line_buf_size, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp sge i64 %74, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %61
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* @unexpand_if_needed.line_buf_size, align 4
  %86 = mul nsw i32 %85, 2
  store i32 %86, i32* @unexpand_if_needed.line_buf_size, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @unexpand_if_needed.line_buf_size, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* @unexpand_if_needed.line_buf_size, align 4
  %90 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %91 = load i32, i32* @unexpand_if_needed.line_buf_size, align 4
  %92 = call i8* @xrealloc(i8* %90, i32 %91)
  store i8* %92, i8** @unexpand_if_needed.line_buf, align 8
  %93 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8* %96, i8** %6, align 8
  br label %97

97:                                               ; preds = %78, %61
  %98 = load i8*, i8** %6, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcpy(i8* %98, i8* %101)
  %103 = load i32, i32* %9, align 4
  %104 = load i8*, i8** %6, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %6, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 %107
  store i8* %109, i8** %5, align 8
  br label %145

110:                                              ; preds = %54, %48, %34
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 1
  store %struct.TYPE_3__* %113, %struct.TYPE_3__** %3, align 8
  br label %29

114:                                              ; preds = %29
  %115 = load i8*, i8** %6, align 8
  %116 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = load i32, i32* @unexpand_if_needed.line_buf_size, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp eq i64 %119, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %114
  %124 = load i8*, i8** %6, align 8
  %125 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* @unexpand_if_needed.line_buf_size, align 4
  %131 = mul nsw i32 %130, 2
  store i32 %131, i32* @unexpand_if_needed.line_buf_size, align 4
  %132 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %133 = load i32, i32* @unexpand_if_needed.line_buf_size, align 4
  %134 = call i8* @xrealloc(i8* %132, i32 %133)
  store i8* %134, i8** @unexpand_if_needed.line_buf, align 8
  %135 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  store i8* %138, i8** %6, align 8
  br label %139

139:                                              ; preds = %123, %114
  %140 = load i8*, i8** %5, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %5, align 8
  %142 = load i8, i8* %140, align 1
  %143 = load i8*, i8** %6, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %6, align 8
  store i8 %142, i8* %143, align 1
  br label %145

145:                                              ; preds = %139, %97
  br label %22

146:                                              ; preds = %22
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 2
  %149 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = load i32, i32* @unexpand_if_needed.line_buf_size, align 4
  %154 = sext i32 %153 to i64
  %155 = icmp sge i64 %152, %154
  br i1 %155, label %156, label %172

156:                                              ; preds = %146
  %157 = load i8*, i8** %6, align 8
  %158 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* @unexpand_if_needed.line_buf_size, align 4
  %164 = mul nsw i32 %163, 2
  store i32 %164, i32* @unexpand_if_needed.line_buf_size, align 4
  %165 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %166 = load i32, i32* @unexpand_if_needed.line_buf_size, align 4
  %167 = call i8* @xrealloc(i8* %165, i32 %166)
  store i8* %167, i8** @unexpand_if_needed.line_buf, align 8
  %168 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  store i8* %171, i8** %6, align 8
  br label %172

172:                                              ; preds = %156, %146
  %173 = load i8*, i8** %6, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %6, align 8
  store i8 10, i8* %173, align 1
  %175 = load i8*, i8** %6, align 8
  store i8 0, i8* %175, align 1
  %176 = load i32, i32* %4, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %172
  %179 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %180 = load i8*, i8** %6, align 8
  %181 = load i8*, i8** @unexpand_if_needed.line_buf, align 8
  %182 = ptrtoint i8* %180 to i64
  %183 = ptrtoint i8* %181 to i64
  %184 = sub i64 %182, %183
  %185 = trunc i64 %184 to i32
  %186 = call i8* @savestring(i8* %179, i32 %185)
  br label %188

187:                                              ; preds = %172
  br label %188

188:                                              ; preds = %187, %178
  %189 = phi i8* [ %186, %178 ], [ null, %187 ]
  ret i8* %189
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @is_id_char(i8 signext) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @savestring(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
