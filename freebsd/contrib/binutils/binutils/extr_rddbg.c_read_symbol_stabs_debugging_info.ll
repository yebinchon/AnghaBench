; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rddbg.c_read_symbol_stabs_debugging_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rddbg.c_read_symbol_stabs_debugging_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8*, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i64, i8*, i32*)* @read_symbol_stabs_debugging_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_symbol_stabs_debugging_info(i32* %0, i32** %1, i64 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca %struct.TYPE_3__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %12, align 8
  %20 = load i32**, i32*** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  store i32** %22, i32*** %14, align 8
  %23 = load i32**, i32*** %8, align 8
  store i32** %23, i32*** %13, align 8
  br label %24

24:                                               ; preds = %126, %5
  %25 = load i32**, i32*** %13, align 8
  %26 = load i32**, i32*** %14, align 8
  %27 = icmp ult i32** %25, %26
  br i1 %27, label %28, label %129

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = load i32**, i32*** %13, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @bfd_get_symbol_info(i32* %29, i32* %31, %struct.TYPE_3__* %15)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %34 = load i8, i8* %33, align 8
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %125

37:                                               ; preds = %28
  %38 = load i8*, i8** %12, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i8*, i8** %10, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32**, i32*** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i8* @start_stab(i8* %41, i32* %42, i32 %43, i32** %44, i64 %45)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %6, align 4
  br label %143

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %37
  %53 = load i32, i32* @TRUE, align 4
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %16, align 8
  store i8* null, i8** %17, align 8
  br label %57

57:                                               ; preds = %97, %52
  %58 = load i8*, i8** %16, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 92
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load i32**, i32*** %13, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  %70 = load i32**, i32*** %14, align 8
  %71 = icmp ult i32** %69, %70
  br label %72

72:                                               ; preds = %67, %57
  %73 = phi i1 [ false, %57 ], [ %71, %67 ]
  br i1 %73, label %74, label %100

74:                                               ; preds = %72
  %75 = load i32**, i32*** %13, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i32 1
  store i32** %76, i32*** %13, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = call i8* @xstrdup(i8* %77)
  store i8* %78, i8** %18, align 8
  %79 = load i8*, i8** %18, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %18, align 8
  %86 = load i32**, i32*** %13, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @bfd_asymbol_name(i32* %87)
  %89 = call i8* @concat(i8* %85, i32 %88, i8* null)
  store i8* %89, i8** %19, align 8
  %90 = load i8*, i8** %18, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i8*, i8** %17, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %74
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 @free(i8* %95)
  br label %97

97:                                               ; preds = %94, %74
  %98 = load i8*, i8** %19, align 8
  store i8* %98, i8** %17, align 8
  %99 = load i8*, i8** %19, align 8
  store i8* %99, i8** %16, align 8
  br label %57

100:                                              ; preds = %72
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = call i32 @save_stab(i32 %102, i32 %104, i32 %106, i8* %107)
  %109 = load i8*, i8** %10, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = call i32 @parse_stab(i8* %109, i8* %110, i32 %112, i32 %114, i32 %116, i8* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %100
  %121 = call i32 (...) @stab_context()
  %122 = call i32 (...) @free_saved_stabs()
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %6, align 4
  br label %143

124:                                              ; preds = %100
  br label %125

125:                                              ; preds = %124, %28
  br label %126

126:                                              ; preds = %125
  %127 = load i32**, i32*** %13, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i32 1
  store i32** %128, i32*** %13, align 8
  br label %24

129:                                              ; preds = %24
  %130 = call i32 (...) @free_saved_stabs()
  %131 = load i8*, i8** %12, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i8*, i8** %10, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 @finish_stab(i8* %134, i8* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %6, align 4
  br label %143

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %129
  %142 = load i32, i32* @TRUE, align 4
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %141, %138, %120, %49
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i32 @bfd_get_symbol_info(i32*, i32*, %struct.TYPE_3__*) #1

declare dso_local i8* @start_stab(i8*, i32*, i32, i32**, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @concat(i8*, i32, i8*) #1

declare dso_local i32 @bfd_asymbol_name(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @save_stab(i32, i32, i32, i8*) #1

declare dso_local i32 @parse_stab(i8*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @stab_context(...) #1

declare dso_local i32 @free_saved_stabs(...) #1

declare dso_local i32 @finish_stab(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
