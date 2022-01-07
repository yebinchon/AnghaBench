; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-eh-frame.c_cie_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-eh-frame.c_cie_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cie = type { i64, i64, i64, i64, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"eh\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cie_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cie_eq(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cie*, align 8
  %7 = alloca %struct.cie*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.cie*
  store %struct.cie* %9, %struct.cie** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.cie*
  store %struct.cie* %11, %struct.cie** %7, align 8
  %12 = load %struct.cie*, %struct.cie** %6, align 8
  %13 = getelementptr inbounds %struct.cie, %struct.cie* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.cie*, %struct.cie** %7, align 8
  %16 = getelementptr inbounds %struct.cie, %struct.cie* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %150

19:                                               ; preds = %2
  %20 = load %struct.cie*, %struct.cie** %6, align 8
  %21 = getelementptr inbounds %struct.cie, %struct.cie* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.cie*, %struct.cie** %7, align 8
  %24 = getelementptr inbounds %struct.cie, %struct.cie* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %150

27:                                               ; preds = %19
  %28 = load %struct.cie*, %struct.cie** %6, align 8
  %29 = getelementptr inbounds %struct.cie, %struct.cie* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cie*, %struct.cie** %7, align 8
  %32 = getelementptr inbounds %struct.cie, %struct.cie* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %150

35:                                               ; preds = %27
  %36 = load %struct.cie*, %struct.cie** %6, align 8
  %37 = getelementptr inbounds %struct.cie, %struct.cie* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.cie*, %struct.cie** %7, align 8
  %40 = getelementptr inbounds %struct.cie, %struct.cie* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %150

43:                                               ; preds = %35
  %44 = load %struct.cie*, %struct.cie** %6, align 8
  %45 = getelementptr inbounds %struct.cie, %struct.cie* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.cie*, %struct.cie** %7, align 8
  %48 = getelementptr inbounds %struct.cie, %struct.cie* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strcmp(i8* %46, i8* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %150

52:                                               ; preds = %43
  %53 = load %struct.cie*, %struct.cie** %6, align 8
  %54 = getelementptr inbounds %struct.cie, %struct.cie* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %150

58:                                               ; preds = %52
  %59 = load %struct.cie*, %struct.cie** %6, align 8
  %60 = getelementptr inbounds %struct.cie, %struct.cie* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.cie*, %struct.cie** %7, align 8
  %63 = getelementptr inbounds %struct.cie, %struct.cie* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %150

66:                                               ; preds = %58
  %67 = load %struct.cie*, %struct.cie** %6, align 8
  %68 = getelementptr inbounds %struct.cie, %struct.cie* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.cie*, %struct.cie** %7, align 8
  %71 = getelementptr inbounds %struct.cie, %struct.cie* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %150

74:                                               ; preds = %66
  %75 = load %struct.cie*, %struct.cie** %6, align 8
  %76 = getelementptr inbounds %struct.cie, %struct.cie* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.cie*, %struct.cie** %7, align 8
  %79 = getelementptr inbounds %struct.cie, %struct.cie* %78, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %150

82:                                               ; preds = %74
  %83 = load %struct.cie*, %struct.cie** %6, align 8
  %84 = getelementptr inbounds %struct.cie, %struct.cie* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.cie*, %struct.cie** %7, align 8
  %87 = getelementptr inbounds %struct.cie, %struct.cie* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %150

90:                                               ; preds = %82
  %91 = load %struct.cie*, %struct.cie** %6, align 8
  %92 = getelementptr inbounds %struct.cie, %struct.cie* %91, i32 0, i32 15
  %93 = load %struct.cie*, %struct.cie** %7, align 8
  %94 = getelementptr inbounds %struct.cie, %struct.cie* %93, i32 0, i32 15
  %95 = call i64 @memcmp(i32* %92, i32* %94, i32 4)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %150

97:                                               ; preds = %90
  %98 = load %struct.cie*, %struct.cie** %6, align 8
  %99 = getelementptr inbounds %struct.cie, %struct.cie* %98, i32 0, i32 9
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.cie*, %struct.cie** %7, align 8
  %102 = getelementptr inbounds %struct.cie, %struct.cie* %101, i32 0, i32 9
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %150

105:                                              ; preds = %97
  %106 = load %struct.cie*, %struct.cie** %6, align 8
  %107 = getelementptr inbounds %struct.cie, %struct.cie* %106, i32 0, i32 10
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.cie*, %struct.cie** %7, align 8
  %110 = getelementptr inbounds %struct.cie, %struct.cie* %109, i32 0, i32 10
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %113, label %150

113:                                              ; preds = %105
  %114 = load %struct.cie*, %struct.cie** %6, align 8
  %115 = getelementptr inbounds %struct.cie, %struct.cie* %114, i32 0, i32 11
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.cie*, %struct.cie** %7, align 8
  %118 = getelementptr inbounds %struct.cie, %struct.cie* %117, i32 0, i32 11
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %116, %119
  br i1 %120, label %121, label %150

121:                                              ; preds = %113
  %122 = load %struct.cie*, %struct.cie** %6, align 8
  %123 = getelementptr inbounds %struct.cie, %struct.cie* %122, i32 0, i32 12
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.cie*, %struct.cie** %7, align 8
  %126 = getelementptr inbounds %struct.cie, %struct.cie* %125, i32 0, i32 12
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %124, %127
  br i1 %128, label %129, label %150

129:                                              ; preds = %121
  %130 = load %struct.cie*, %struct.cie** %6, align 8
  %131 = getelementptr inbounds %struct.cie, %struct.cie* %130, i32 0, i32 13
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.cie*, %struct.cie** %7, align 8
  %134 = getelementptr inbounds %struct.cie, %struct.cie* %133, i32 0, i32 13
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %132, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %129
  %138 = load %struct.cie*, %struct.cie** %6, align 8
  %139 = getelementptr inbounds %struct.cie, %struct.cie* %138, i32 0, i32 14
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.cie*, %struct.cie** %7, align 8
  %142 = getelementptr inbounds %struct.cie, %struct.cie* %141, i32 0, i32 14
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.cie*, %struct.cie** %6, align 8
  %145 = getelementptr inbounds %struct.cie, %struct.cie* %144, i32 0, i32 13
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @memcmp(i32* %140, i32* %143, i32 %146)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  store i32 1, i32* %3, align 4
  br label %151

150:                                              ; preds = %137, %129, %121, %113, %105, %97, %90, %82, %74, %66, %58, %52, %43, %35, %27, %19, %2
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %149
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
