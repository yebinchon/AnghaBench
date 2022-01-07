; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_symtab_from_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_symtab_from_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"No symbol table is loaded.  Use the \22file\22 command.\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"No source file named %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symtab* (i8**, i8*, i32, i32*)* @symtab_from_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symtab* @symtab_from_filename(i8** %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.symtab*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %9, align 8
  br label %13

13:                                               ; preds = %26, %4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 -1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 32
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i1 [ false, %13 ], [ %23, %18 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %28, i8** %6, align 8
  br label %13

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 34
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %39, i8** %6, align 8
  br label %40

40:                                               ; preds = %37, %34, %29
  %41 = load i8*, i8** %6, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %41 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = add nsw i64 %46, 1
  %48 = trunc i64 %47 to i32
  %49 = call i64 @alloca(i32 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %54 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(i8* %51, i8* %53, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %40
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %66 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sub nsw i64 %71, 1
  %73 = getelementptr inbounds i8, i8* %65, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 34
  br i1 %76, label %77, label %87

77:                                               ; preds = %64
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i8**, i8*** %5, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %79 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sub nsw i64 %84, 1
  %86 = getelementptr inbounds i8, i8* %78, i64 %85
  store i8 0, i8* %86, align 1
  br label %96

87:                                               ; preds = %64, %40
  %88 = load i8*, i8** %10, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i8**, i8*** %5, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = ptrtoint i8* %89 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = getelementptr inbounds i8, i8* %88, i64 %94
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %87, %77
  %97 = load i8*, i8** %10, align 8
  %98 = call %struct.symtab* @lookup_symtab(i8* %97)
  store %struct.symtab* %98, %struct.symtab** %11, align 8
  %99 = load %struct.symtab*, %struct.symtab** %11, align 8
  %100 = icmp eq %struct.symtab* %99, null
  br i1 %100, label %101, label %119

101:                                              ; preds = %96
  %102 = call i32 (...) @have_full_symbols()
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %101
  %105 = call i32 (...) @have_partial_symbols()
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %104, %101
  %110 = load i32*, i32** %8, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32*, i32** %8, align 8
  store i32 1, i32* %113, align 4
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @error_silent(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %112, %109
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %116, %96
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8* %121, i8** %6, align 8
  br label %122

122:                                              ; preds = %134, %119
  %123 = load i8*, i8** %6, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 32
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load i8*, i8** %6, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 9
  br label %132

132:                                              ; preds = %127, %122
  %133 = phi i1 [ true, %122 ], [ %131, %127 ]
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %6, align 8
  br label %122

137:                                              ; preds = %132
  %138 = load i8*, i8** %6, align 8
  %139 = load i8**, i8*** %5, align 8
  store i8* %138, i8** %139, align 8
  %140 = load %struct.symtab*, %struct.symtab** %11, align 8
  ret %struct.symtab* %140
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.symtab* @lookup_symtab(i8*) #1

declare dso_local i32 @have_full_symbols(...) #1

declare dso_local i32 @have_partial_symbols(...) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @error_silent(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
