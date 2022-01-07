; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_group_icon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_group_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.bin_group_icon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bin_group_icon_item = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BIN_GROUP_ICON_SIZE = common dso_local global i64 0, align 8
@BIN_GROUP_ICON_ITEM_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*)* @res_to_bin_group_icon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_to_bin_group_icon(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bin_group_icon, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.bin_group_icon_item, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* @BIN_GROUP_ICON_SIZE, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %10, align 8
  br label %19

19:                                               ; preds = %89, %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %95

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %83

25:                                               ; preds = %22
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds %struct.bin_group_icon_item, %struct.bin_group_icon_item* %11, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @windres_put_8(i32* %26, i32 %28, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds %struct.bin_group_icon_item, %struct.bin_group_icon_item* %11, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @windres_put_8(i32* %33, i32 %35, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds %struct.bin_group_icon_item, %struct.bin_group_icon_item* %11, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @windres_put_8(i32* %40, i32 %42, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds %struct.bin_group_icon_item, %struct.bin_group_icon_item* %11, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @windres_put_8(i32* %47, i32 %49, i32 0)
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds %struct.bin_group_icon_item, %struct.bin_group_icon_item* %11, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @windres_put_16(i32* %51, i32 %53, i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds %struct.bin_group_icon_item, %struct.bin_group_icon_item* %11, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @windres_put_16(i32* %58, i32 %60, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds %struct.bin_group_icon_item, %struct.bin_group_icon_item* %11, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @windres_put_32(i32* %65, i32 %67, i32 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds %struct.bin_group_icon_item, %struct.bin_group_icon_item* %11, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @windres_put_16(i32* %72, i32 %74, i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i64, i64* @BIN_GROUP_ICON_ITEM_SIZE, align 8
  %82 = call i32 @set_windres_bfd_content(i32* %79, %struct.bin_group_icon_item* %11, i32 %80, i64 %81)
  br label %83

83:                                               ; preds = %25, %22
  %84 = load i64, i64* @BIN_GROUP_ICON_ITEM_SIZE, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 7
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  store %struct.TYPE_3__* %92, %struct.TYPE_3__** %10, align 8
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %19

95:                                               ; preds = %19
  %96 = load i32*, i32** %4, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds %struct.bin_group_icon, %struct.bin_group_icon* %8, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @windres_put_16(i32* %99, i32 %101, i32 0)
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds %struct.bin_group_icon, %struct.bin_group_icon* %8, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @windres_put_16(i32* %103, i32 %105, i32 1)
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds %struct.bin_group_icon, %struct.bin_group_icon* %8, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @windres_put_16(i32* %107, i32 %109, i32 %110)
  %112 = load i32*, i32** %4, align 8
  %113 = bitcast %struct.bin_group_icon* %8 to %struct.bin_group_icon_item*
  %114 = load i32, i32* %7, align 4
  %115 = load i64, i64* @BIN_GROUP_ICON_SIZE, align 8
  %116 = call i32 @set_windres_bfd_content(i32* %112, %struct.bin_group_icon_item* %113, i32 %114, i64 %115)
  br label %117

117:                                              ; preds = %98, %95
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @windres_put_8(i32*, i32, i32) #1

declare dso_local i32 @windres_put_16(i32*, i32, i32) #1

declare dso_local i32 @windres_put_32(i32*, i32, i32) #1

declare dso_local i32 @set_windres_bfd_content(i32*, %struct.bin_group_icon_item*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
