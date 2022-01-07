; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_lookup_minimal_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_lookup_minimal_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { %struct.minimal_symbol**, %struct.minimal_symbol**, %struct.objfile* }
%struct.minimal_symbol = type { %struct.minimal_symbol*, %struct.minimal_symbol*, i32 }

@MINIMAL_SYMBOL_HASH_SIZE = common dso_local global i32 0, align 4
@object_files = common dso_local global %struct.objfile* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8* %0, i8* %1, %struct.objfile* %2) #0 {
  %4 = alloca %struct.minimal_symbol*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.objfile*, align 8
  %8 = alloca %struct.objfile*, align 8
  %9 = alloca %struct.minimal_symbol*, align 8
  %10 = alloca %struct.minimal_symbol*, align 8
  %11 = alloca %struct.minimal_symbol*, align 8
  %12 = alloca %struct.minimal_symbol*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.objfile* %2, %struct.objfile** %7, align 8
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %10, align 8
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %11, align 8
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %12, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @msymbol_hash(i8* %16)
  %18 = load i32, i32* @MINIMAL_SYMBOL_HASH_SIZE, align 4
  %19 = urem i32 %17, %18
  store i32 %19, i32* %13, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @msymbol_hash_iw(i8* %20)
  %22 = load i32, i32* @MINIMAL_SYMBOL_HASH_SIZE, align 4
  %23 = urem i32 %21, %22
  store i32 %23, i32* %14, align 4
  %24 = load %struct.objfile*, %struct.objfile** @object_files, align 8
  store %struct.objfile* %24, %struct.objfile** %8, align 8
  br label %25

25:                                               ; preds = %126, %3
  %26 = load %struct.objfile*, %struct.objfile** %8, align 8
  %27 = icmp ne %struct.objfile* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %30 = icmp eq %struct.minimal_symbol* %29, null
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i1 [ false, %25 ], [ %30, %28 ]
  br i1 %32, label %33, label %130

33:                                               ; preds = %31
  %34 = load %struct.objfile*, %struct.objfile** %7, align 8
  %35 = icmp eq %struct.objfile* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load %struct.objfile*, %struct.objfile** %7, align 8
  %38 = load %struct.objfile*, %struct.objfile** %8, align 8
  %39 = icmp eq %struct.objfile* %37, %38
  br i1 %39, label %40, label %125

40:                                               ; preds = %36, %33
  store i32 1, i32* %15, align 4
  br label %41

41:                                               ; preds = %121, %40
  %42 = load i32, i32* %15, align 4
  %43 = icmp sle i32 %42, 2
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %46 = icmp eq %struct.minimal_symbol* %45, null
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ false, %41 ], [ %46, %44 ]
  br i1 %48, label %49, label %124

49:                                               ; preds = %47
  %50 = load i32, i32* %15, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.objfile*, %struct.objfile** %8, align 8
  %54 = getelementptr inbounds %struct.objfile, %struct.objfile* %53, i32 0, i32 1
  %55 = load %struct.minimal_symbol**, %struct.minimal_symbol*** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.minimal_symbol*, %struct.minimal_symbol** %55, i64 %57
  %59 = load %struct.minimal_symbol*, %struct.minimal_symbol** %58, align 8
  store %struct.minimal_symbol* %59, %struct.minimal_symbol** %9, align 8
  br label %68

60:                                               ; preds = %49
  %61 = load %struct.objfile*, %struct.objfile** %8, align 8
  %62 = getelementptr inbounds %struct.objfile, %struct.objfile* %61, i32 0, i32 0
  %63 = load %struct.minimal_symbol**, %struct.minimal_symbol*** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.minimal_symbol*, %struct.minimal_symbol** %63, i64 %65
  %67 = load %struct.minimal_symbol*, %struct.minimal_symbol** %66, align 8
  store %struct.minimal_symbol* %67, %struct.minimal_symbol** %9, align 8
  br label %68

68:                                               ; preds = %60, %52
  br label %69

69:                                               ; preds = %119, %68
  %70 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %71 = icmp ne %struct.minimal_symbol* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %74 = icmp eq %struct.minimal_symbol* %73, null
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i1 [ false, %69 ], [ %74, %72 ]
  br i1 %76, label %77, label %120

77:                                               ; preds = %75
  %78 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %79 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol* %78)
  %80 = load i8*, i8** %5, align 8
  %81 = call i64 @strcmp(i32 %79, i8* %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %77
  %84 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %85 = call i32* @SYMBOL_DEMANGLED_NAME(%struct.minimal_symbol* %84)
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %108

87:                                               ; preds = %83
  %88 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %89 = call i32* @SYMBOL_DEMANGLED_NAME(%struct.minimal_symbol* %88)
  %90 = load i8*, i8** %5, align 8
  %91 = call i64 @strcmp_iw(i32* %89, i8* %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %87, %77
  %94 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %95 = call i32 @MSYMBOL_TYPE(%struct.minimal_symbol* %94)
  switch i32 %95, label %105 [
    i32 130, label %96
    i32 131, label %96
    i32 132, label %96
    i32 129, label %98
    i32 128, label %104
  ]

96:                                               ; preds = %93, %93, %93
  %97 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  store %struct.minimal_symbol* %97, %struct.minimal_symbol** %11, align 8
  br label %107

98:                                               ; preds = %93
  %99 = load %struct.minimal_symbol*, %struct.minimal_symbol** %12, align 8
  %100 = icmp eq %struct.minimal_symbol* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  store %struct.minimal_symbol* %102, %struct.minimal_symbol** %12, align 8
  br label %103

103:                                              ; preds = %101, %98
  br label %107

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %93, %104
  %106 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  store %struct.minimal_symbol* %106, %struct.minimal_symbol** %10, align 8
  br label %107

107:                                              ; preds = %105, %103, %96
  br label %108

108:                                              ; preds = %107, %87, %83
  %109 = load i32, i32* %15, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %113 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %112, i32 0, i32 1
  %114 = load %struct.minimal_symbol*, %struct.minimal_symbol** %113, align 8
  store %struct.minimal_symbol* %114, %struct.minimal_symbol** %9, align 8
  br label %119

115:                                              ; preds = %108
  %116 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %117 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %116, i32 0, i32 0
  %118 = load %struct.minimal_symbol*, %struct.minimal_symbol** %117, align 8
  store %struct.minimal_symbol* %118, %struct.minimal_symbol** %9, align 8
  br label %119

119:                                              ; preds = %115, %111
  br label %69

120:                                              ; preds = %75
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %15, align 4
  br label %41

124:                                              ; preds = %47
  br label %125

125:                                              ; preds = %124, %36
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.objfile*, %struct.objfile** %8, align 8
  %128 = getelementptr inbounds %struct.objfile, %struct.objfile* %127, i32 0, i32 2
  %129 = load %struct.objfile*, %struct.objfile** %128, align 8
  store %struct.objfile* %129, %struct.objfile** %8, align 8
  br label %25

130:                                              ; preds = %31
  %131 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %132 = icmp ne %struct.minimal_symbol* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  store %struct.minimal_symbol* %134, %struct.minimal_symbol** %4, align 8
  br label %146

135:                                              ; preds = %130
  %136 = load %struct.minimal_symbol*, %struct.minimal_symbol** %11, align 8
  %137 = icmp ne %struct.minimal_symbol* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load %struct.minimal_symbol*, %struct.minimal_symbol** %11, align 8
  store %struct.minimal_symbol* %139, %struct.minimal_symbol** %4, align 8
  br label %146

140:                                              ; preds = %135
  %141 = load %struct.minimal_symbol*, %struct.minimal_symbol** %12, align 8
  %142 = icmp ne %struct.minimal_symbol* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load %struct.minimal_symbol*, %struct.minimal_symbol** %12, align 8
  store %struct.minimal_symbol* %144, %struct.minimal_symbol** %4, align 8
  br label %146

145:                                              ; preds = %140
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %4, align 8
  br label %146

146:                                              ; preds = %145, %143, %138, %133
  %147 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  ret %struct.minimal_symbol* %147
}

declare dso_local i32 @msymbol_hash(i8*) #1

declare dso_local i32 @msymbol_hash_iw(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol*) #1

declare dso_local i32* @SYMBOL_DEMANGLED_NAME(%struct.minimal_symbol*) #1

declare dso_local i64 @strcmp_iw(i32*, i8*) #1

declare dso_local i32 @MSYMBOL_TYPE(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
