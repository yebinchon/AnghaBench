; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_decode_all_digits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_decode_all_digits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i32, i64, %struct.symtab* }
%struct.symtab = type { i32 }
%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, %struct.symtab_and_line* } (i8**, %struct.symtab*, i32, i8***, %struct.symtab*, i8*)* @decode_all_digits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, %struct.symtab_and_line* } @decode_all_digits(i8** %0, %struct.symtab* %1, i32 %2, i8*** %3, %struct.symtab* %4, i8* %5) #0 {
  %7 = alloca %struct.symtabs_and_lines, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.symtab*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8***, align 8
  %12 = alloca %struct.symtab*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.symtab_and_line, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store %struct.symtab* %1, %struct.symtab** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8*** %3, i8**** %11, align 8
  store %struct.symtab* %4, %struct.symtab** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.symtab*, %struct.symtab** %12, align 8
  %18 = icmp eq %struct.symtab* %17, null
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* %16, align 4
  %21 = call i32 @init_sal(%struct.symtab_and_line* %14)
  %22 = load %struct.symtab*, %struct.symtab** %12, align 8
  %23 = icmp eq %struct.symtab* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = load %struct.symtab*, %struct.symtab** %9, align 8
  %26 = icmp eq %struct.symtab* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call i32 (...) @set_default_source_symtab_and_line()
  %29 = call i32 @initialize_defaults(%struct.symtab** %9, i32* %10)
  br label %30

30:                                               ; preds = %27, %24, %6
  %31 = load i8**, i8*** %8, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 43
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  store i32 1, i32* %15, align 4
  %37 = load i8**, i8*** %8, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %37, align 8
  br label %51

40:                                               ; preds = %30
  %41 = load i8**, i8*** %8, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  store i32 2, i32* %15, align 4
  %47 = load i8**, i8*** %8, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %47, align 8
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i8**, i8*** %8, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @atoi(i8* %53)
  %55 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* %15, align 4
  switch i32 %56, label %94 [
    i32 1, label %57
    i32 2, label %74
    i32 0, label %93
  ]

57:                                               ; preds = %51
  %58 = load i8*, i8** %13, align 8
  %59 = load i8**, i8*** %8, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 0
  store i32 5, i32* %63, align 8
  br label %64

64:                                               ; preds = %62, %57
  %65 = load %struct.symtab*, %struct.symtab** %12, align 8
  %66 = icmp eq %struct.symtab* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %68, %70
  %72 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  br label %73

73:                                               ; preds = %67, %64
  br label %94

74:                                               ; preds = %51
  %75 = load i8*, i8** %13, align 8
  %76 = load i8**, i8*** %8, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp eq i8* %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 0
  store i32 15, i32* %80, align 8
  br label %81

81:                                               ; preds = %79, %74
  %82 = load %struct.symtab*, %struct.symtab** %12, align 8
  %83 = icmp eq %struct.symtab* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %85, %87
  %89 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  br label %92

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 0
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %90, %84
  br label %94

93:                                               ; preds = %51
  br label %94

94:                                               ; preds = %51, %93, %92, %73
  br label %95

95:                                               ; preds = %107, %94
  %96 = load i8*, i8** %13, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 32
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load i8*, i8** %13, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 9
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ true, %95 ], [ %104, %100 ]
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = load i8*, i8** %13, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %13, align 8
  br label %95

110:                                              ; preds = %105
  %111 = load i8*, i8** %13, align 8
  %112 = load i8**, i8*** %8, align 8
  store i8* %111, i8** %112, align 8
  %113 = load %struct.symtab*, %struct.symtab** %12, align 8
  %114 = icmp eq %struct.symtab* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load %struct.symtab*, %struct.symtab** %9, align 8
  store %struct.symtab* %116, %struct.symtab** %12, align 8
  br label %117

117:                                              ; preds = %115, %110
  %118 = load %struct.symtab*, %struct.symtab** %12, align 8
  %119 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call %struct.symtab* @find_line_symtab(%struct.symtab* %118, i32 %120, i32* null, i32* null)
  %122 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 2
  store %struct.symtab* %121, %struct.symtab** %122, align 8
  %123 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 2
  %124 = load %struct.symtab*, %struct.symtab** %123, align 8
  %125 = icmp eq %struct.symtab* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %117
  %127 = load %struct.symtab*, %struct.symtab** %12, align 8
  %128 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 2
  store %struct.symtab* %127, %struct.symtab** %128, align 8
  br label %129

129:                                              ; preds = %126, %117
  %130 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = call i64 @xmalloc(i32 24)
  %132 = inttoptr i64 %131 to %struct.symtab_and_line*
  %133 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  store %struct.symtab_and_line* %132, %struct.symtab_and_line** %133, align 8
  %134 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %135 = load %struct.symtab_and_line*, %struct.symtab_and_line** %134, align 8
  %136 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %135, i64 0
  %137 = bitcast %struct.symtab_and_line* %136 to i8*
  %138 = bitcast %struct.symtab_and_line* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 24, i1 false)
  %139 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %129
  %143 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %144 = load %struct.symtab_and_line*, %struct.symtab_and_line** %143, align 8
  %145 = load i8***, i8**** %11, align 8
  %146 = call i32 @build_canonical_line_spec(%struct.symtab_and_line* %144, i32* null, i8*** %145)
  br label %147

147:                                              ; preds = %142, %129
  %148 = bitcast %struct.symtabs_and_lines* %7 to { i32, %struct.symtab_and_line* }*
  %149 = load { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %148, align 8
  ret { i32, %struct.symtab_and_line* } %149
}

declare dso_local i32 @init_sal(%struct.symtab_and_line*) #1

declare dso_local i32 @set_default_source_symtab_and_line(...) #1

declare dso_local i32 @initialize_defaults(%struct.symtab**, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.symtab* @find_line_symtab(%struct.symtab*, i32, i32*, i32*) #1

declare dso_local i64 @xmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @build_canonical_line_spec(%struct.symtab_and_line*, i32*, i8***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
