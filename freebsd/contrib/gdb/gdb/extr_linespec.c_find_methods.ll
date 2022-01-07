; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_find_methods.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_find_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.symtab = type { i32 }

@STRUCT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@DMGL_ANSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*, i8*, %struct.symbol**)* @find_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_methods(%struct.type* %0, i8* %1, %struct.symbol** %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.symbol**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [64 x i8], align 16
  store %struct.type* %0, %struct.type** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.symbol** %2, %struct.symbol*** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.type*, %struct.type** %4, align 8
  %15 = call i8* @type_name_no_tag(%struct.type* %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %123

18:                                               ; preds = %3
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* @STRUCT_DOMAIN, align 4
  %21 = call i64 @lookup_symbol(i8* %19, %struct.block* null, i32 %20, i32* null, %struct.symtab** null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %123

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.type*, %struct.type** %4, align 8
  %27 = call i32 @CHECK_TYPEDEF(%struct.type* %26)
  %28 = load %struct.type*, %struct.type** %4, align 8
  %29 = call i32 @TYPE_NFN_FIELDS(%struct.type* %28)
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %119, %23
  %32 = load i32, i32* %10, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %122

34:                                               ; preds = %31
  %35 = load %struct.type*, %struct.type** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i8* @TYPE_FN_FIELDLIST_NAME(%struct.type* %35, i32 %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %34
  %42 = load i8*, i8** %12, align 8
  %43 = call i64 @strncmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %12, align 8
  %47 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %45, %41, %34
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %52 = load i32, i32* @DMGL_ANSI, align 4
  %53 = call i64 @cplus_demangle_opname(i8* %50, i8* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  store i8* %56, i8** %12, align 8
  br label %65

57:                                               ; preds = %49
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %60 = call i64 @cplus_demangle_opname(i8* %58, i8* %59, i32 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  store i8* %63, i8** %12, align 8
  br label %64

64:                                               ; preds = %62, %57
  br label %65

65:                                               ; preds = %64, %55
  br label %66

66:                                               ; preds = %65, %45
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = call i64 @strcmp_iw(i8* %67, i8* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.type*, %struct.type** %4, align 8
  %74 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.symbol*, %struct.symbol** %74, i64 %76
  %78 = call i64 @add_matching_methods(i32 %72, %struct.type* %73, %struct.symbol** %77)
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %7, align 4
  br label %118

83:                                               ; preds = %66
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i64 @strncmp(i8* %84, i8* %85, i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %117

89:                                               ; preds = %83
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %89
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 60
  br i1 %104, label %105, label %117

105:                                              ; preds = %97, %89
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.type*, %struct.type** %4, align 8
  %108 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.symbol*, %struct.symbol** %108, i64 %110
  %112 = call i64 @add_constructors(i32 %106, %struct.type* %107, %struct.symbol** %111)
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %105, %97, %83
  br label %118

118:                                              ; preds = %117, %71
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %10, align 4
  br label %31

122:                                              ; preds = %31
  br label %123

123:                                              ; preds = %122, %18, %3
  %124 = load i32, i32* %7, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %148

126:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %144, %126
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.type*, %struct.type** %4, align 8
  %130 = call i32 @TYPE_N_BASECLASSES(%struct.type* %129)
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load %struct.type*, %struct.type** %4, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call %struct.type* @TYPE_BASECLASS(%struct.type* %133, i32 %134)
  %136 = load i8*, i8** %5, align 8
  %137 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.symbol*, %struct.symbol** %137, i64 %139
  %141 = call i32 @find_methods(%struct.type* %135, i8* %136, %struct.symbol** %140)
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %132
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %127

147:                                              ; preds = %127
  br label %148

148:                                              ; preds = %147, %123
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local i8* @type_name_no_tag(%struct.type*) #1

declare dso_local i64 @lookup_symbol(i8*, %struct.block*, i32, i32*, %struct.symtab**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_NFN_FIELDS(%struct.type*) #1

declare dso_local i8* @TYPE_FN_FIELDLIST_NAME(%struct.type*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @cplus_demangle_opname(i8*, i8*, i32) #1

declare dso_local i64 @strcmp_iw(i8*, i8*) #1

declare dso_local i64 @add_matching_methods(i32, %struct.type*, %struct.symbol**) #1

declare dso_local i64 @add_constructors(i32, %struct.type*, %struct.symbol**) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local %struct.type* @TYPE_BASECLASS(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
