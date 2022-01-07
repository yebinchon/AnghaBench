; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_slob_page_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_slob_page_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slob_page = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.slob_page*, i64, i32)* @slob_page_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @slob_page_alloc(%struct.slob_page* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.slob_page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.slob_page* %0, %struct.slob_page** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @SLOB_UNITS(i64 %15)
  store i32 %16, i32* %12, align 4
  store i8* null, i8** %8, align 8
  %17 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %18 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  br label %20

20:                                               ; preds = %133, %3
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @slob_units(i8* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i8*, i8** %9, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @ALIGN(i64 %27, i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %25, %20
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %39, %40
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %127

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = call i8* @slob_next(i8* %47)
  store i8* %48, i8** %14, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @set_slob(i8* %49, i32 %52, i8* %53)
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @set_slob(i8* %55, i32 %56, i8* %57)
  %59 = load i8*, i8** %9, align 8
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %10, align 8
  store i8* %60, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @slob_units(i8* %61)
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %46, %43
  %64 = load i8*, i8** %9, align 8
  %65 = call i8* @slob_next(i8* %64)
  store i8* %65, i8** %14, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load i8*, i8** %8, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @slob_units(i8* %74)
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @set_slob(i8* %73, i32 %75, i8* %76)
  br label %82

78:                                               ; preds = %69
  %79 = load i8*, i8** %14, align 8
  %80 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %81 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %72
  br label %112

83:                                               ; preds = %63
  %84 = load i8*, i8** %8, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @slob_units(i8* %88)
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr i8, i8* %90, i64 %92
  %94 = call i32 @set_slob(i8* %87, i32 %89, i8* %93)
  br label %102

95:                                               ; preds = %83
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr i8, i8* %96, i64 %98
  %100 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %101 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %95, %86
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr i8, i8* %103, i64 %105
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %12, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i8*, i8** %14, align 8
  %111 = call i32 @set_slob(i8* %106, i32 %109, i8* %110)
  br label %112

112:                                              ; preds = %102, %82
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %115 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %119 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %112
  %123 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %124 = call i32 @clear_slob_page_free(%struct.slob_page* %123)
  br label %125

125:                                              ; preds = %122, %112
  %126 = load i8*, i8** %9, align 8
  store i8* %126, i8** %4, align 8
  br label %137

127:                                              ; preds = %37
  %128 = load i8*, i8** %9, align 8
  %129 = call i64 @slob_last(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i8* null, i8** %4, align 8
  br label %137

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132
  %134 = load i8*, i8** %9, align 8
  store i8* %134, i8** %8, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = call i8* @slob_next(i8* %135)
  store i8* %136, i8** %9, align 8
  br label %20

137:                                              ; preds = %131, %125
  %138 = load i8*, i8** %4, align 8
  ret i8* %138
}

declare dso_local i32 @SLOB_UNITS(i64) #1

declare dso_local i32 @slob_units(i8*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i8* @slob_next(i8*) #1

declare dso_local i32 @set_slob(i8*, i32, i8*) #1

declare dso_local i32 @clear_slob_page_free(%struct.slob_page*) #1

declare dso_local i64 @slob_last(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
