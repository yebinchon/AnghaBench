; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_group_cursor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_group_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.bin_group_cursor = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bin_group_cursor_item = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BIN_GROUP_CURSOR_SIZE = common dso_local global i64 0, align 8
@BIN_GROUP_CURSOR_ITEM_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*)* @res_to_bin_group_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_to_bin_group_cursor(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.bin_group_cursor, align 4
  %10 = alloca %struct.bin_group_cursor_item, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i64, i64* @BIN_GROUP_CURSOR_SIZE, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %8, align 8
  br label %19

19:                                               ; preds = %78, %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %84

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %72

25:                                               ; preds = %22
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds %struct.bin_group_cursor_item, %struct.bin_group_cursor_item* %10, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @windres_put_16(i32* %26, i32 %28, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds %struct.bin_group_cursor_item, %struct.bin_group_cursor_item* %10, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @windres_put_16(i32* %33, i32 %35, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds %struct.bin_group_cursor_item, %struct.bin_group_cursor_item* %10, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @windres_put_16(i32* %40, i32 %42, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds %struct.bin_group_cursor_item, %struct.bin_group_cursor_item* %10, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @windres_put_16(i32* %47, i32 %49, i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds %struct.bin_group_cursor_item, %struct.bin_group_cursor_item* %10, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @windres_put_32(i32* %54, i32 %56, i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds %struct.bin_group_cursor_item, %struct.bin_group_cursor_item* %10, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @windres_put_16(i32* %61, i32 %63, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i64, i64* @BIN_GROUP_CURSOR_ITEM_SIZE, align 8
  %71 = call i32 @set_windres_bfd_content(i32* %68, %struct.bin_group_cursor_item* %10, i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %25, %22
  %73 = load i64, i64* @BIN_GROUP_CURSOR_ITEM_SIZE, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %72
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  store %struct.TYPE_3__* %81, %struct.TYPE_3__** %8, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %19

84:                                               ; preds = %19
  %85 = load i32*, i32** %4, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds %struct.bin_group_cursor, %struct.bin_group_cursor* %9, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @windres_put_16(i32* %88, i32 %90, i32 0)
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds %struct.bin_group_cursor, %struct.bin_group_cursor* %9, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @windres_put_16(i32* %92, i32 %94, i32 2)
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds %struct.bin_group_cursor, %struct.bin_group_cursor* %9, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @windres_put_16(i32* %96, i32 %98, i32 %99)
  %101 = load i32*, i32** %4, align 8
  %102 = bitcast %struct.bin_group_cursor* %9 to %struct.bin_group_cursor_item*
  %103 = load i32, i32* %11, align 4
  %104 = load i64, i64* @BIN_GROUP_CURSOR_SIZE, align 8
  %105 = call i32 @set_windres_bfd_content(i32* %101, %struct.bin_group_cursor_item* %102, i32 %103, i64 %104)
  br label %106

106:                                              ; preds = %87, %84
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @windres_put_16(i32*, i32, i32) #1

declare dso_local i32 @windres_put_32(i32*, i32, i32) #1

declare dso_local i32 @set_windres_bfd_content(i32*, %struct.bin_group_cursor_item*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
