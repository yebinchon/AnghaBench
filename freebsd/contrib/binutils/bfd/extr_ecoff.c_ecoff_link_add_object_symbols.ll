; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_link_add_object_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_link_add_object_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @ecoff_link_add_object_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecoff_link_add_object_symbols(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %10, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @ecoff_slurp_symbolic_header(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %133

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @bfd_get_symcount(i32* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %3, align 4
  br label %133

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = call %struct.TYPE_9__* @ecoff_data(i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %6, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call %struct.TYPE_10__* @ecoff_backend(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i8* @bfd_malloc(i32 %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %23
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %119

46:                                               ; preds = %42, %23
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @SEEK_SET, align 4
  %53 = call i64 @bfd_seek(i32* %47, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %46
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @bfd_bread(i8* %56, i32 %57, i32* %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %46
  br label %119

63:                                               ; preds = %55
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i8* @bfd_malloc(i32 %67)
  store i8* %68, i8** %10, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %119

77:                                               ; preds = %71, %63
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @SEEK_SET, align 4
  %84 = call i64 @bfd_seek(i32* %78, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %77
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @bfd_bread(i8* %87, i32 %91, i32* %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = icmp ne i32 %93, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %86, %77
  br label %119

100:                                              ; preds = %86
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @ecoff_link_add_externals(i32* %101, %struct.bfd_link_info* %102, i8* %103, i8* %104)
  store i32 %105, i32* %11, align 4
  %106 = load i8*, i8** %10, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 @free(i8* %109)
  br label %111

111:                                              ; preds = %108, %100
  %112 = load i8*, i8** %8, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @free(i8* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %3, align 4
  br label %133

119:                                              ; preds = %99, %76, %62, %45
  %120 = load i8*, i8** %10, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @free(i8* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i8*, i8** %8, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @free(i8* %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* @FALSE, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %117, %21, %15
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @ecoff_slurp_symbolic_header(i32*) #1

declare dso_local i64 @bfd_get_symcount(i32*) #1

declare dso_local %struct.TYPE_9__* @ecoff_data(i32*) #1

declare dso_local %struct.TYPE_10__* @ecoff_backend(i32*) #1

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @bfd_bread(i8*, i32, i32*) #1

declare dso_local i32 @ecoff_link_add_externals(i32*, %struct.bfd_link_info*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
