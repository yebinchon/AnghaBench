; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_makeucnid.c_write_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_makeucnid.c_write_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flags = common dso_local global i32* null, align 8
@decomp = common dso_local global i64** null, align 8
@combining_value = common dso_local global i8* null, align 8
@C99 = common dso_local global i32 0, align 4
@CXX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"{ %s|%s|%s|%s|%s|%s|%s, %3d, %#06x },\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"C99\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"  0\00", align 1
@digit = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"DIG\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CXX\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"CID\00", align 1
@not_NFC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"NFC\00", align 1
@not_NFKC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"NKC\00", align 1
@maybe_not_NFC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"CTX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = load i32*, i32** @flags, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %2, align 4
  %8 = load i64**, i64*** @decomp, align 8
  %9 = getelementptr inbounds i64*, i64** %8, i64 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i8*, i8** @combining_value, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %4, align 1
  store i32 1, i32* %1, align 4
  br label %18

18:                                               ; preds = %135, %0
  %19 = load i32, i32* %1, align 4
  %20 = icmp ule i32 %19, 65536
  br i1 %20, label %21, label %138

21:                                               ; preds = %18
  %22 = load i32, i32* %1, align 4
  %23 = icmp eq i32 %22, 65536
  br i1 %23, label %67, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** @flags, align 8
  %26 = load i32, i32* %1, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load i32*, i32** @flags, align 8
  %34 = load i32, i32* %1, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %2, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @C99, align 4
  %41 = load i32, i32* @CXX, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %32, %24
  %46 = load i32, i32* %3, align 4
  %47 = load i64**, i64*** @decomp, align 8
  %48 = load i32, i32* %1, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64*, i64** %47, i64 %49
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = icmp ne i32 %46, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %45
  %58 = load i8*, i8** @combining_value, align 8
  %59 = load i32, i32* %1, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* %4, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %134

67:                                               ; preds = %57, %45, %32, %21
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @C99, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @digit, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @CXX, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* @not_NFC, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @not_NFKC, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @maybe_not_NFC, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %108 = load i8*, i8** @combining_value, align 8
  %109 = load i32, i32* %1, align 4
  %110 = sub i32 %109, 1
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load i32, i32* %1, align 4
  %115 = sub i32 %114, 1
  %116 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %73, i8* %79, i8* %85, i8* %89, i8* %95, i8* %101, i8* %107, i8 zeroext %113, i32 %115)
  %117 = load i32*, i32** @flags, align 8
  %118 = load i32, i32* %1, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %2, align 4
  %122 = load i8*, i8** @combining_value, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  store i8 %124, i8* %4, align 1
  %125 = load i64**, i64*** @decomp, align 8
  %126 = load i32, i32* %1, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i64*, i64** %125, i64 %127
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %67, %57
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %1, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %1, align 4
  br label %18

138:                                              ; preds = %18
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
