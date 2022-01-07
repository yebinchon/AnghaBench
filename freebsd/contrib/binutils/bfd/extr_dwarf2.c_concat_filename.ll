; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_concat_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_concat_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_info_table = type { i32, i8**, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [60 x i8] c"Dwarf Error: mangled line number section (bad file number).\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.line_info_table*, i32)* @concat_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @concat_filename(%struct.line_info_table* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.line_info_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.line_info_table* %0, %struct.line_info_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sub i32 %11, 1
  %13 = load %struct.line_info_table*, %struct.line_info_table** %4, align 8
  %14 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp uge i32 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @_bfd_error_handler(i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %3, align 8
  br label %132

25:                                               ; preds = %2
  %26 = load %struct.line_info_table*, %struct.line_info_table** %4, align 8
  %27 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sub i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @IS_ABSOLUTE_PATH(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %129, label %38

38:                                               ; preds = %25
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %39 = load %struct.line_info_table*, %struct.line_info_table** %4, align 8
  %40 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sub i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %38
  %50 = load %struct.line_info_table*, %struct.line_info_table** %4, align 8
  %51 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %50, i32 0, i32 1
  %52 = load i8**, i8*** %51, align 8
  %53 = load %struct.line_info_table*, %struct.line_info_table** %4, align 8
  %54 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sub i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %52, i64 %63
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %8, align 8
  br label %66

66:                                               ; preds = %49, %38
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @IS_ABSOLUTE_PATH(i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69, %66
  %74 = load %struct.line_info_table*, %struct.line_info_table** %4, align 8
  %75 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %7, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i8*, i8** %7, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** %8, align 8
  store i8* %81, i8** %7, align 8
  store i8* null, i8** %8, align 8
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i8*, i8** %7, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %6, align 8
  %87 = call i8* @strdup(i8* %86)
  store i8* %87, i8** %3, align 8
  br label %132

88:                                               ; preds = %82
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = add nsw i32 %90, %92
  %94 = add nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %10, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %116

98:                                               ; preds = %88
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i8* @bfd_malloc(i64 %105)
  store i8* %106, i8** %9, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %111, i8* %112, i8* %113)
  br label %115

115:                                              ; preds = %109, %98
  br label %127

116:                                              ; preds = %88
  %117 = load i64, i64* %10, align 8
  %118 = call i8* @bfd_malloc(i64 %117)
  store i8* %118, i8** %9, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load i8*, i8** %9, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %123, i8* %124)
  br label %126

126:                                              ; preds = %121, %116
  br label %127

127:                                              ; preds = %126, %115
  %128 = load i8*, i8** %9, align 8
  store i8* %128, i8** %3, align 8
  br label %132

129:                                              ; preds = %25
  %130 = load i8*, i8** %6, align 8
  %131 = call i8* @strdup(i8* %130)
  store i8* %131, i8** %3, align 8
  br label %132

132:                                              ; preds = %129, %127, %85, %23
  %133 = load i8*, i8** %3, align 8
  ret i8* %133
}

declare dso_local i32 @_bfd_error_handler(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
