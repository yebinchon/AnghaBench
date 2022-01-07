; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_complete_on_enum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_complete_on_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @complete_on_enum(i8** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %10, align 4
  store i32 10, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call i64 @xmalloc(i32 %18)
  %20 = inttoptr i64 %19 to i8**
  store i8** %20, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %128, %3
  %22 = load i8**, i8*** %4, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %131

28:                                               ; preds = %21
  %29 = load i8*, i8** %12, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @strncmp(i8* %29, i8* %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %127

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %8, align 4
  %41 = load i8**, i8*** %7, align 8
  %42 = bitcast i8** %41 to i8*
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 8
  %46 = trunc i64 %45 to i32
  %47 = call i64 @xrealloc(i8* %42, i32 %46)
  %48 = inttoptr i64 %47 to i8**
  store i8** %48, i8*** %7, align 8
  br label %49

49:                                               ; preds = %38, %34
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = add nsw i32 %51, %53
  %55 = add nsw i32 %54, 1
  %56 = call i64 @xmalloc(i32 %55)
  %57 = inttoptr i64 %56 to i8*
  %58 = load i8**, i8*** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  store i8* %57, i8** %61, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %49
  %66 = load i8**, i8*** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @strcpy(i8* %70, i8* %71)
  br label %124

73:                                               ; preds = %49
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = icmp ugt i8* %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %73
  %78 = load i8**, i8*** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = getelementptr inbounds i8, i8* %83, i64 %88
  %90 = call i32 @strcpy(i8* %82, i8* %89)
  br label %123

91:                                               ; preds = %73
  %92 = load i8**, i8*** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  %104 = call i32 @strncpy(i8* %96, i8* %97, i32 %103)
  %105 = load i8**, i8*** %7, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = getelementptr inbounds i8, i8* %109, i64 %114
  store i8 0, i8* %115, align 1
  %116 = load i8**, i8*** %7, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = call i32 @strcat(i8* %120, i8* %121)
  br label %123

123:                                              ; preds = %91, %77
  br label %124

124:                                              ; preds = %123, %65
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %124, %28
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %21

131:                                              ; preds = %21
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i8**, i8*** %7, align 8
  %136 = call i32 @xfree(i8** %135)
  store i8** null, i8*** %7, align 8
  br label %151

137:                                              ; preds = %131
  %138 = load i8**, i8*** %7, align 8
  %139 = bitcast i8** %138 to i8*
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 8
  %144 = trunc i64 %143 to i32
  %145 = call i64 @xrealloc(i8* %139, i32 %144)
  %146 = inttoptr i64 %145 to i8**
  store i8** %146, i8*** %7, align 8
  %147 = load i8**, i8*** %7, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  store i8* null, i8** %150, align 8
  br label %151

151:                                              ; preds = %137, %134
  %152 = load i8**, i8*** %7, align 8
  ret i8** %152
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @xfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
