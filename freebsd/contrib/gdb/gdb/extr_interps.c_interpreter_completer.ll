; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_interps.c_interpreter_completer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_interps.c_interpreter_completer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interp = type { i8*, %struct.interp* }

@interp_list = common dso_local global %struct.interp* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i8*)* @interpreter_completer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @interpreter_completer(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.interp*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.interp*, %struct.interp** @interp_list, align 8
  store %struct.interp* %10, %struct.interp** %9, align 8
  br label %11

11:                                               ; preds = %17, %2
  %12 = load %struct.interp*, %struct.interp** %9, align 8
  %13 = icmp ne %struct.interp* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %14
  %18 = load %struct.interp*, %struct.interp** %9, align 8
  %19 = getelementptr inbounds %struct.interp, %struct.interp* %18, i32 0, i32 1
  %20 = load %struct.interp*, %struct.interp** %19, align 8
  store %struct.interp* %20, %struct.interp** %9, align 8
  br label %11

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 @xmalloc(i32 %25)
  %27 = inttoptr i64 %26 to i8**
  store i8** %27, i8*** %8, align 8
  store i32 0, i32* %7, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.interp*, %struct.interp** @interp_list, align 8
  store %struct.interp* %30, %struct.interp** %9, align 8
  br label %31

31:                                               ; preds = %129, %21
  %32 = load %struct.interp*, %struct.interp** %9, align 8
  %33 = icmp ne %struct.interp* %32, null
  br i1 %33, label %34, label %133

34:                                               ; preds = %31
  %35 = load %struct.interp*, %struct.interp** %9, align 8
  %36 = getelementptr inbounds %struct.interp, %struct.interp* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @strncmp(i8* %37, i8* %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %128

42:                                               ; preds = %34
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = load %struct.interp*, %struct.interp** %9, align 8
  %46 = getelementptr inbounds %struct.interp, %struct.interp* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = add nsw i32 %44, %48
  %50 = add nsw i32 %49, 1
  %51 = call i64 @xmalloc(i32 %50)
  %52 = inttoptr i64 %51 to i8*
  %53 = load i8**, i8*** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  store i8* %52, i8** %56, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %42
  %61 = load i8**, i8*** %8, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.interp*, %struct.interp** %9, align 8
  %67 = getelementptr inbounds %struct.interp, %struct.interp* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strcpy(i8* %65, i8* %68)
  br label %125

70:                                               ; preds = %42
  %71 = load i8*, i8** %4, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = icmp ugt i8* %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load i8**, i8*** %8, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.interp*, %struct.interp** %9, align 8
  %81 = getelementptr inbounds %struct.interp, %struct.interp* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = getelementptr inbounds i8, i8* %82, i64 %87
  %89 = call i32 @strcpy(i8* %79, i8* %88)
  br label %124

90:                                               ; preds = %70
  %91 = load i8**, i8*** %8, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 @strncpy(i8* %95, i8* %96, i32 %102)
  %104 = load i8**, i8*** %8, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** %3, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = getelementptr inbounds i8, i8* %108, i64 %113
  store i8 0, i8* %114, align 1
  %115 = load i8**, i8*** %8, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.interp*, %struct.interp** %9, align 8
  %121 = getelementptr inbounds %struct.interp, %struct.interp* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strcat(i8* %119, i8* %122)
  br label %124

124:                                              ; preds = %90, %74
  br label %125

125:                                              ; preds = %124, %60
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %125, %34
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.interp*, %struct.interp** %9, align 8
  %131 = getelementptr inbounds %struct.interp, %struct.interp* %130, i32 0, i32 1
  %132 = load %struct.interp*, %struct.interp** %131, align 8
  store %struct.interp* %132, %struct.interp** %9, align 8
  br label %31

133:                                              ; preds = %31
  %134 = load i32, i32* %7, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i8**, i8*** %8, align 8
  %138 = call i32 @xfree(i8** %137)
  store i8** null, i8*** %8, align 8
  br label %158

139:                                              ; preds = %133
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %139
  %144 = load i8**, i8*** %8, align 8
  %145 = bitcast i8** %144 to i8*
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 8
  %150 = trunc i64 %149 to i32
  %151 = call i64 @xrealloc(i8* %145, i32 %150)
  %152 = inttoptr i64 %151 to i8**
  store i8** %152, i8*** %8, align 8
  %153 = load i8**, i8*** %8, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  store i8* null, i8** %156, align 8
  br label %157

157:                                              ; preds = %143, %139
  br label %158

158:                                              ; preds = %157, %136
  %159 = load i8**, i8*** %8, align 8
  ret i8** %159
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @xfree(i8**) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
