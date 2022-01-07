; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_menuexitems.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_menuexitems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.bin_menuitemex = type { i32, %struct.bin_menuitemex*, %struct.bin_menuitemex*, %struct.bin_menuitemex* }

@BIN_MENUITEMEX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*)* @res_to_bin_menuexitems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_to_bin_menuexitems(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.bin_menuitemex, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x %struct.bin_menuitemex], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %8, align 8
  br label %14

14:                                               ; preds = %121, %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %125

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %18, %19
  %21 = and i32 %20, 3
  %22 = sub nsw i32 4, %21
  %23 = and i32 %22, 3
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 6
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp eq %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, 128
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %30, %17
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32*, i32** %4, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %75

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds %struct.bin_menuitemex, %struct.bin_menuitemex* %9, i32 0, i32 3
  %47 = load %struct.bin_menuitemex*, %struct.bin_menuitemex** %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @windres_put_32(i32* %45, %struct.bin_menuitemex* %47, i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds %struct.bin_menuitemex, %struct.bin_menuitemex* %9, i32 0, i32 2
  %54 = load %struct.bin_menuitemex*, %struct.bin_menuitemex** %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @windres_put_32(i32* %52, %struct.bin_menuitemex* %54, i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds %struct.bin_menuitemex, %struct.bin_menuitemex* %9, i32 0, i32 1
  %61 = load %struct.bin_menuitemex*, %struct.bin_menuitemex** %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @windres_put_32(i32* %59, %struct.bin_menuitemex* %61, i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds %struct.bin_menuitemex, %struct.bin_menuitemex* %9, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @windres_put_16(i32* %66, i32 %68, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @BIN_MENUITEMEX_SIZE, align 4
  %74 = call i32 @set_windres_bfd_content(i32* %71, %struct.bin_menuitemex* %9, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %44, %41
  %76 = load i32, i32* @BIN_MENUITEMEX_SIZE, align 4
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @unicode_to_bin(i32* %79, i32 %80, i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = icmp ne %struct.TYPE_3__* %87, null
  br i1 %88, label %89, label %120

89:                                               ; preds = %75
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %90, %91
  %93 = and i32 %92, 3
  %94 = sub nsw i32 4, %93
  %95 = and i32 %94, 3
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %89
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds [4 x %struct.bin_menuitemex], [4 x %struct.bin_menuitemex]* %11, i64 0, i64 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @windres_put_32(i32* %101, %struct.bin_menuitemex* %102, i32 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds [4 x %struct.bin_menuitemex], [4 x %struct.bin_menuitemex]* %11, i64 0, i64 0
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @set_windres_bfd_content(i32* %107, %struct.bin_menuitemex* %108, i32 %109, i32 4)
  br label %111

111:                                              ; preds = %100, %89
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 4
  store i32 %113, i32* %5, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = call i32 @res_to_bin_menuexitems(i32* %114, i32 %115, %struct.TYPE_3__* %118)
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %111, %75
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 6
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  store %struct.TYPE_3__* %124, %struct.TYPE_3__** %8, align 8
  br label %14

125:                                              ; preds = %14
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @windres_put_32(i32*, %struct.bin_menuitemex*, i32) #1

declare dso_local i32 @windres_put_16(i32*, i32, i32) #1

declare dso_local i32 @set_windres_bfd_content(i32*, %struct.bin_menuitemex*, i32, i32) #1

declare dso_local i32 @unicode_to_bin(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
