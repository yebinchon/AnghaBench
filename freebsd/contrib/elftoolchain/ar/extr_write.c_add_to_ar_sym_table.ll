; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_write.c_add_to_ar_sym_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_write.c_add_to_ar_sym_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i8*, i32, i32, i8*, i32, i64, i8 }

@_INIT_SYMOFF_CAP = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@_INIT_SYMNAME_CAP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"realloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, i8*)* @add_to_ar_sym_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_ar_sym_table(%struct.bsdar* %0, i8* %1) #0 {
  %3 = alloca %struct.bsdar*, align 8
  %4 = alloca i8*, align 8
  store %struct.bsdar* %0, %struct.bsdar** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %6 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load i8*, i8** @_INIT_SYMOFF_CAP, align 8
  %11 = call i8* @malloc(i8* %10)
  %12 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %13 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = icmp eq i8* %11, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @bsdar_errc(%struct.bsdar* %16, i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %9
  %20 = load i8*, i8** @_INIT_SYMOFF_CAP, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %23 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %25 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %24, i32 0, i32 2
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %28 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load i8*, i8** @_INIT_SYMNAME_CAP, align 8
  %33 = call i8* @malloc(i8* %32)
  %34 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %35 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = icmp eq i8* %33, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @bsdar_errc(%struct.bsdar* %38, i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i8*, i8** @_INIT_SYMNAME_CAP, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %45 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %47 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %46, i32 0, i32 5
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %41, %26
  %49 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %50 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %55 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = icmp uge i64 %53, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %48
  %60 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %61 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %62, 2
  store i32 %63, i32* %61, align 8
  %64 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %65 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %68 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @realloc(i8* %66, i32 %69)
  %71 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %72 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %74 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %59
  %78 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @bsdar_errc(%struct.bsdar* %78, i32 %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %59
  br label %82

82:                                               ; preds = %81, %48
  %83 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %84 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %83, i32 0, i32 6
  %85 = load i8, i8* %84, align 8
  %86 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %87 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %90 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  store i8 %85, i8* %93, align 1
  %94 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %95 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %134, %82
  %99 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %100 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = sext i32 %103 to i64
  %105 = add i64 %101, %104
  %106 = add i64 %105, 2
  %107 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %108 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = icmp ugt i64 %106, %110
  br i1 %111, label %112, label %135

112:                                              ; preds = %98
  %113 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %114 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = mul nsw i32 %115, 2
  store i32 %116, i32* %114, align 8
  %117 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %118 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %117, i32 0, i32 3
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %121 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @realloc(i8* %119, i32 %122)
  %124 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %125 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %127 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %112
  %131 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %132 = load i32, i32* @errno, align 4
  %133 = call i32 @bsdar_errc(%struct.bsdar* %131, i32 %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %134

134:                                              ; preds = %130, %112
  br label %98

135:                                              ; preds = %98
  %136 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %137 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %140 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  %143 = load i8*, i8** %4, align 8
  %144 = load i8*, i8** %4, align 8
  %145 = call i32 @strlen(i8* %144)
  %146 = call i32 @strncpy(i8* %142, i8* %143, i32 %145)
  %147 = load i8*, i8** %4, align 8
  %148 = call i32 @strlen(i8* %147)
  %149 = sext i32 %148 to i64
  %150 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %151 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, %149
  store i64 %153, i64* %151, align 8
  %154 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %155 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %154, i32 0, i32 3
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %158 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = getelementptr inbounds i8, i8* %156, i64 %159
  store i8 0, i8* %161, align 1
  ret void
}

declare dso_local i8* @malloc(i8*) #1

declare dso_local i32 @bsdar_errc(%struct.bsdar*, i32, i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
