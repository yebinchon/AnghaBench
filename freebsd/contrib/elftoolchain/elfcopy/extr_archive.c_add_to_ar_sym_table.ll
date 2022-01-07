; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_archive.c_add_to_ar_sym_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_archive.c_add_to_ar_sym_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i8*, i32, i32, i8*, i32, i64, i8 }

@_INIT_SYMOFF_CAP = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@_INIT_SYMNAME_CAP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"realloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, i8*)* @add_to_ar_sym_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_ar_sym_table(%struct.elfcopy* %0, i8* %1) #0 {
  %3 = alloca %struct.elfcopy*, align 8
  %4 = alloca i8*, align 8
  store %struct.elfcopy* %0, %struct.elfcopy** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %6 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load i8*, i8** @_INIT_SYMOFF_CAP, align 8
  %11 = call i8* @malloc(i8* %10)
  %12 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %13 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = icmp eq i8* %11, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @EXIT_FAILURE, align 4
  %17 = call i32 @err(i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i8*, i8** @_INIT_SYMOFF_CAP, align 8
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %22 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %24 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %23, i32 0, i32 2
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %27 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load i8*, i8** @_INIT_SYMNAME_CAP, align 8
  %32 = call i8* @malloc(i8* %31)
  %33 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %34 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = icmp eq i8* %32, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  %38 = call i32 @err(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i8*, i8** @_INIT_SYMNAME_CAP, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %43 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %45 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %39, %25
  %47 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %48 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %53 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = icmp uge i64 %51, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %46
  %58 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %59 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %59, align 8
  %62 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %63 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %66 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @realloc(i8* %64, i32 %67)
  %69 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %70 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %72 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %57
  %76 = load i32, i32* @EXIT_FAILURE, align 4
  %77 = call i32 @err(i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %57
  br label %79

79:                                               ; preds = %78, %46
  %80 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %81 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %80, i32 0, i32 6
  %82 = load i8, i8* %81, align 8
  %83 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %84 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %87 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  store i8 %82, i8* %90, align 1
  %91 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %92 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %130, %79
  %96 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %97 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = sext i32 %100 to i64
  %102 = add i64 %98, %101
  %103 = add i64 %102, 2
  %104 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %105 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = icmp ugt i64 %103, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %95
  %110 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %111 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %112, 2
  store i32 %113, i32* %111, align 8
  %114 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %115 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %118 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @realloc(i8* %116, i32 %119)
  %121 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %122 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  %123 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %124 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %109
  %128 = load i32, i32* @EXIT_FAILURE, align 4
  %129 = call i32 @err(i32 %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %109
  br label %95

131:                                              ; preds = %95
  %132 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %133 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %136 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = load i8*, i8** %4, align 8
  %140 = load i8*, i8** %4, align 8
  %141 = call i32 @strlen(i8* %140)
  %142 = call i32 @strncpy(i8* %138, i8* %139, i32 %141)
  %143 = load i8*, i8** %4, align 8
  %144 = call i32 @strlen(i8* %143)
  %145 = sext i32 %144 to i64
  %146 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %147 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, %145
  store i64 %149, i64* %147, align 8
  %150 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %151 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %154 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %154, align 8
  %157 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8 0, i8* %157, align 1
  ret void
}

declare dso_local i8* @malloc(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
